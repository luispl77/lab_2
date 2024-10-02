----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2024 03:26:38 PM
-- Design Name: 
-- Module Name: datapath - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity datapath is
    Port (
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        -- Control Signals
        M1_sel    : in  STD_LOGIC_VECTOR(1 downto 0);
        M2_sel    : in  STD_LOGIC_VECTOR(1 downto 0);
        ALU_sel   : in  STD_LOGIC_VECTOR(2 downto 0);
        -- Memory Interfaces
        addr_in   : out STD_LOGIC_VECTOR(3 downto 0);  -- Input Address
        addr_out  : out STD_LOGIC_VECTOR(3 downto 0);  -- Output Address
        we        : out STD_LOGIC;                      -- Write Enable
        dataOUT   : out signed(31 downto 0);            -- Data to Output Memory
        -- Input Memory Data Buses
        A_in      : in  signed(15 downto 0);
        B_in      : in  signed(15 downto 0);
        C_in      : in  signed(15 downto 0);
        D_in      : in  signed(15 downto 0);
        E_in      : in  signed(15 downto 0);
        F_in      : in  signed(15 downto 0)
    );
end datapath;

architecture Behavioral of datapath is
    -- Shared Resources Outputs
    signal Multiplier1_out, Multiplier2_out : signed(31 downto 0);
    signal ALU_out                          : signed(31 downto 0);
    -- Multiplexer Inputs
    signal M1_opA, M1_opB : signed(15 downto 0);
    signal M2_opA, M2_opB : signed(15 downto 0);
    signal ALU_opA, ALU_opB : signed(31 downto 0);
    -- Registers for Intermediate Results
    signal t1, t2, t3, t4, t5, t6, t7, t8, t9 : signed(31 downto 0);
    -- Address Counters
    signal addr_counter : STD_LOGIC_VECTOR(3 downto 0);
    -- Internal Write Enable Signal
    signal we_int       : STD_LOGIC;
begin

    -- Address Counter Process
    process(clk, reset)
    begin
        if reset = '1' then
            addr_counter <= (others => '0');
        elsif rising_edge(clk) then
            if we_int = '1' then
                addr_counter <= std_logic_vector(unsigned(addr_counter) + 1);
            end if;
        end if;
    end process;

    addr_in <= addr_counter;
    addr_out <= addr_counter;

    -- Multiplexer for Multiplier1 Inputs
    with M1_sel select
        M1_opA <= A_in          when "00",
                  t4(15 downto 0) when "01",
                  t1(15 downto 0) when "10",
                  (others => '0') when others;

    with M1_sel select
        M1_opB <= B_in          when "00",
                  B_in          when "01",
                  t7(15 downto 0) when "10",
                  (others => '0') when others;

    -- Multiplexer for Multiplier2 Inputs
    with M2_sel select
        M2_opA <= E_in          when "00",
                  t3(15 downto 0) when "01",
                  (others => '0') when others;

    with M2_sel select
        M2_opB <= F_in          when "00",
                  t5(15 downto 0) when "01",
                  (others => '0') when others;

    -- Multipliers
    Multiplier1_out <= resize(M1_opA * M1_opB, 32);
    Multiplier2_out <= resize(M2_opA * M2_opB, 32);

    -- Multiplexer for ALU Inputs
    with ALU_sel select
        ALU_opA <= resize(C_in, 32)        when "000",  -- t4 = C_in + D_in
                   t4                       when "001",  -- t7 = t4 + t6
                   resize(A_in, 32)         when "010",  -- t3 = A_in + t2
                   t8                       when "011",  -- Deti = t8 - t9
                   (others => '0')          when others;

    with ALU_sel select
        ALU_opB <= resize(D_in, 32)        when "000",  -- t4 = C_in + D_in
                   t6                       when "001",  -- t7 = t4 + t6
                   t2                       when "010",  -- t3 = A_in + t2
                   t9                       when "011",  -- Deti = t8 - t9
                   (others => '0')          when others;

    -- ALU Operations
    ALU_out <= (others => '0');  -- Default value
    process(ALU_opA, ALU_opB, ALU_sel)
    begin
        case ALU_sel is
            when "000" =>  -- t4 = C_in + D_in
                ALU_out <= ALU_opA + ALU_opB;
            when "001" =>  -- t7 = t4 + t6
                ALU_out <= ALU_opA + ALU_opB;
            when "010" =>  -- t3 = A_in + t2
                ALU_out <= ALU_opA + ALU_opB;
            when "011" =>  -- Deti = t8 - t9
                ALU_out <= ALU_opA - ALU_opB;
            when others =>
                ALU_out <= (others => '0');
        end case;
    end process;

    -- Registers for Intermediate Results
    process(clk, reset)
    begin
        if reset = '1' then
            t1 <= (others => '0');
            t2 <= (others => '0');
            t3 <= (others => '0');
            t4 <= (others => '0');
            t5 <= (others => '0');
            t6 <= (others => '0');
            t7 <= (others => '0');
            t8 <= (others => '0');
            t9 <= (others => '0');
            dataOUT <= (others => '0');
        elsif rising_edge(clk) then
            -- Based on control signals, update registers
            case ALU_sel is
                when "000" =>  -- t4 = C_in + D_in
                    t4 <= ALU_out;
                when "001" =>  -- t7 = t4 + t6
                    t7 <= ALU_out;
                when "010" =>  -- t3 = A_in + t2
                    t3 <= ALU_out;
                when "011" =>  -- Deti = t8 - t9
                    dataOUT <= ALU_out;  -- Output Deti
                when others =>
                    null;  -- No action
            end case;

            -- Handle Multiplier1 Operations
            if M1_sel /= "11" then  -- If Multiplier1 is active
                case M1_sel is
                    when "00" =>  -- t1 = A_in * B_in
                        t1 <= Multiplier1_out;
                    when "01" =>  -- t5 = t4 * B_in
                        t5 <= Multiplier1_out;
                    when "10" =>  -- t8 = t1 * t7
                        t8 <= Multiplier1_out;
                    when others =>
                        null;
                end case;
            end if;

            -- Handle Multiplier2 Operations
            if M2_sel /= "11" then  -- If Multiplier2 is active
                case M2_sel is
                    when "00" =>  -- t2 = E_in * F_in
                        t2 <= Multiplier2_out;
                    when "01" =>  -- t9 = t3 * t5
                        t9 <= Multiplier2_out;
                    when others =>
                        null;
                end case;

                -- Handle t6 = t2 / 4 (integer division)
                if M2_sel = "00" then
                    t6 <= Multiplier2_out / 4;
                end if;
            end if;
        end if;
    end process;

    -- Write Enable Signal
    we <= '1' when ALU_sel = "011" else '0';

end Behavioral;

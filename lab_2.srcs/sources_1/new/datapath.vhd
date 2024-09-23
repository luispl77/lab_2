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
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        load     : in  STD_LOGIC;
        compute  : in  STD_LOGIC_VECTOR(2 downto 0);
        A_in     : in  signed(15 downto 0);
        B_in     : in  signed(15 downto 0);
        C_in     : in  signed(15 downto 0);
        D_in     : in  signed(15 downto 0);
        E_in     : in  signed(15 downto 0);
        F_in     : in  signed(15 downto 0);
        Det_out  : out signed(31 downto 0)
    );
end datapath;

architecture Behavioral of datapath is
    -- Registers
    signal A_reg, B_reg, C_reg, D_reg, E_reg, F_reg : signed(15 downto 0);
    signal t1, t2, t3, t4, t5, t6, t7, t8, t9, Deti : signed(31 downto 0);
    
begin

    -- Register Load Process
    process(clk, reset)
    begin
        if reset = '1' then
            A_reg <= (others => '0');
            B_reg <= (others => '0');
            C_reg <= (others => '0');
            D_reg <= (others => '0');
            E_reg <= (others => '0');
            F_reg <= (others => '0');
        elsif rising_edge(clk) then
            if load = '1' then
                A_reg <= A_in;
                B_reg <= B_in;
                C_reg <= C_in;
                D_reg <= D_in;
                E_reg <= E_in;
                F_reg <= F_in;
            end if;
        end if;
    end process;

    -- Computation Process
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
            Deti <= (others => '0');
        elsif rising_edge(clk) then
            case compute is
                when "001" =>  -- Cycle 1
                    t1 <= resize(A_reg * B_reg, 32);
                    t2 <= resize(E_reg * F_reg, 32);
                    t4 <= resize(C_reg + D_reg, 32);
                when "010" =>  -- Cycle 2
                    t5 <= resize(t4 * B_reg, 32);
                    t6 <= resize(t2 / 4, 32);
                    t7 <= resize(t4 + t6, 32);
                when "011" =>  -- Cycle 3
                    t8 <= resize(t1 * t7, 32);
                    t3 <= resize(A_reg + t2, 32);
                when "100" =>  -- Cycle 4
                    t9 <= resize(t3 * t5, 32);
                when "101" =>  -- Cycle 5
                    Deti <= resize(t8 - t9, 32);
                when others =>
                    null;
            end case;
        end if;
    end process;

    -- Output Assignment
    Det_out <= Deti;

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2024 03:31:08 PM
-- Design Name: 
-- Module Name: control - Behavioral
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

entity control is
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        start    : in  STD_LOGIC;
        done     : out STD_LOGIC;
        -- Control Signals for Datapath
        M1_sel   : out STD_LOGIC_VECTOR(1 downto 0);
        M2_sel   : out STD_LOGIC_VECTOR(1 downto 0);
        ALU_sel  : out STD_LOGIC_VECTOR(2 downto 0)
    );
end control;

architecture Behavioral of control is
    type state_type is (IDLE, S_LOAD, CYCLE1, CYCLE2, CYCLE3, CYCLE4, CYCLE5, WRITE, S_DONE);
    signal state, next_state : state_type;

    -- Internal signals to drive output ports
    signal M1_sel_int  : STD_LOGIC_VECTOR(1 downto 0);
    signal M2_sel_int  : STD_LOGIC_VECTOR(1 downto 0);
    signal ALU_sel_int : STD_LOGIC_VECTOR(2 downto 0);
    signal done_int    : STD_LOGIC := '0';
    -- Counter to track iterations (N = 16)
    signal counter     : integer range 0 to 16 := 0;
begin

    -- State Register
    process(clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
            counter <= 0;
        elsif rising_edge(clk) then
            state <= next_state;
            if state = S_DONE then
                counter <= 0;
            elsif state = WRITE then
                counter <= counter + 1;
            end if;
        end if;
    end process;

    -- Next State Logic
    process(state, start, counter)
    begin
        -- Default next_state to current state
        next_state <= state;

        case state is
            when IDLE =>
                if start = '1' then
                    next_state <= S_LOAD;
                else
                    next_state <= IDLE;
                end if;

            when S_LOAD =>
                next_state <= CYCLE1;

            when CYCLE1 =>
                next_state <= CYCLE2;

            when CYCLE2 =>
                next_state <= CYCLE3;

            when CYCLE3 =>
                next_state <= CYCLE4;

            when CYCLE4 =>
                next_state <= CYCLE5;

            when CYCLE5 =>
                next_state <= WRITE;

            when WRITE =>
                if counter = 15 then  -- N = 16 iterations (0 to 15)
                    next_state <= S_DONE;
                else
                    next_state <= S_LOAD;
                end if;

            when S_DONE =>
                next_state <= IDLE;

            when others =>
                next_state <= IDLE;
        end case;
    end process;

    -- Output Logic
    process(state)
    begin
        -- Default assignments
        M1_sel_int  <= "11";  -- Default to inactive
        M2_sel_int  <= "11";  -- Default to inactive
        ALU_sel_int <= "111"; -- Default to inactive
        done_int    <= '0';

        case state is
            when S_LOAD =>
                -- No operation in datapath; inputs are loaded via memory interfaces
                null;

            when CYCLE1 =>
                -- t1 = A_in * B_in (M1_sel = "00")
                -- t2 = E_in * F_in (M2_sel = "00")
                -- t4 = C_in + D_in (ALU_sel = "000")
                M1_sel_int  <= "00";
                M2_sel_int  <= "00";
                ALU_sel_int <= "000";

            when CYCLE2 =>
                -- t5 = t4 * B_in (M1_sel = "01")
                -- t6 = t2 / 4 (handled in datapath)
                -- t7 = t4 + t6 (ALU_sel = "001")
                M1_sel_int  <= "01";
                M2_sel_int  <= "11";  -- M2 not used
                ALU_sel_int <= "001";

            when CYCLE3 =>
                -- t8 = t1 * t7 (M1_sel = "10")
                -- t3 = A_in + t2 (ALU_sel = "010")
                M1_sel_int  <= "10";
                M2_sel_int  <= "11";  -- M2 not used
                ALU_sel_int <= "010";

            when CYCLE4 =>
                -- t9 = t3 * t5 (M2_sel = "01")
                -- ALU not used
                M1_sel_int  <= "11";  -- M1 not used
                M2_sel_int  <= "01";
                ALU_sel_int <= "111";  -- ALU not used

            when CYCLE5 =>
                -- Deti = t8 - t9 (ALU_sel = "011")
                M1_sel_int  <= "11";  -- M1 not used
                M2_sel_int  <= "11";  -- M2 not used
                ALU_sel_int <= "011";

            when WRITE =>
                -- Write operation handled in datapath
                null;

            when S_DONE =>
                done_int <= '1';

            when others =>
                null;  -- No action
        end case;
    end process;

    -- Assign internal signals to output ports
    M1_sel  <= M1_sel_int;
    M2_sel  <= M2_sel_int;
    ALU_sel <= ALU_sel_int;
    done    <= done_int;

end Behavioral;

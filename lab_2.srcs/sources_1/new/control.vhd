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
        load     : out STD_LOGIC;
        compute  : out STD_LOGIC_VECTOR(2 downto 0)  -- 3-bit control signal for compute cycles
    );
end control;

architecture Behavioral of control is
    type state_type is (IDLE, S_LOAD, CYCLE1, CYCLE2, CYCLE3, CYCLE4, CYCLE5, WRITE, S_DONE);
    signal state, next_state : state_type;

    -- Internal signals to drive output ports
    signal load_int    : STD_LOGIC;
    signal compute_int : STD_LOGIC_VECTOR(2 downto 0);
    signal done_int    : STD_LOGIC;
begin

    -- State Register
    process(clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    -- Next State Logic
    process(state, start)
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
                next_state <= S_DONE;

            when S_DONE =>
                -- Optionally, add a condition to move to IDLE or stay in S_DONE
                next_state <= IDLE;

            when others =>
                next_state <= IDLE;
        end case;
    end process;

    -- Output Logic
    process(state)
    begin
        -- Default assignments
        load_int    <= '0';
        compute_int <= "000";
        done_int    <= '0';

        case state is
            when S_LOAD =>
                load_int <= '1';

            when CYCLE1 =>
                compute_int <= "001";

            when CYCLE2 =>
                compute_int <= "010";

            when CYCLE3 =>
                compute_int <= "011";

            when CYCLE4 =>
                compute_int <= "100";

            when CYCLE5 =>
                compute_int <= "101";

            when WRITE =>
                done_int <= '1';

            when others =>
                null;  -- No action
        end case;
    end process;

    -- Assign internal signals to output ports
    load    <= load_int;
    compute <= compute_int;
    done    <= done_int;

end Behavioral;

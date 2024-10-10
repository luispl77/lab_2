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
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity control is
    port(
        clk      : in  std_logic;
        reset    : in  std_logic;

        done     : out std_logic;
        we       : out std_logic;
        addr     : out std_logic_vector(4 downto 0);
        counter_out  : out unsigned (4 downto 0);

        -- Control Signals for Datapath
        Mux_sel   : out std_logic_vector(8 downto 0);
        ALU_sel   : out std_logic;
        enables   : out std_logic_vector(3 downto 0)
    );
end control;

architecture Behavioral of control is

    type state_type is (S_IDLE,S_START, CYCLE1, CYCLE2, CYCLE3, CYCLE4, CYCLE5, S_DONE);
    signal currstate, next_state : state_type;

    -- Counter to track iterations (N = 16)
    signal counter, next_counter     : unsigned (4 downto 0):= (others => '0');

begin

    -- State Register
    state_reg : process (clk,reset)
    begin
        if clk'event and clk = '1' then
        
            if reset = '1' then
                currstate <= S_START;
                counter     <= (others => '0');
                next_counter     <= (others => '0');
            else
                currstate <= next_state;
                counter  <= next_counter;
            end if;
            
            
        end if;
    end process;
    
    
    addr        <= std_logic_vector(counter);
    counter_out <= counter; 

    -- State Logic
    process(counter,currstate,reset)
    begin
    
    
        -- Default assignments to avoid multi-term driving issues
        ALU_sel     <= '0';   -- Default assignment
        Mux_sel     <= "000000000"; -- Default assignment for Mux_sel
        enables     <= "0000"; -- Default assignment for enables
        we          <= '0';    -- Default assignment for we
        done        <= '0';    -- Default assignment for done
        next_counter <= counter;  -- Default counter value
        
        case currstate is
            when S_START =>

                -- Default assignments
                ALU_sel     <= '0';
                Mux_sel     <= "000000000";
                enables     <= "0000";
                we          <= '0';
                done        <= '0';

                -- When the Reset turns off
                if reset = '0' then
                    next_state <= CYCLE1;
                    -- Counter
                    next_counter <= "00000";
                else
                    next_state <= S_START;
                    -- Counter
                    next_counter <= "00000";
                end if;

            when CYCLE1 =>

                ALU_sel     <= '0';
                Mux_sel     <= "001000110";
                enables     <= "1101";
                we          <= '0';
                done        <= '0';

                next_state <= CYCLE2;
                
                -- Counter
                next_counter <= counter;

            when CYCLE2 =>

                ALU_sel     <= '0';
                Mux_sel     <= "011101001";
                enables     <= "0110";
                we          <= '0';
                done        <= '0';

                next_state <= CYCLE3;
                
                -- Counter
                next_counter <= counter;

            when CYCLE3 =>

                ALU_sel     <= '0';
                Mux_sel     <= "100110000";
                enables     <= "0011";
                we          <= '0';
                done        <= '0';

                next_state <= CYCLE4;
                
                -- Counter
                next_counter <= counter;

            when CYCLE4 =>

                ALU_sel     <= '0';
                Mux_sel     <= "000011000";
                enables     <= "1000";
                we          <= '0';
                done        <= '0';

                next_state <= CYCLE5;
                
                -- Counter
                next_counter <= counter;

            when CYCLE5 =>

                ALU_sel     <= '1';
                Mux_sel     <= "100000000";
                enables     <= "0000";
                we          <= '1';

                -- When all iterations are complete
                if counter = "10000" then
                    done        <= '1';
                    next_state <= S_DONE;
                else
                    done        <= '0';
                    next_state <= CYCLE1;
                
                    next_counter <= counter + 1; --increment
                end if;

            when S_DONE=>
            
                -- Default assignments
                ALU_sel     <= '0';
                Mux_sel     <= "000000000";
                enables     <= "0000";
                we          <= '0';
                done        <= '1';

                next_state <= S_DONE;
                
                -- Counter
                next_counter <= counter;

            when S_IDLE=>
            
                -- Default assignments
                ALU_sel     <= '0';
                Mux_sel     <= "000000000";
                enables     <= "0000";
                we          <= '0';
                done        <= '0';

                next_state <= S_IDLE;
                
                -- Counter
                next_counter <= "00000";

            when others =>

                -- Default assignments
                ALU_sel     <= '0';
                Mux_sel     <= "000000000";
                enables     <= "0000";
                we          <= '0';
                done        <= '0';

                next_state <= S_IDLE;
                
                -- Counter
                next_counter <= "00000";

        end case;
    end process;

end Behavioral;

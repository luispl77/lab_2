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
        addr     : out std_logic_vector(3 downto 0);
        counter_out  : out signed (3 downto 0);

        -- Control Signals for Datapath
        --Mux_sel   : out std_logic_vector(8 downto 0);
        ALU_sel   : out std_logic;
       -- enables   : out std_logic_vector(3 downto 0);
        sel1, sel2, sel4 : out STD_LOGIC;
        sel3, sel5, sel6 : out STD_LOGIC_VECTOR(1 downto 0);
        en1, en2, en3, en4 : out std_logic
    );
end control;

architecture Behavioral of control is

    type state_type is (S_IDLE,S_START, CYCLE1, CYCLE2, CYCLE3, CYCLE4, CYCLE5, S_DONE);
    signal currstate, next_state : state_type;

    -- Counter to track iterations (N = 16)
    signal counter    : signed (3 downto 0):= (others => '0');

begin

    -- State Register
    state_reg : process (clk,reset)
    begin
        if clk'event and clk = '1' then
        
            if reset = '1' then
                currstate <= S_START;
                counter     <= (others => '0');
            else
                currstate <= next_state;
                
                if currstate = CYCLE4 then 
                    counter <= counter + 1;
                else 
                    counter <= counter;
                end if;
                
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
        sel1      <= '0';
        sel2      <= '0';    
        sel3      <= "00";
        sel4      <= '0';
        sel5      <= "00";
        sel6      <= "00";
        en1       <= '0';
        en2       <= '0';
        en3       <= '0';
        en4       <= '0';
        
       -- Mux_sel     <= "000000000"; -- Default assignment for Mux_sel
      --  enables     <= "0000"; -- Default assignment for enables
        we          <= '0';    -- Default assignment for we
        done        <= '0';    -- Default assignment for done
        
        case currstate is
            when S_START =>

                
                -- Default assignments to avoid multi-term driving issues
                ALU_sel     <= '0';   -- Default assignment
                sel1      <= '0';
                sel2      <= '0';    
                sel3      <= "00";
                sel4      <= '0';
                sel5      <= "00";
                sel6      <= "00";
                en1       <= '0';
                en2       <= '0';
                en3       <= '0';
                en4       <= '0';
                
               -- Mux_sel     <= "000000000"; -- Default assignment for Mux_sel
              --  enables     <= "0000"; -- Default assignment for enables
                we          <= '0';
                done        <= '0';

                -- When the Reset turns off
                if reset = '0' then
                    next_state <= CYCLE1;
                else
                    next_state <= S_START;
                end if;

            when CYCLE1 =>

                ALU_sel     <= '0';
                sel1      <= '0';
                sel2      <= '1';    
                sel3      <= "10";
                sel4      <= '0';
                sel5      <= "01";
                sel6      <= "00";
                en1       <= '1';
                en2       <= '0';
                en3       <= '1';
                en4       <= '1';
                
                --Mux_sel     <= "001000110";
                --enables     <= "1101";
                
                we          <= '0';
                done        <= '0';

                next_state <= CYCLE2;

            when CYCLE2 =>

                ALU_sel     <= '0';
                sel1      <= '1';
                sel2      <= '0';    
                sel3      <= "01";
                sel4      <= '0';
                sel5      <= "11";
                sel6      <= "10";
                en1       <= '0';
                en2       <= '1';
                en3       <= '1';
                en4       <= '0';
                
                --Mux_sel     <= "011101001";
                --enables     <= "0110";
                we          <= '0';
                done        <= '0';

                next_state <= CYCLE3;

            when CYCLE3 =>

                ALU_sel     <= '0';
                sel1      <= '0';
                sel2      <= '0';    
                sel3      <= "00";
                sel4      <= '1';
                sel5      <= "10";
                sel6      <= "01";
                en1       <= '1';
                en2       <= '1';
                en3       <= '0';
                en4       <= '0';
                
                --Mux_sel     <= "100110000";
                --enables     <= "0011";
                we          <= '0';
                done        <= '0';

                next_state <= CYCLE4;

            when CYCLE4 =>

                ALU_sel     <= '0';
                sel1      <= '0';
                sel2      <= '0';    
                sel3      <= "01";
                sel4      <= '1';
                sel5      <= "00";
                sel6      <= "00";
                en1       <= '0';
                en2       <= '0';
                en3       <= '0';
                en4       <= '1';
                
                --Mux_sel     <= "000011000";
                --enables     <= "1000";
                we          <= '0';
                done        <= '0';

                next_state <= CYCLE5;

            when CYCLE5 =>

                ALU_sel     <= '1';
                sel1      <= '0';
                sel2      <= '0';    
                sel3      <= "00";
                sel4      <= '0';
                sel5      <= "00";
                sel6      <= "01";
                en1       <= '0';
                en2       <= '0';
                en3       <= '0';
                en4       <= '0';
                
                --Mux_sel     <= "100000000";
                --enables     <= "0000";
                we          <= '1';

                -- When all iterations are complete
                if counter = "1111" then
                    done        <= '1';
                    next_state <= S_DONE;
                else
                    done        <= '0';
                    next_state <= CYCLE1;
                end if;

            when S_DONE=>
            
                -- Default assignments
                ALU_sel     <= '0';   -- Default assignment
                sel1      <= '0';
                sel2      <= '0';    
                sel3      <= "00";
                sel4      <= '0';
                sel5      <= "00";
                sel6      <= "00";
                en1       <= '0';
                en2       <= '0';
                en3       <= '0';
                en4       <= '0';
                
               -- Mux_sel     <= "000000000"; -- Default assignment for Mux_sel
              --  enables     <= "0000"; -- Default assignment for enables
                we          <= '0';
                done        <= '1';

                next_state <= S_DONE;

            when S_IDLE=>
            
                -- Default assignments
                ALU_sel     <= '0';   -- Default assignment
                sel1      <= '0';
                sel2      <= '0';    
                sel3      <= "00";
                sel4      <= '0';
                sel5      <= "00";
                sel6      <= "00";
                en1       <= '0';
                en2       <= '0';
                en3       <= '0';
                en4       <= '0';
                
               -- Mux_sel     <= "000000000"; -- Default assignment for Mux_sel
              --  enables     <= "0000"; -- Default assignment for enables
                we          <= '0';
                done        <= '0';

                next_state <= S_IDLE;

            when others =>

                -- Default assignments
                ALU_sel     <= '0';   -- Default assignment
                sel1      <= '0';
                sel2      <= '0';    
                sel3      <= "00";
                sel4      <= '0';
                sel5      <= "00";
                sel6      <= "00";
                en1       <= '0';
                en2       <= '0';
                en3       <= '0';
                en4       <= '0';
                
               -- Mux_sel     <= "000000000"; -- Default assignment for Mux_sel
              --  enables     <= "0000"; -- Default assignment for enables
                we          <= '0';
                done        <= '0';

                next_state <= S_IDLE;

        end case;
    end process;

end Behavioral;

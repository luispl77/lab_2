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
        ALU_sel   : in  STD_LOGIC;
        sel1, sel2, sel4, sel6 : in STD_LOGIC;
        sel3, sel5 : in STD_LOGIC_VECTOR(1 downto 0);
        en1, en2, en3, en4 : in std_logic;
        
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

    -- Registers for Intermediate Results
    signal R1, R2, R3, R4 : std_logic_vector(31 downto 0);
   -- signal R1_next, R2_next, R3_next, R4_next : signed(31 downto 0);
    signal reg_i  : STD_LOGIC_VECTOR(3 downto 0);
    -- Address Counters
    signal addr_counter : STD_LOGIC_VECTOR(3 downto 0);
       
    --
    signal sol_mul_1, sol_mul_2, sol_ALU : signed(31 downto 0);
    
    signal reg_sel1, reg_sel2, reg_sel3, reg_sel4, reg_sel5, reg_sel6: signed(31 downto 0);
    signal mul1_1, mul1_2, mul2_1, mul2_2, add_1, add_2 : signed(31 downto 0);
    signal sol_mul1_std, sol_mul2_std, sol_ALU_std : STD_LOGIC_VECTOR(31 downto 0);
    signal reg1, reg2, reg3, reg4 : STD_LOGIC_VECTOR(31 downto 0);
    
begin

    -- Register
    process(clk, reset)
    begin
    if clk'event and clk='1' then
        if reset = '1' then
            R1 <= (others=> '0');
            R2 <= (others=> '0');
            R3 <= (others=> '0');
            R4 <= (others=> '0');
        else
            if en1 = '1' then
                R1 <= sol_mul1_std;
            end if;
            if en2 = '1' then
                R2 <= sol_ALU_std;
            end if;
            if en3 = '1' then
                R3 <= reg3;
            end if;
            if en4 = '1' then
                R1 <= reg4;
            end if;
        end if;
        end if;
    end process;
      
      
   ---- Multiplexers ----
       
   ---- mul_1----
   reg3 <= sol_mul1_std when sel1 = '0' else
           sol_ALU_std;
   ---- mul_2----
   reg4 <= sol_mul1_std when sel1 = '0' else
           sol_mul2_std;
   ---- mul_3 ----
   mul1_1 <= A_in when (sel3 = "00") else 
             signed(R1) when (sel3 = "01") else
             signed(R2);
   ---- mul_4 ----          
   mul1_2 <= B_in when (sel4 = '0') else 
             signed(R2);    
   ---- mul_5 ----          
   add_1 <= C_in when (add_1 = "00") else 
            A_in when (add_1 = "01") else
            signed(R2) when (add_1 = "10") else
            signed(R3);          
   ---- mul_6 ----          
   add_2 <= D_in when (sel6 = '0') else
            signed(R4);
               
    ---- Multipliers ----
               
    sol_mul_1 <= mul1_1 * mul1_2;
    sol_mul1_std <= std_logic_vector(sol_mul_1);
     
    sol_mul_2 <= E_in * F_in;
    sol_mul2_std <= std_logic_vector(sol_mul_1);
   
    ---- ALU ----
    
    sol_ALU <= add_1 + add_2 when ALU_sel = '0' else
               add_1 - add_2; 
               
    sol_ALU_std <= std_logic_vector(sol_ALU);
   
 
        
end Behavioral;

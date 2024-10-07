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
    signal R1, R2, R3, R4 : signed(31 downto 0);
    signal R1_next, R2_next, R3_next, R4_next : signed(31 downto 0);
    signal reg_i  : STD_LOGIC_VECTOR(3 downto 0);
    -- Address Counters
    signal addr_counter : STD_LOGIC_VECTOR(3 downto 0);
    -- Internal Write Enable Signal
    signal we_int       : STD_LOGIC;
    
    --
    signal sol_mul_1, sol_mul_2, sol_ALU : signed(31 downto 0);
    
    signal reg_sel1, reg_sel2, reg_sel3, reg_sel4, reg_sel5, reg_sel6: signed(31 downto 0);
    signal mul1_1, mul1_2, mul2_1, mul2_2, add_1, add_2 : signed(31 downto 0);
begin

    -- Address Counter Process  and  interm reg
    process(clk, reset)
    begin
        if reset = '1' then
            addr_counter <= (others => '0');
            R1 <= (others=> '0');
            R2 <= (others=> '0');
            R3 <= (others=> '0');
            R4 <= (others=> '0');
        elsif rising_edge(clk) then
            if we_int = '1' then
                addr_counter <= std_logic_vector(unsigned(addr_counter) + 1);
            end if;
            
        end if;
    end process;
    

    process(sel1, sel2, sel4, sel6, sel3, sel5)
    begin
    
    
        
            
    end process;
    
    
       -- multiplexers--
  
   
   mul1_1 <= A_in when (sel3 = "00") else 
             R1 when (sel3 = "01") else
             R2;
             
   mul1_2 <= B_in when (sel4 = '0') else 
             R2;    
             
   add_1 <= C_in when (add_1 = "00") else 
            A_in when (add_1 = "01") else
            R2 when (add_1 = "10") else
            R3;          
             
   add_2 <= D_in when (sel6 = '0') else
            R4;
   
            
                
    sol_mul_1 <= mul1_1 * mul1_2;
    
    sol_mul_2 <= E_in * F_in;
    
--    sol_ALU <= 
    
        
end Behavioral;

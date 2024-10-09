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
<<<<<<< Updated upstream
        sel1, sel2, sel4, sel6 : in STD_LOGIC;
        sel3, sel5 : in STD_LOGIC_VECTOR(1 downto 0);
=======
        sel1, sel2, sel4 : in STD_LOGIC;
        sel3, sel5, sel6 : in STD_LOGIC_VECTOR(1 downto 0);
>>>>>>> Stashed changes
        en1, en2, en3, en4 : in std_logic;
        
        -- Input Memory Data Buses
        A_in      : in  std_logic_vector(15 downto 0);
        B_in      : in  std_logic_vector(15 downto 0);
        C_in      : in  std_logic_vector(15 downto 0);
        D_in      : in  std_logic_vector(15 downto 0);
        E_in      : in  std_logic_vector(15 downto 0);
        F_in      : in  std_logic_vector(15 downto 0);

        
        -- Debug Output
        Reg1,Reg2,Reg3,Reg4 : out  std_logic_vector(31 downto 0); 
        
        -- Output Memory Data Bus
        Det_out : out  std_logic_vector(31 downto 0) 
    );
end datapath;

architecture Behavioral of datapath is

    -- Registers for Intermediate Results
    signal R1, R2, R3, R4 : std_logic_vector(31 downto 0);
<<<<<<< Updated upstream
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
   
 
=======
    
    -- Signed signals for intermediate calculations
    signal mux3_sg, mux4_sg, mux5_sg, mux6_sg, mult1_res, mult2_res, alu_res: signed(31 downto 0);
    signal E_sg, F_sg   : signed(15 downto 0);
    
    -- Multiplexers
    signal mux1, mux2, mux3, mux4, mux5, mux6: std_logic_vector(31 downto 0);


begin

    ------------ Multiplexers
    -- multiplexer 1
    mux1 <= std_logic_vector(alu_res) when sel1 = '0'
                else std_logic_vector(mult1_res);
    
    -- multiplexer 2
    mux2 <= std_logic_vector(mult1_res) when sel2 = '0'
                else std_logic_vector(mult2_res);
    
    -- multiplexer 3
    mux3 <= R1 when sel3 = "00" else
            R3 when sel3 = "01" else
            std_logic_vector(resize(signed(A_in),32)) when sel3 = "10" else
            X"00000000";
    
    -- multiplexer 4
    mux4 <= std_logic_vector(resize(signed(B_in),32)) when sel4 = '0'
            else R2;
    
    -- multiplexer 5
    mux5 <= R1 when sel5 = "00" else
            std_logic_vector(resize(signed(C_in),32)) when sel5 = "01" else
            std_logic_vector(resize(signed(A_in),32)) when sel5 = "10" else
            R3;
    
    -- multiplexer 4
    mux6 <= std_logic_vector(resize(signed(D_in),32)) when sel6 = "00" else
            R4                                        when sel6 = "01" else 
            ("00" & R4(31 downto 2));





    ------------ Multipliers
    -- multiplier 1
    mux3_sg <= signed(mux3);
    mux4_sg <= signed(mux4);

    mult1_res <= resize((mux3_sg * mux4_sg),32);

    
    -- multiplier 1
    E_sg <= signed(E_in);
    F_sg <= signed(F_in);

    mult2_res <= E_sg * F_sg; -- already has 32 bits





    ------------ ALU
    mux5_sg <= signed(mux5);
    mux6_sg <= signed(mux6);

    alu_res <= mux5_sg + mux6_sg when ALU_sel = '0'
                else mux5_sg - mux6_sg;





    ------------ Output
    Det_out <=  mux1;




    ------------ Registers
    process (clk,reset)
    begin
        if clk'event and clk='1' then
            if reset='1' then
                R1 <= X"00000000";
                R2 <= X"00000000";
                R3 <= X"00000000";
                R4 <= X"00000000";
            else
                if en1 = '1' then
                    R1 <= std_logic_vector(mult1_res);
                    Reg1 <= R1;
                end if;
                
                if en2 = '1' then
                    R2 <= std_logic_vector(alu_res);
                    Reg2 <= R2;
                end if;
                
                if en3 = '1' then
                    R3 <= mux1;
                    Reg3 <= R3;
                end if;
                
                if en4 = '1' then
                    R4 <= mux2;
                    Reg4 <= R4;
                end if;
                
            end if;
        end if;
    end process;


    
>>>>>>> Stashed changes
        
end Behavioral;

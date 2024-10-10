--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   14:31:45 09/10/2014
-- Design Name:
-- Module Name:   C:/xup/vhdl/introLab/tb_circuito.vhd
-- Project Name:  introLab
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: circuito
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes:
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation
-- simulation model.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

entity circuito_tb is
end circuito_tb;

architecture behavior of circuito_tb is

  -- Component Declaration for the Unit Under Test (UUT)

  component circuito
    port (
    clk, rst    : in  std_logic;
    we, done    : inout std_logic;
    addr        : inout std_logic_vector(9 downto 0);
    dataOUT     : out std_logic_vector(31 downto 0);
    
    -- internal
    --Mux_sel   : inout std_logic_vector(8 downto 0);
    ALU_sel   : inout std_logic;
   --enables   : inout std_logic_vector(3 downto 0);

        
    -- Debug Output
    Reg1,Reg2,Reg3,Reg4 : inout  std_logic_vector(31 downto 0); 
    counter  : out signed (3 downto 0);
    sel1, sel2, sel4 : inout STD_LOGIC;
    sel3, sel5, sel6 : inout STD_LOGIC_VECTOR(1 downto 0);
    en1, en2, en3, en4 : inout std_logic;
    Mux1_O,Mux2_O,Mux3_O,Mux4_O,Mux5_O,Mux6_O : out std_logic_vector(31 downto 0); 
    Mult1_O, Mult2_O, ALU_O  : out signed(31 downto 0);
        
        
        
    -- Output Memory Data Bus
    Det_out : inout  std_logic_vector(31 downto 0);
    
    
    A, B, C, D, E, F : inout std_logic_vector(15 downto 0) 
    
    );
  end component;


  --Inputs
  signal clk,rst            : std_logic    := '0';

  --Outputs
  signal addr  : std_logic_vector(9 downto 0); 
  signal  counter  : signed (3 downto 0);
  signal dataOUT : std_logic_vector(31 downto 0);
  signal Det_out : std_logic_vector(31 downto 0);
  signal  we,done   :  std_logic;
  --signal Mux_sel   :  std_logic_vector(8 downto 0);
  signal  ALU_sel   :  std_logic;
  --signal  enables   :  std_logic_vector(3 downto 0);
  signal A, B, C, D, E, F : std_logic_vector(15 downto 0);
  signal  Reg1,Reg2,Reg3,Reg4 :   std_logic_vector(31 downto 0);
  signal  sel1, sel2, sel4 :  STD_LOGIC;
  signal  sel3, sel5, sel6 :  STD_LOGIC_VECTOR(1 downto 0);
  signal  en1, en2, en3, en4 :  std_logic;
  signal  Mux1_O,Mux2_O,Mux3_O,Mux4_O,Mux5_O,Mux6_O :  std_logic_vector(31 downto 0); 
  signal  Mult1_O, Mult2_O, ALU_O  : signed(31 downto 0);  

  -- Clock period definitions
  constant clk_period : time := 10 ns;

begin

  -- Instantiate the Unit Under Test (UUT)
  uut : circuito port map (
    clk         => clk,
    rst         => rst,
    we          => we,
    done        => done,
    addr        => addr,
   -- Mux_sel     => Mux_sel,
    ALU_sel     => ALU_sel,
   -- enables     => enables,
    counter     => counter,
    Det_out     => Det_out,
    Reg1        => Reg1,
    Reg2        => Reg2,
    Reg3        => Reg3,
    Reg4        => Reg4,
    Mux1_O => Mux1_O,
    Mux2_O => Mux2_O,
    Mux3_O => Mux3_O,
    Mux4_O => Mux4_O,
    Mux5_O => Mux5_O,
    Mux6_O => Mux6_O,
    ALU_O => ALU_O,
    Mult1_O => Mult1_O,
    Mult2_O => Mult2_O,
    sel1 => sel1,
    sel2 => sel2,
    sel3 => sel3,
    sel4 => sel4,
    sel5 => sel5,
    sel6 => sel6,
    en1 => en1,
    en2 => en2,
    en3 => en3,
    en4 => en4,
    A           => A,
    B           => B,
    C           => C,
    D           => D,
    E           => E,
    F           => F 
    );

  -- Clock definition
  clk <= not clk after clk_period/2;

  -- Stimulus process
  stim_proc : process
  begin

    wait for clk_period*10;

    -- insert stimulus here
    -- note that input signals should never change at the positive edge of the clock
    rst <=  '1' after 10 ns,
                '0' after 30 ns;
                                
    wait;
  end process;

end;

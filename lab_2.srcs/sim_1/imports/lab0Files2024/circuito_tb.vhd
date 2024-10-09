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
    Mux_sel   : inout std_logic_vector(8 downto 0);
    ALU_sel   : inout std_logic;
    enables   : inout std_logic_vector(3 downto 0);

        
    -- Debug Output
    Reg1,Reg2,Reg3,Reg4 : inout  std_logic_vector(31 downto 0); 
        
        
    -- Output Memory Data Bus
    Det_out : inout  std_logic_vector(31 downto 0);
    
    
    A, B, C, D, E, F : inout std_logic_vector(15 downto 0) 
    
    );
  end component;


  --Inputs
  signal clk,rst            : std_logic    := '0';

  --Outputs
  signal addr  : std_logic_vector(9 downto 0);
  signal dataOUT : std_logic_vector(31 downto 0);
  signal Det_out : std_logic_vector(31 downto 0);
  signal  we,done   :  std_logic;
  signal Mux_sel   :  std_logic_vector(8 downto 0);
  signal  ALU_sel   :  std_logic;
  signal  enables   :  std_logic_vector(3 downto 0);
  signal A, B, C, D, E, F : std_logic_vector(15 downto 0);
  signal  Reg1,Reg2,Reg3,Reg4 :   std_logic_vector(31 downto 0);  

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
    Mux_sel     => Mux_sel,
    ALU_sel     => ALU_sel,
    enables     => enables,
    Det_out     => Det_out,
    Reg1        => Reg1,
    Reg2        => Reg2,
    Reg3        => Reg3,
    Reg4        => Reg4,
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

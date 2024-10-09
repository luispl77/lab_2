--------------------------------------------------------------------------------
-- Description:
--
-- VHDL Test Bench for module: memIN
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
-- to guarantee that the testbench will bind correctly to the
-- post-implementation simulation model.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity memIN_tb is
end memIN_tb;

architecture behavior of memIN_tb is

  -- Component Declaration for the Unit Under Test (UUT)

  component memIN
    port(
      clk  : in  std_logic;
      addr : in  std_logic_vector(9 downto 0);
      A    : out std_logic_vector(15 downto 0);
      B    : out std_logic_vector(15 downto 0);
      C    : out std_logic_vector(15 downto 0);
      D    : out std_logic_vector(15 downto 0);
      E    : out std_logic_vector(15 downto 0);
      F    : out std_logic_vector(15 downto 0)
      );
  end component;


  --Inputs
  signal clk     : std_logic                    := '0';
  signal addrMSB : std_logic_vector(5 downto 0) := (others => '0');
  signal addrLSB : std_logic_vector(3 downto 0) := (others => '0');
  signal start   : std_logic                    := 'U';

  --DataOutputs
  signal doA : std_logic_vector(15 downto 0);
  signal doB : std_logic_vector(15 downto 0);
  signal doC : std_logic_vector(15 downto 0);
  signal doD : std_logic_vector(15 downto 0);
  signal doE : std_logic_vector(15 downto 0);
  signal doF : std_logic_vector(15 downto 0);

  -- Clock period definitions
  constant clk_period : time := 10 ns;  -- T = 20 ns, f = 50 MHz

begin

  -- Instantiate the Unit Under Test (UUT)
  uut : memIN port map (
    clk  => clk,
    addr => (addrMSB & addrLSB),
    A    => doA,
    B    => doB,
    C    => doC,
    D    => doD,
    E    => doE,
    F    => doF
    );

  -- Clock process definitions
  clk_process : process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;


  -- Stimulus process
  stim_proc : process
  begin
    -- hold reset state for 100 ns.
    wait for 100 ns;

    -- insert stimulus here

    start <= '0',
             '1' after 23 ns;
    wait;
  end process;

  address_counter : process (start, clk)
  begin
    if start = '0' then
      addrLSB <= x"0";
    elsif clk'event and clk = '1' then
      addrLSB <= addrLSB + 1;
    end if;
  end process;

end;

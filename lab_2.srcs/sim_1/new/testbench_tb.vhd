----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2024 03:29:09 PM
-- Design Name: 
-- Module Name: testbench_tb - Behavioral
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

entity testbench_tb is
    -- No ports in testbench
end testbench_tb;

architecture Behavioral of testbench_tb is

    -- Component Declarations
    component control
        Port (
            clk      : in  STD_LOGIC;
            reset    : in  STD_LOGIC;
            start    : in  STD_LOGIC;
            done     : out STD_LOGIC;
            load     : out STD_LOGIC;
            compute  : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;
    
    component datapath
        Port (
            clk      : in  STD_LOGIC;
            reset    : in  STD_LOGIC;
            load     : in  STD_LOGIC;
            compute  : in  STD_LOGIC_VECTOR(2 downto 0);
            A_in     : in  signed(15 downto 0);
            B_in     : in  signed(15 downto 0);
            C_in     : in  signed(15 downto 0);
            D_in     : in  signed(15 downto 0);
            E_in     : in  signed(15 downto 0);
            F_in     : in  signed(15 downto 0);
            Det_out  : out signed(31 downto 0)
        );
    end component;
    
    -- Signals
    signal clk     : STD_LOGIC := '0';
    signal reset   : STD_LOGIC := '0';
    signal start   : STD_LOGIC := '0';
    signal done    : STD_LOGIC;
    signal load    : STD_LOGIC;
    signal compute : STD_LOGIC_VECTOR(2 downto 0);
    
    -- Test Inputs
    signal A_in  : signed(15 downto 0) := to_signed(2, 16);
    signal B_in  : signed(15 downto 0) := to_signed(3, 16);
    signal C_in  : signed(15 downto 0) := to_signed(4, 16);
    signal D_in  : signed(15 downto 0) := to_signed(5, 16);
    signal E_in  : signed(15 downto 0) := to_signed(6, 16);
    signal F_in  : signed(15 downto 0) := to_signed(7, 16);
    
    -- Output
    signal Det_out : signed(31 downto 0);
    
begin

    -- Instantiate Control Unit
    uut_control: control
        Port map (
            clk     => clk,
            reset   => reset,
            start   => start,
            done    => done,
            load    => load,
            compute => compute
        );
    
    -- Instantiate Datapath
    uut_datapath: datapath
        Port map (
            clk     => clk,
            reset   => reset,
            load    => load,
            compute => compute,
            A_in    => A_in,
            B_in    => B_in,
            C_in    => C_in,
            D_in    => D_in,
            E_in    => E_in,
            F_in    => F_in,
            Det_out => Det_out
        );
    
    -- Clock Generation
    clk_process : process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;
    
    -- Stimulus Process
    stimulus: process
    begin
        -- Initialize
        reset <= '1';
        start <= '0';
        wait for 20 ns;
        
        -- Release Reset
        reset <= '0';
        wait for 20 ns;
        
        -- Start Computation
        start <= '1';
        wait for 20 ns;
        start <= '0';
        
        -- Wait for Done
        wait until done = '1';
        wait for 20 ns;
        
        -- Display Result
        report "Determinant Det_i: " & integer'image(to_integer(Det_out));
        
        -- End Simulation
        wait;
    end process;

end Behavioral;

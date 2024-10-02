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
            -- Control Signals for Datapath
            M1_sel   : out STD_LOGIC_VECTOR(1 downto 0);
            M2_sel   : out STD_LOGIC_VECTOR(1 downto 0);
            ALU_sel  : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;
    
    component datapath
        Port (
            clk       : in  STD_LOGIC;
            reset     : in  STD_LOGIC;
            -- Control Signals
            M1_sel    : in  STD_LOGIC_VECTOR(1 downto 0);
            M2_sel    : in  STD_LOGIC_VECTOR(1 downto 0);
            ALU_sel   : in  STD_LOGIC_VECTOR(2 downto 0);
            -- Memory Interfaces
            addr_in   : out STD_LOGIC_VECTOR(3 downto 0);
            addr_out  : out STD_LOGIC_VECTOR(3 downto 0);
            we        : out STD_LOGIC;
            dataOUT   : out signed(31 downto 0);
            -- Input Memory Data Buses
            A_in      : in  signed(15 downto 0);
            B_in      : in  signed(15 downto 0);
            C_in      : in  signed(15 downto 0);
            D_in      : in  signed(15 downto 0);
            E_in      : in  signed(15 downto 0);
            F_in      : in  signed(15 downto 0)
        );
    end component;
    
    -- Signals
    signal clk     : STD_LOGIC := '0';
    signal reset   : STD_LOGIC := '0';
    signal start   : STD_LOGIC := '0';
    signal done    : STD_LOGIC;
    signal M1_sel  : STD_LOGIC_VECTOR(1 downto 0);
    signal M2_sel  : STD_LOGIC_VECTOR(1 downto 0);
    signal ALU_sel : STD_LOGIC_VECTOR(2 downto 0);
    signal we      : STD_LOGIC;
    signal addr_in : STD_LOGIC_VECTOR(3 downto 0);
    signal addr_out: STD_LOGIC_VECTOR(3 downto 0);
    signal dataOUT : signed(31 downto 0);
    
    -- Input Memories (Arrays)
    type mem_array is array (0 to 15) of signed(15 downto 0);
    signal A_mem, B_mem, C_mem, D_mem, E_mem, F_mem : mem_array;
    
    -- Output Memory
    type out_mem_array is array (0 to 15) of signed(31 downto 0);
    signal Det_mem : out_mem_array;
    
    -- Input Data Buses
    signal A_in_sig, B_in_sig, C_in_sig, D_in_sig, E_in_sig, F_in_sig : signed(15 downto 0);
    
begin

    -- Instantiate Control Unit
    uut_control: control
        Port map (
            clk     => clk,
            reset   => reset,
            start   => start,
            done    => done,
            M1_sel  => M1_sel,
            M2_sel  => M2_sel,
            ALU_sel => ALU_sel
        );
    
    -- Instantiate Datapath
    uut_datapath: datapath
        Port map (
            clk      => clk,
            reset    => reset,
            M1_sel   => M1_sel,
            M2_sel   => M2_sel,
            ALU_sel  => ALU_sel,
            addr_in  => addr_in,
            addr_out => addr_out,
            we       => we,
            dataOUT  => dataOUT,
            A_in     => A_in_sig,
            B_in     => B_in_sig,
            C_in     => C_in_sig,
            D_in     => D_in_sig,
            E_in     => E_in_sig,
            F_in     => F_in_sig
        );
    
    -- Clock Generation
    clk_process : process
    begin
        while True loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
    end process;
    
    -- Input Memory Read Process
    mem_read_process: process(clk)
    begin
        if rising_edge(clk) then
            A_in_sig <= A_mem(to_integer(unsigned(addr_in)));
            B_in_sig <= B_mem(to_integer(unsigned(addr_in)));
            C_in_sig <= C_mem(to_integer(unsigned(addr_in)));
            D_in_sig <= D_mem(to_integer(unsigned(addr_in)));
            E_in_sig <= E_mem(to_integer(unsigned(addr_in)));
            F_in_sig <= F_mem(to_integer(unsigned(addr_in)));
        end if;
    end process;
    
    -- Output Memory Write Process
    mem_write_process: process(clk)
    begin
        if rising_edge(clk) then
            if we = '1' then
                Det_mem(to_integer(unsigned(addr_out))) <= dataOUT;
            end if;
        end if;
    end process;
    
    -- Stimulus Process
    stimulus: process
    begin
        -- Initialize Input Memories with Test Data
        for i in 0 to 15 loop
            A_mem(i) <= to_signed(i + 1, 16);
            B_mem(i) <= to_signed((i + 1) * 2, 16);
            C_mem(i) <= to_signed((i + 1) * 3, 16);
            D_mem(i) <= to_signed((i + 1) * 4, 16);
            E_mem(i) <= to_signed((i + 1) * 5, 16);
            F_mem(i) <= to_signed((i + 1) * 6, 16);
        end loop;
        
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
        
        -- Display Results
        for i in 0 to 15 loop
            report "Determinant Det[" & integer'image(i) & "]: " & integer'image(to_integer(Det_mem(i)));
        end loop;
        
        -- End Simulation
        wait;
    end process;

end Behavioral;

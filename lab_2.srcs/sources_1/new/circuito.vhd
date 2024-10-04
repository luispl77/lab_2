library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity circuito is
  port (
    clk, rst : in  std_logic;
    we, done    : out std_logic;
    addr : out std_logic_vector(2 downto 0);
    dataOUT   : out signed(31 downto 0)
    );
end circuito;

architecture Behavioral of circuito is
  component control
    port(
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
 --       start    : in  STD_LOGIC;
        done     : out STD_LOGIC;
        -- Control Signals for Datapath
        M1_sel   : out STD_LOGIC_VECTOR(1 downto 0);
        M2_sel   : out STD_LOGIC_VECTOR(1 downto 0);
        ALU_sel  : out STD_LOGIC_VECTOR(2 downto 0)
    );
  end component;
  component datapath
    port(
    
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        -- Control Signals
        M1_sel    : in  STD_LOGIC_VECTOR(1 downto 0);
        M2_sel    : in  STD_LOGIC_VECTOR(1 downto 0);
        ALU_sel   : in  STD_LOGIC_VECTOR(2 downto 0);
        -- Memory Interfaces
        addr_in   : out STD_LOGIC_VECTOR(3 downto 0);  -- Input Address
        addr_out  : out STD_LOGIC_VECTOR(3 downto 0);  -- Output Address
        we        : out STD_LOGIC;                      -- Write Enable
        dataOUT   : out signed(31 downto 0);            -- Data to Output Memory
        -- Input Memory Data Buses
        A_in      : in  signed(15 downto 0);
        B_in      : in  signed(15 downto 0);
        C_in      : in  signed(15 downto 0);
        D_in      : in  signed(15 downto 0);
        E_in      : in  signed(15 downto 0);
        F_in      : in  signed(15 downto 0)
      );
  end component;
  
  component MemIN
    port(
    clk    : in  std_logic;
    addr   : in  std_logic_vector(9 downto 0);
    A, B, C, D, E, F : out std_logic_vector(15 downto 0)
    );
    
  end component;
  
  component MemOUT
    port(
    clk     : in  std_logic;
    addr    : in  std_logic_vector(9 downto 0);
    we      : in  std_logic;
    dataIN  : in  std_logic_vector(31 downto 0);
    dataOUT : out  std_logic_vector(31 downto 0)
    );
    
  end component;

  signal M1_sel : std_logic_vector(1 downto 0);
  signal M2_sel    : std_logic_vector(1 downto 0);        
  signal ALU_sel : STD_LOGIC_VECTOR(2 downto 0);

begin
  inst_control : control port map(
    clk       =>  clk,
    reset     =>  rst
    );
    
  inst_datapath : datapath port map(
    clk       => clk,
    reset     => rst,
    addr_out  => addr,
    we      =>  we,
    M1_sel    => M1_sel,
    M2_sel    => M2_sel,
    ALU_sel  => ALU_sel
    );
    
  inst_memOUT : memOUT port map(
  
  );

  inst_memOUT : memOUT port map(
  
  );
end Behavioral;

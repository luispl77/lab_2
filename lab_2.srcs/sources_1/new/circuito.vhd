library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity circuito is
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
end circuito;

architecture Behavioral of circuito is
  component control
    port(
        clk      : in  std_logic;
        reset    : in  std_logic;

        done     : out std_logic;
        we       : out std_logic;
        addr     : out std_logic_vector(3 downto 0);
        counter_out  : out signed (3 downto 0);

        -- Control Signals for Datapath
        Mux_sel   : out std_logic_vector(8 downto 0);
        ALU_sel   : out std_logic;
        enables   : out std_logic_vector(3 downto 0)
    );
  end component;

  component datapath
    Port (
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;

        -- Control Signals
        ALU_sel   : inout  STD_LOGIC;
        sel1, sel2, sel4 : inout STD_LOGIC;
        sel3, sel5, sel6 : inout STD_LOGIC_VECTOR(1 downto 0);
        en1, en2, en3, en4 : inout std_logic;
        
        -- Input Memory Data Buses
        A_in      : in  std_logic_vector(15 downto 0);
        B_in      : in  std_logic_vector(15 downto 0);
        C_in      : in  std_logic_vector(15 downto 0);
        D_in      : in  std_logic_vector(15 downto 0);
        E_in      : in  std_logic_vector(15 downto 0);
        F_in      : in  std_logic_vector(15 downto 0);

        
        -- Debug Output
        Reg1,Reg2,Reg3,Reg4 : out  std_logic_vector(31 downto 0);
        Mux1_O,Mux2_O,Mux3_O,Mux4_O,Mux5_O,Mux6_O : out std_logic_vector(31 downto 0); 
        Mult1_O, Mult2_O, ALU_O  : out signed(31 downto 0);
        
        -- Output Memory Data Bus
        Det_out : out  std_logic_vector(31 downto 0) 
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
    port (
      clk     : in  std_logic;
      addr    : in  std_logic_vector(9 downto 0);
      we      : in  std_logic;
      dataIN  : in  std_logic_vector(31 downto 0);
      dataOUT : out  std_logic_vector(31 downto 0)
      );
    
  end component;

  -- Connect Wires (CONTROL - DATAPATH)
  --signal    ALU_sel :  STD_LOGIC;
  --signal    sel :  STD_LOGIC_VECTOR(7 downto 0);
  --signal    enables :  STD_LOGIC_VECTOR(3 downto 0);

  -- Connect Wires (MEMORY - DATAPATH)
  --signal A_i,B_i,C_i,D_i,E_i,F_i :  STD_LOGIC_VECTOR(15 downto 0);
  --signal Det_o :  STD_LOGIC_VECTOR(31 downto 0);
  signal addrMSB : std_logic_vector(5 downto 0);
  
  signal addr4bits : std_logic_vector (3 downto 0);
  signal sel3_concat : std_logic_vector (1 downto 0);
  signal sel5_concat : std_logic_vector (1 downto 0);
  signal sel6_concat : std_logic_vector (1 downto 0);

begin
    
  ---------------------------------
  -- Circuito Logic
  ---------------------------------
  
    addrMSB <= "000000" ;
    addr (9 downto 4) <= addrMSB;
    addr (3 downto 0) <= addr4bits;
  
    sel3_concat(1) <= Mux_sel(2);
    sel3_concat(0) <= Mux_sel(3);
  
    sel5_concat(1) <= Mux_sel(5);
    sel5_concat(0) <= Mux_sel(6);
  
    sel6_concat(1) <= Mux_sel(7);
    sel6_concat(0) <= Mux_sel(8);
  
  
    sel1      <= Mux_sel(0);
    sel2      <= Mux_sel(1);
    sel3      <= sel3_concat;
    sel4      <= Mux_sel(4);
    sel5      <= sel5_concat;
    sel6      <= sel6_concat;
    en1       <= enables(0);
    en2       <= enables(1);
    en3       <= enables(2);
    en4       <= enables(3);
  
  

  ---------------------------------
  -- Control Assign
  ---------------------------------
  inst_control : control port map(
    clk       =>  clk,
    reset     =>  rst,

    done     =>  done,
    we       =>  we,
    addr     =>  addr4bits,
    
    counter_out => counter,

    -- Control Signals for Datapath
    Mux_sel   =>  Mux_sel,
    ALU_sel   =>  ALU_sel,
    enables   =>  enables

    );
    
  
  ---------------------------------
  -- Datapath Assign
  ---------------------------------
  inst_datapath : datapath port map(
    clk       => clk,
    reset     => rst,

    -- Control
    ALU_sel  => ALU_sel,
    sel1      => Mux_sel(0),
    sel2      => Mux_sel(1),
    sel3      => sel3_concat,
    sel4      => Mux_sel(4),
    sel5      => sel5_concat,
    sel6      => sel6_concat,
    en1       => enables(0),
    en2       => enables(1),
    en3       => enables(2),
    en4       => enables(3),
    
    -- Input Memory Data Buses
    A_in      => A,
    B_in      => B,
    C_in      => C,
    D_in      => D,
    E_in      => E,
    F_in      => F,
    
    Reg1 => Reg1,
    Reg2 => Reg2,
    Reg3 => Reg3,
    Reg4 => Reg4,
    Mux1_O => Mux1_O,
    Mux2_O => Mux2_O,
    Mux3_O => Mux3_O,
    Mux4_O => Mux4_O,
    Mux5_O => Mux5_O,
    Mux6_O => Mux6_O,
    ALU_O => ALU_O,
    Mult1_O => Mult1_O,
    Mult2_O => Mult2_O,

    -- Output Memory Data Bus
    Det_out   => Det_out
    );

  
  
  ---------------------------------
  -- MemOUT Assign
  ---------------------------------
  inst_memOUT : memOUT port map(
    clk       => clk,
    addr      => addr,
    we        => we,
    dataIN    => Det_out,
    dataOUT   => dataOUT
  
  );

  
  ---------------------------------
  -- MemIN Assign
  ---------------------------------
  inst_memIN : memIN port map(
    clk       => clk,
    addr      => addr,
    A         => A,
    B         => B,
    C         => C,
    D         => D,
    E         => E,
    F         => F
  
  );
  
end Behavioral;

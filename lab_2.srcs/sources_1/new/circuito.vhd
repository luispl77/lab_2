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
    we, done    : out std_logic;
    --addrMEMin     : out std_logic_vector(9 downto 0);
    addrMEMout     : out std_logic_vector(9 downto 0);
    dataOUT     : out std_logic_vector(31 downto 0)
    
    -- internal
    --Mux_sel   : inout std_logic_vector(8 downto 0);
    --ALU_sel   : out std_logic;
    --enables   : inout std_logic_vector(3 downto 0);

        
    -- Debug Output
    --Reg1,Reg2,Reg3,Reg4 : out  std_logic_vector(31 downto 0); 
    ---counter  : out signed (4 downto 0);
    --sel1, sel2, sel4 : out STD_LOGIC;
   -- sel3, sel5, sel6 : out STD_LOGIC_VECTOR(1 downto 0);
    --en1, en2, en3, en4 : out std_logic;
    --Mux1_O,Mux2_O,Mux3_O,Mux4_O,Mux5_O,Mux6_O : out std_logic_vector(31 downto 0); 
    --Mult1_O, Mult2_O, ALU_O  : out signed(31 downto 0);
        
        
        
    -- Output Memory Data Bus
    --Det_out : out  std_logic_vector(31 downto 0);
    
    
    --A, B, C, D, E, F : out std_logic_vector(15 downto 0) 
    
    );
end circuito;

architecture Behavioral of circuito is
  component control
    port(
        clk      : in  std_logic;
        reset    : in  std_logic;

        done     : out std_logic;
        we       : out std_logic;
        addrMEMin     : out std_logic_vector(3 downto 0);
        addrMEMout     : out std_logic_vector(3 downto 0);
        --counter_out  : out signed (4 downto 0);

        -- Control Signals for Datapath
        --Mux_sel   : out std_logic_vector(8 downto 0);
        ALU_sel   : out std_logic;
       -- enables   : out std_logic_vector(3 downto 0);
        sel1, sel2, sel4 : out STD_LOGIC;
        sel3, sel5, sel6 : out STD_LOGIC_VECTOR(1 downto 0);
        en1, en2, en3, en4 : out std_logic
    );
  end component;

  component datapath
    port (
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;

        -- Control Signals
        ALU_sel   : in  STD_LOGIC;
        sel1, sel2, sel4 : in STD_LOGIC;
        sel3, sel5, sel6 : in STD_LOGIC_VECTOR(1 downto 0);
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
  signal    ALU_sel_internal :  STD_LOGIC;
  signal    we_internal :  STD_LOGIC;

  -- Connect Wires (MEMORY - DATAPATH)
  signal   A_internal,B_internal,C_internal,D_internal,E_internal,F_internal :  STD_LOGIC_VECTOR(15 downto 0);
  signal   counter_internal  :  signed (4 downto 0);
  signal   sel1_internal, sel2_internal, sel4_internal : STD_LOGIC;
  signal   sel3_internal, sel5_internal, sel6_internal : STD_LOGIC_VECTOR(1 downto 0);
  signal   en1_internal, en2_internal, en3_internal, en4_internal : std_logic;
  signal   addrMEMin_internal     : std_logic_vector(9 downto 0);
  signal   addrMEMout_internal      : std_logic_vector(9 downto 0);
  
  signal Det_out_internal :  STD_LOGIC_VECTOR(31 downto 0);
  signal addrMSB : std_logic_vector(5 downto 0);
  
  signal addr4bits_IN, addr4bits_OUT : std_logic_vector (3 downto 0);

begin
    
  ---------------------------------
  -- Circuito Logic
  ---------------------------------
  
    addrMSB <= "000000" ;
    
    addrMEMin_internal (9 downto 4) <= addrMSB;
    addrMEMin_internal (3 downto 0) <= addr4bits_IN;
    
    addrMEMin_internal (3 downto 0) <= addr4bits_IN;
    
    addrMEMout_internal (9 downto 4) <= addrMSB;
    addrMEMout_internal (3 downto 0) <= addr4bits_OUT;
    
    
    
  ---------------------------------
  -- Circuito Output Logic
  ---------------------------------
  
    --ALU_sel  <= ALU_sel_internal;
    we  <= we_internal;
    --sel1      <= sel1_internal;
--    sel2      <= sel2_internal;
  --  sel3      <= sel3_internal;
    --sel4      <= sel4_internal;
    --sel5      <= sel5_internal;
    --sel6      <= sel6_internal;
    --en1       <= en1_internal;
    --en2       <= en2_internal;
    --en3       <= en3_internal;
    --en4       <= en4_internal;
    addrMEMout <= addrMEMout_internal;
    --addrMEMin <= addrMEMin_internal;
    --Det_out <=  Det_out_internal;
    --A      <= A_internal;
    --B      <= B_internal;
    --C      <= C_internal;
    --D      <= D_internal;
    --E      <= E_internal;
    --F      <= F_internal;
  
  

  ---------------------------------
  -- Control Assign
  ---------------------------------
  inst_control : control port map(
    clk       =>  clk,
    reset     =>  rst,

    done     =>  done,
    we       =>  we_internal,
    addrMEMin => addr4bits_IN,
    addrMEMout => addr4bits_OUT,
    
    --counter_out => counter,

    -- Control Signals for Datapath
    --Mux_sel   =>  Mux_sel,
    ALU_sel   =>  ALU_sel_internal,
    --enables   =>  enables
    sel1      => sel1_internal,
    sel2      => sel2_internal,
    sel3      => sel3_internal,
    sel4      => sel4_internal,
    sel5      => sel5_internal,
    sel6      => sel6_internal,
    en1       => en1_internal,
    en2       => en2_internal,
    en3       => en3_internal,
    en4       => en4_internal

    );
    
  
  ---------------------------------
  -- Datapath Assign
  ---------------------------------
  inst_datapath : datapath port map(
    clk       => clk,
    reset     => rst,

    -- Control
    ALU_sel  => ALU_sel_internal,
    sel1      => sel1_internal,
    sel2      => sel2_internal,
    sel3      => sel3_internal,
    sel4      => sel4_internal,
    sel5      => sel5_internal,
    sel6      => sel6_internal,
    en1       => en1_internal,
    en2       => en2_internal,
    en3       => en3_internal,
    en4       => en4_internal,
    
    
    -- Input Memory Data Buses
    A_in      => A_internal,
    B_in      => B_internal,
    C_in      => C_internal,
    D_in      => D_internal,
    E_in      => E_internal,
    F_in      => F_internal,
    
    --Reg1 => Reg1,
    --Reg2 => Reg2,
    --Reg3 => Reg3,
    --Reg4 => Reg4,
    --Mux1_O => Mux1_O,
    --Mux2_O => Mux2_O,
    --Mux3_O => Mux3_O,
    --Mux4_O => Mux4_O,
    --Mux5_O => Mux5_O,
    --Mux6_O => Mux6_O,
    --ALU_O => ALU_O,
    --Mult1_O => Mult1_O,
    --Mult2_O => Mult2_O,

    -- Output Memory Data Bus
    Det_out   => Det_out_internal
    );

  
  
  ---------------------------------
  -- MemOUT Assign
  ---------------------------------
  inst_memOUT : memOUT port map(
    clk       => clk,
    addr      => addrMEMout_internal,
    we        => we_internal,
    dataIN    => Det_out_internal,
    dataOUT   => dataOUT
  
  );

  
  ---------------------------------
  -- MemIN Assign
  ---------------------------------
  inst_memIN : memIN port map(
    clk       => clk,
    addr      => addrMEMin_internal,
    A         => A_internal,
    B         => B_internal,
    C         => C_internal,
    D         => D_internal,
    E         => E_internal,
    F         => F_internal
  
  );
  
end Behavioral;

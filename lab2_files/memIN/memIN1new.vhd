-----------------------------------------------------------------------------
-- Memory generated for 'Computing Determinants', PSD/DSD (2024/25)
-- Copyright (C) by Paulo Flores <paulo.flores@tecnico.ulisboa.pt>
-- Version: Ver. 1.0 2024-09-20
-- Command: dat2mem.pl -s 1727261061
-- Seed: -s 1727261061 ( dat2mem.pl -s 1727261061 )
-- Date: 2024-09-30T16:09:32 WEST
-----------------------------------------------------------------------------
library ieee;
library UNISIM;
library UNIMACRO;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use UNISIM.Vcomponents.all;
use UNIMACRO.vcomponents.all;


entity MemIN is
  port (
    clk    : in  std_logic;
    addr   : in  std_logic_vector(9 downto 0);
    A, B, C, D, E, F : out std_logic_vector(15 downto 0)
    );
end MemIN;


architecture GEN1727261061 of MemIN is
  signal dout0,dout1,dout2: std_logic_vector(31 downto 0);
begin

  MEM_in0 : BRAM_SINGLE_MACRO
    generic map (          -- memory initialization
      BRAM_SIZE => "36Kb", -- Target BRAM, "18Kb" or "36Kb"
      DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
      WRITE_WIDTH => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH  => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      -- Initialize memory predefined data
      INIT_00 => X"E5A722EEB4CD5DFABBBDA63665A5E2D55D1003A76B4062E0821A241621D9767E",
      INIT_01 => X"FCDDDCB2AE020CA7F46F149ADDA9810F6AFD3E9C92D63E2BF085AF230F50FD28",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      CLK   => clk,         -- Clock
      ADDR  => addr,        -- 9-bit Address Input, width defined by read/write port depth
      DI    => x"00000000", -- 32-bit Data Input, width defined by WRITE_WIDTH parameter
      DO    => dout0,       -- 32-bit Data Output, width defined by READ_WIDTH parameter
      EN    => '1',         -- 1-bit RAM Enable Input
      WE    => "0000",      -- Write Enable Input, width defined by write port depth
      REGCE => '0',         -- 1-bit Input, output register enable
      RST   => '0'          -- 1-bit Input reset
      );

  MEM_in1 : BRAM_SINGLE_MACRO
    generic map (          -- memory initialization
      BRAM_SIZE => "36Kb", -- Target BRAM, "18Kb" or "36Kb"
      DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
      WRITE_WIDTH => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH  => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      -- Initialize memory predefined data
      INIT_00 => X"4A9C01667DAF0E9BF03A44321DD72242BAE958BC6DBF11EC170A4CD8C3C93156",
      INIT_01 => X"90060BB7130E163AB0FF2F301A1D444B9E467DBA1E753BC2B3C25F027BA4027F",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      CLK   => clk,         -- Clock
      ADDR  => addr,        -- 9-bit Address Input, width defined by read/write port depth
      DI    => x"00000000", -- 32-bit Data Input, width defined by WRITE_WIDTH parameter
      DO    => dout1,       -- 32-bit Data Output, width defined by READ_WIDTH parameter
      EN    => '1',         -- 1-bit RAM Enable Input
      WE    => "0000",      -- Write Enable Input, width defined by write port depth
      REGCE => '0',         -- 1-bit Input, output register enable
      RST   => '0'          -- 1-bit Input reset
      );

  MEM_in2 : BRAM_SINGLE_MACRO
    generic map (          -- memory initialization
      BRAM_SIZE => "36Kb", -- Target BRAM, "18Kb" or "36Kb"
      DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
      WRITE_WIDTH => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH  => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      -- Initialize memory predefined data
      INIT_00 => X"A1C855C8C04E53AD7250D50ADDB1F9AFF25C6F834B43448D288151B8D34D895F",
      INIT_01 => X"CF38F3A4894C4C2C3B78EC9A977619A78002108459187D7D8E47052228307E38",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      CLK   => clk,         -- Clock
      ADDR  => addr,        -- 9-bit Address Input, width defined by read/write port depth
      DI    => x"00000000", -- 32-bit Data Input, width defined by WRITE_WIDTH parameter
      DO    => dout2,       -- 32-bit Data Output, width defined by READ_WIDTH parameter
      EN    => '1',         -- 1-bit RAM Enable Input
      WE    => "0000",      -- Write Enable Input, width defined by write port depth
      REGCE => '0',         -- 1-bit Input, output register enable
      RST   => '0'          -- 1-bit Input reset
      );

  A <= dout0(15 downto 0);
  B <= dout0(31 downto 16);

  C <= dout1(15 downto 0);
  D <= dout1(31 downto 16);

  E <= dout2(15 downto 0);
  F <= dout2(31 downto 16);

end GEN1727261061;

--- Mat:  0 --------------------------------------------------------------  0
-- Inp A= 30334 (0x767E)  B=  8665 (0x21D9)  C= 12630 (0x3156)
--     D=-15415 (0xC3C9)  E=-30369 (0x895F)  F=-11443 (0xD34D)
-- Res m11=   262844110 (0x0FAAAECE)        m12=   347542801 (0x14B71511)
--     m21=   -24132025 (0xFE8FC647)        m22=    86875331 (0x052D9CC3)
--- Det -1238519501 (0xB62DB133)
--- Mat:  1 --------------------------------------------------------------  1
-- Inp A=  9238 (0x2416)  B=-32230 (0x821A)  C= 19672 (0x4CD8)
--     D=  5898 (0x170A)  E= 20920 (0x51B8)  F= 10369 (0x2881)
-- Res m11=  -297740740 (0xEE40D63C)        m12=   216928718 (0x0CEE11CE)
--     m21=  -824121100 (0xCEE0E8F4)        m22=    54255440 (0x033BDF50)
--- Det -1754689944 (0x97698E68)
--- Mat:  2 --------------------------------------------------------------  2
-- Inp A= 25312 (0x62E0)  B= 27456 (0x6B40)  C=  4588 (0x11EC)
--     D= 28095 (0x6DBF)  E= 17549 (0x448D)  F= 19267 (0x4B43)
-- Res m11=   694966272 (0x296C5800)        m12=   338141895 (0x1427A2C7)
--     m21=   897344448 (0x357C63C0)        m22=    84561828 (0x050A4FA4)
--- Det -343976512 (0xEB7F55C0)
--- Mat:  3 --------------------------------------------------------------  3
-- Inp A=   935 (0x03A7)  B= 23824 (0x5D10)  C= 22716 (0x58BC)
--     D=-17687 (0xBAE9)  E= 28547 (0x6F83)  F= -3492 (0xF25C)
-- Res m11=    22275440 (0x0153E570)        m12=   -99685189 (0xFA0EECBB)
--     m21=   119810896 (0x07242B50)        m22=   -24916502 (0xFE83CDEA)
--- Det -536804112 (0xE00104F0)
--- Mat:  4 --------------------------------------------------------------  4
-- Inp A= -7467 (0xE2D5)  B= 26021 (0x65A5)  C=  8770 (0x2242)
--     D=  7639 (0x1DD7)  E= -1617 (0xF9AF)  F= -8783 (0xDDB1)
-- Res m11=  -194298807 (0xF46B3C49)        m12=    14194644 (0x00D897D4)
--     m21=   426978589 (0x19732D1D)        m22=     3566936 (0x00366D58)
--- Det 1366841108 (0x51785714)
--- Mat:  5 --------------------------------------------------------------  5
-- Inp A=-22986 (0xA636)  B=-17475 (0xBBBD)  C= 17458 (0x4432)
--     D= -4038 (0xF03A)  E=-10998 (0xD50A)  F= 29264 (0x7250)
-- Res m11=   401680350 (0x17F127DE)        m12=  -321868458 (0xECD0AD56)
--     m21=  -234514500 (0xF20597BC)        m22=   -80447948 (0xFB347634)
--- Det 441018352 (0x1A4967F0)
--- Mat:  6 --------------------------------------------------------------  6
-- Inp A= 24058 (0x5DFA)  B=-19251 (0xB4CD)  C=  3739 (0x0E9B)
--     D= 32175 (0x7DAF)  E= 21421 (0x53AD)  F=-16306 (0xC04E)
-- Res m11=  -463140558 (0xE4650932)        m12=  -349266768 (0xEB2E9CB0)
--     m21=  -691380414 (0xD6CA5F42)        m22=   -87286793 (0xFACC1BF7)
--- Det 2084728798 (0x7C426FDE)
--- Mat:  7 --------------------------------------------------------------  7
-- Inp A=  8942 (0x22EE)  B= -6745 (0xE5A7)  C=   358 (0x0166)
--     D= 19100 (0x4A9C)  E= 21960 (0x55C8)  F=-24120 (0xA1C8)
-- Res m11=   -60313790 (0xFC67AF42)        m12=  -529666258 (0xE06DEF2E)
--     m21=  -131244210 (0xF82D5F4E)        m22=  -132399342 (0xF81BBF12)
--- Det -1096048992 (0xBEAB9EA0)
--- Mat:  8 --------------------------------------------------------------  8
-- Inp A=  -728 (0xFD28)  B=  3920 (0x0F50)  C=   639 (0x027F)
--     D= 31652 (0x7BA4)  E= 32312 (0x7E38)  F= 10288 (0x2830)
-- Res m11=    -2853760 (0xFFD47480)        m12=   332425128 (0x13D067A8)
--     m21=   126580720 (0x078B77F0)        m22=    83138755 (0x04F498C3)
--- Det -1170704384 (0xBA387800)
--- Mat:  9 --------------------------------------------------------------  9
-- Inp A=-20701 (0xAF23)  B= -3963 (0xF085)  C= 24322 (0x5F02)
--     D=-19518 (0xB3C2)  E=  1314 (0x0522)  F=-29113 (0x8E47)
-- Res m11=    82038063 (0x04E3CD2F)        m12=   -38275183 (0xFDB7F791)
--     m21=   -19038252 (0xFEDD7FD4)        m22=    -9558817 (0xFF6E24DF)
--- Det 1344627933 (0x502564DD)
--- Mat: 10 -------------------------------------------------------------- 10
-- Inp A= 15915 (0x3E2B)  B=-27946 (0x92D6)  C= 15298 (0x3BC2)
--     D=  7797 (0x1E75)  E= 32125 (0x7D7D)  F= 22808 (0x5918)
-- Res m11=  -444760590 (0xE57D7DF2)        m12=   732722915 (0x2BAC76E3)
--     m21=  -645412870 (0xD987C7FA)        m22=   183199845 (0x0AEB6865)
--- Det -1018727988 (0xC34771CC)
--- Mat: 11 -------------------------------------------------------------- 11
-- Inp A= 16028 (0x3E9C)  B= 27389 (0x6AFD)  C= 32186 (0x7DBA)
--     D=-25018 (0x9E46)  E=  4228 (0x1084)  F=-32766 (0x8002)
-- Res m11=   438990892 (0x1A2A782C)        m12=  -138518620 (0xF7BE5FA4)
--     m21=   196324352 (0x0BB3AC00)        m22=   -34626494 (0xFDEFA442)
--- Det -854262952 (0xCD14FB58)
--- Mat: 12 -------------------------------------------------------------- 12
-- Inp A=-32497 (0x810F)  B= -8791 (0xDDA9)  C= 17483 (0x444B)
--     D=  6685 (0x1A1D)  E=  6567 (0x19A7)  F=-26762 (0x9776)
-- Res m11=   285681127 (0x110725E7)        m12=  -175778551 (0xF585D509)
--     m21=  -212460888 (0xF3561AA8)        m22=   -43912346 (0xFD61F366)
--- Det 1709025058 (0x65DDA722)
--- Mat: 13 -------------------------------------------------------------- 13
-- Inp A=  5274 (0x149A)  B= -2961 (0xF46F)  C= 12080 (0x2F30)
--     D=-20225 (0xB0FF)  E= -4966 (0xEC9A)  F= 15224 (0x3B78)
-- Res m11=   -15616314 (0xFF11B6C6)        m12=   -75597110 (0xFB7E7ACA)
--     m21=    24117345 (0x01700061)        m22=   -18908741 (0xFEDF79BB)
--- Det -1904111080 (0x8E819218)
--- Mat: 14 -------------------------------------------------------------- 14
-- Inp A=  3239 (0x0CA7)  B=-20990 (0xAE02)  C=  5690 (0x163A)
--     D=  4878 (0x130E)  E= 19500 (0x4C2C)  F=-30388 (0x894C)
-- Res m11=   -67986610 (0xFBF29B4E)        m12=  -592562761 (0xDCAE35B7)
--     m21=  -221822320 (0xF2C74290)        m22=  -148130932 (0xF72BB38C)
--- Det -129625160 (0xF84613B8)
--- Mat: 15 -------------------------------------------------------------- 15
-- Inp A= -9038 (0xDCB2)  B=  -803 (0xFCDD)  C=  2999 (0x0BB7)
--     D=-28666 (0x9006)  E= -3164 (0xF3A4)  F=-12488 (0xCF38)
-- Res m11=     7257514 (0x006EBDAA)        m12=    39502994 (0x025AC492)
--     m21=    20610601 (0x013A7E29)        m22=     9852341 (0x009655B5)
--- Det 209990608 (0x0C8433D0)



-----------------------------------------------------------------------------
-- Memory generated for 'Computing Determinants', PSD/DSD (2024/25)
-- Copyright (C) by Paulo Flores <paulo.flores@tecnico.ulisboa.pt>
-- Version: Ver. 1.0 2024-09-20
-- Command: dat2mem.pl -bw 8
-- Seed: -s 1727642038 ( dat2mem.pl -bw 8 -s 1727642038 )
-- Date: 2024-09-29T21:33:58 WEST
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


architecture GEN1727642038 of MemIN is
  signal dout0,dout1,dout2: std_logic_vector(31 downto 0);
begin

  MEM_in0 : BRAM_SINGLE_MACRO
    generic map (          -- memory initialization
      BRAM_SIZE => "36Kb", -- Target BRAM, "18Kb" or "36Kb"
      DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
      WRITE_WIDTH => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH  => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      -- Initialize memory predefined data
      INIT_00 => X"00780072FF9DFFC7FFC7FFD0004CFFE20017FFBCFFABFFF8FFC4005EFFB2003C",
      INIT_01 => X"FFB4FFB3007EFFB40004005BFFE0006B001FFFD4FF9D0045FFEDFF8CFFEF0010",
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
      INIT_00 => X"FFBE003F00600041001A0059FFAF0036002F001EFF8B006BFF8D0048FFB6005D",
      INIT_01 => X"FFC00073FF83000DFFAC0039FFC800710062006BFFF900110020005C001F0069",
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
      INIT_00 => X"006A0004005F002AFFE9001600110049FFC7FFA70079FFE6FF9CFFACFF910045",
      INIT_01 => X"000E000000220042FFDC00360071FFCBFFE8FFC30076FFF70059FFDBFF9BFF88",
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

end GEN1727642038;

--- Mat:  0 --------------------------------------------------------------  0
-- Inp A=    60 (0x003C)  B=   -78 (0xFFB2)  C=    93 (0x005D)
--     D=   -74 (0xFFB6)  E=    69 (0x0045)  F=  -111 (0xFF91)
-- Res m11=       -4680 (0xFFFFEDB8)        m12=       -7599 (0xFFFFE251)
--     m21=       -1482 (0xFFFFFA36)        m22=       -1896 (0xFFFFF898)
--- Det -2388438 (0xFFDB8E2A)
--- Mat:  1 --------------------------------------------------------------  1
-- Inp A=    94 (0x005E)  B=   -60 (0xFFC4)  C=    72 (0x0048)
--     D=  -115 (0xFF8D)  E=   -84 (0xFFAC)  F=  -100 (0xFF9C)
-- Res m11=       -5640 (0xFFFFE9F8)        m12=        8494 (0x0000212E)
--     m21=        2580 (0x00000A14)        m22=        2057 (0x00000809)
--- Det -33516000 (0xFE009620)
--- Mat:  2 --------------------------------------------------------------  2
-- Inp A=    -8 (0xFFF8)  B=   -85 (0xFFAB)  C=   107 (0x006B)
--     D=  -117 (0xFF8B)  E=   -26 (0xFFE6)  F=   121 (0x0079)
-- Res m11=         680 (0x000002A8)        m12=       -3154 (0xFFFFF3AE)
--     m21=         850 (0x00000352)        m22=        -797 (0xFFFFFCE3)
--- Det 2138940 (0x0020A33C)
--- Mat:  3 --------------------------------------------------------------  3
-- Inp A=   -68 (0xFFBC)  B=    23 (0x0017)  C=    30 (0x001E)
--     D=    47 (0x002F)  E=   -89 (0xFFA7)  F=   -57 (0xFFC7)
-- Res m11=       -1564 (0xFFFFF9E4)        m12=        5005 (0x0000138D)
--     m21=        1771 (0x000006EB)        m22=        1345 (0x00000541)
--- Det -10967435 (0xFF58A675)
--- Mat:  4 --------------------------------------------------------------  4
-- Inp A=   -30 (0xFFE2)  B=    76 (0x004C)  C=    54 (0x0036)
--     D=   -81 (0xFFAF)  E=    73 (0x0049)  F=    17 (0x0011)
-- Res m11=       -2280 (0xFFFFF718)        m12=        1211 (0x000004BB)
--     m21=       -2052 (0xFFFFF7FC)        m22=         283 (0x0000011B)
--- Det 1839732 (0x001C1274)
--- Mat:  5 --------------------------------------------------------------  5
-- Inp A=   -48 (0xFFD0)  B=   -57 (0xFFC7)  C=    89 (0x0059)
--     D=    26 (0x001A)  E=    22 (0x0016)  F=   -23 (0xFFE9)
-- Res m11=        2736 (0x00000AB0)        m12=        -554 (0xFFFFFDD6)
--     m21=       -6555 (0xFFFFE665)        m22=         -12 (0xFFFFFFF4)
--- Det -3664302 (0xFFC81652)
--- Mat:  6 --------------------------------------------------------------  6
-- Inp A=   -57 (0xFFC7)  B=   -99 (0xFF9D)  C=    65 (0x0041)
--     D=    96 (0x0060)  E=    42 (0x002A)  F=    95 (0x005F)
-- Res m11=        5643 (0x0000160B)        m12=        3933 (0x00000F5D)
--     m21=      -15939 (0xFFFFC1BD)        m22=        1158 (0x00000486)
--- Det 69222681 (0x04204119)
--- Mat:  7 --------------------------------------------------------------  7
-- Inp A=   114 (0x0072)  B=   120 (0x0078)  C=    63 (0x003F)
--     D=   -66 (0xFFBE)  E=     4 (0x0004)  F=   106 (0x006A)
-- Res m11=       13680 (0x00003570)        m12=         538 (0x0000021A)
--     m21=        -360 (0xFFFFFE98)        m22=         103 (0x00000067)
--- Det 1602720 (0x001874A0)
--- Mat:  8 --------------------------------------------------------------  8
-- Inp A=    16 (0x0010)  B=   -17 (0xFFEF)  C=   105 (0x0069)
--     D=    31 (0x001F)  E=  -120 (0xFF88)  F=  -101 (0xFF9B)
-- Res m11=        -272 (0xFFFFFEF0)        m12=       12136 (0x00002F68)
--     m21=       -2312 (0xFFFFF6F8)        m22=        3166 (0x00000C5E)
--- Det 27197280 (0x019EFF60)
--- Mat:  9 --------------------------------------------------------------  9
-- Inp A=  -116 (0xFF8C)  B=   -19 (0xFFED)  C=    92 (0x005C)
--     D=    32 (0x0020)  E=   -37 (0xFFDB)  F=    89 (0x0059)
-- Res m11=        2204 (0x0000089C)        m12=       -3409 (0xFFFFF2AF)
--     m21=       -2356 (0xFFFFF6CC)        m22=        -700 (0xFFFFFD44)
--- Det -9574404 (0xFF6DE7FC)
--- Mat: 10 -------------------------------------------------------------- 10
-- Inp A=    69 (0x0045)  B=   -99 (0xFF9D)  C=    17 (0x0011)
--     D=    -7 (0xFFF9)  E=    -9 (0xFFF7)  F=   118 (0x0076)
-- Res m11=       -6831 (0xFFFFE551)        m12=        -993 (0xFFFFFC1F)
--     m21=        -990 (0xFFFFFC22)        m22=        -256 (0xFFFFFF00)
--- Det 765666 (0x000BAEE2)
--- Mat: 11 -------------------------------------------------------------- 11
-- Inp A=   -44 (0xFFD4)  B=    31 (0x001F)  C=   107 (0x006B)
--     D=    98 (0x0062)  E=   -61 (0xFFC3)  F=   -24 (0xFFE8)
-- Res m11=       -1364 (0xFFFFFAAC)        m12=        1420 (0x0000058C)
--     m21=        6355 (0x000018D3)        m22=         571 (0x0000023B)
--- Det -9802944 (0xFF6A6B40)
--- Mat: 12 -------------------------------------------------------------- 12
-- Inp A=   107 (0x006B)  B=   -32 (0xFFE0)  C=   113 (0x0071)
--     D=   -56 (0xFFC8)  E=   -53 (0xFFCB)  F=   113 (0x0071)
-- Res m11=       -3424 (0xFFFFF2A0)        m12=       -5882 (0xFFFFE906)
--     m21=       -1824 (0xFFFFF8E0)        m22=       -1441 (0xFFFFFA5F)
--- Det -5794784 (0xFFA79420)
--- Mat: 13 -------------------------------------------------------------- 13
-- Inp A=    91 (0x005B)  B=     4 (0x0004)  C=    57 (0x0039)
--     D=   -84 (0xFFAC)  E=    54 (0x0036)  F=   -36 (0xFFDC)
-- Res m11=         364 (0x0000016C)        m12=       -1853 (0xFFFFF8C3)
--     m21=        -108 (0xFFFFFF94)        m22=        -513 (0xFFFFFDFF)
--- Det -386856 (0xFFFA18D8)
--- Mat: 14 -------------------------------------------------------------- 14
-- Inp A=   -76 (0xFFB4)  B=   126 (0x007E)  C=    13 (0x000D)
--     D=  -125 (0xFF83)  E=    66 (0x0042)  F=    34 (0x0022)
-- Res m11=       -9576 (0xFFFFDA98)        m12=        2168 (0x00000878)
--     m21=      -14112 (0xFFFFC8E0)        m22=         449 (0x000001C1)
--- Det 26295192 (0x01913B98)
--- Mat: 15 -------------------------------------------------------------- 15
-- Inp A=   -77 (0xFFB3)  B=   -76 (0xFFB4)  C=   115 (0x0073)
--     D=   -64 (0xFFC0)  E=     0 (0x0000)  F=    14 (0x000E)
-- Res m11=        5852 (0x000016DC)        m12=         -77 (0xFFFFFFB3)
--     m21=       -3876 (0xFFFFF0DC)        m22=          51 (0x00000033)
--- Det      0 (0x00000000)



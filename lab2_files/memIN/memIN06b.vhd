-----------------------------------------------------------------------------
-- Memory generated for 'Computing Determinants', PSD/DSD (2024/25)
-- Copyright (C) by Paulo Flores <paulo.flores@tecnico.ulisboa.pt>
-- Version: Ver. 1.0 2024-09-20
-- Command: dat2mem.pl -bw 5 -A 1 -B -2 -C 3 -D -4 -E 5 -F -6 -s 123
-- Seed: -s 123 ( dat2mem.pl -bw 5 -A 1 -B -2 -C 3 -D -4 -E 5 -F -6 -s 123 -s 123 )
-- Date: 2024-09-29T21:31:21 WEST
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


architecture GEN123 of MemIN is
  signal dout0,dout1,dout2: std_logic_vector(31 downto 0);
begin

  MEM_in0 : BRAM_SINGLE_MACRO
    generic map (          -- memory initialization
      BRAM_SIZE => "36Kb", -- Target BRAM, "18Kb" or "36Kb"
      DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
      WRITE_WIDTH => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH  => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      -- Initialize memory predefined data
      INIT_00 => X"FFF8FFF7FFFFFFFEFFFFFFFCFFF9FFF70008000E000C000BFFFD0002FFFE0001",
      INIT_01 => X"000BFFF6FFFF0003FFFA00060003FFFAFFFE000800030003000C0008FFF8FFFF",
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
      INIT_00 => X"FFFB0002FFF90001000D0000FFF70005000C000D0009000EFFF80008FFFC0003",
      INIT_01 => X"000C000AFFF7000EFFF70009FFF80003000000050007000EFFF40002FFF4000D",
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
      INIT_00 => X"FFF7FFFFFFF200080009000B00090009FFFE00070005FFF7FFFA000CFFFA0005",
      INIT_01 => X"FFF6FFF6000A000B0006000D00090003FFF2FFF7FFFFFFFF000DFFFC0000FFFF",
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

end GEN123;

--- Mat:  0 --------------------------------------------------------------  0
-- Inp A=     1 (0x0001)  B=    -2 (0xFFFE)  C=     3 (0x0003)
--     D=    -4 (0xFFFC)  E=     5 (0x0005)  F=    -6 (0xFFFA)
-- Res m11=          -2 (0xFFFFFFFE)        m12=         -29 (0xFFFFFFE3)
--     m21=           2 (0x00000002)        m22=          -9 (0xFFFFFFF7)
--- Det     76 (0x0000004C)
--- Mat:  1 --------------------------------------------------------------  1
-- Inp A=     2 (0x0002)  B=    -3 (0xFFFD)  C=     8 (0x0008)
--     D=    -8 (0xFFF8)  E=    12 (0x000C)  F=    -6 (0xFFFA)
-- Res m11=          -6 (0xFFFFFFFA)        m12=         -70 (0xFFFFFFBA)
--     m21=           0 (0x00000000)        m22=         -18 (0xFFFFFFEE)
--- Det    108 (0x0000006C)
--- Mat:  2 --------------------------------------------------------------  2
-- Inp A=    11 (0x000B)  B=    12 (0x000C)  C=    14 (0x000E)
--     D=     9 (0x0009)  E=    -9 (0xFFF7)  F=     5 (0x0005)
-- Res m11=         132 (0x00000084)        m12=         -34 (0xFFFFFFDE)
--     m21=         276 (0x00000114)        m22=          11 (0x0000000B)
--- Det  10836 (0x00002A54)
--- Mat:  3 --------------------------------------------------------------  3
-- Inp A=    14 (0x000E)  B=     8 (0x0008)  C=    13 (0x000D)
--     D=    12 (0x000C)  E=     7 (0x0007)  F=    -2 (0xFFFE)
-- Res m11=         112 (0x00000070)        m12=           0 (0x00000000)
--     m21=         200 (0x000000C8)        m22=          21 (0x00000015)
--- Det   2352 (0x00000930)
--- Mat:  4 --------------------------------------------------------------  4
-- Inp A=    -9 (0xFFF7)  B=    -7 (0xFFF9)  C=     5 (0x0005)
--     D=    -9 (0xFFF7)  E=     9 (0x0009)  F=     9 (0x0009)
-- Res m11=          63 (0x0000003F)        m12=          72 (0x00000048)
--     m21=          28 (0x0000001C)        m22=          16 (0x00000010)
--- Det  -1008 (0xFFFFFC10)
--- Mat:  5 --------------------------------------------------------------  5
-- Inp A=    -4 (0xFFFC)  B=    -1 (0xFFFF)  C=     0 (0x0000)
--     D=    13 (0x000D)  E=    11 (0x000B)  F=     9 (0x0009)
-- Res m11=           4 (0x00000004)        m12=          95 (0x0000005F)
--     m21=         -13 (0xFFFFFFF3)        m22=          37 (0x00000025)
--- Det   1383 (0x00000567)
--- Mat:  6 --------------------------------------------------------------  6
-- Inp A=    -2 (0xFFFE)  B=    -1 (0xFFFF)  C=     1 (0x0001)
--     D=    -7 (0xFFF9)  E=     8 (0x0008)  F=   -14 (0xFFF2)
-- Res m11=           2 (0x00000002)        m12=        -114 (0xFFFFFF8E)
--     m21=           6 (0x00000006)        m22=         -34 (0xFFFFFFDE)
--- Det    616 (0x00000268)
--- Mat:  7 --------------------------------------------------------------  7
-- Inp A=    -9 (0xFFF7)  B=    -8 (0xFFF8)  C=     2 (0x0002)
--     D=    -5 (0xFFFB)  E=    -1 (0xFFFF)  F=    -9 (0xFFF7)
-- Res m11=          72 (0x00000048)        m12=           0 (0x00000000)
--     m21=          24 (0x00000018)        m22=          -1 (0xFFFFFFFF)
--- Det    -72 (0xFFFFFFB8)
--- Mat:  8 --------------------------------------------------------------  8
-- Inp A=    -1 (0xFFFF)  B=    -8 (0xFFF8)  C=    13 (0x000D)
--     D=   -12 (0xFFF4)  E=    -1 (0xFFFF)  F=     0 (0x0000)
-- Res m11=           8 (0x00000008)        m12=          -1 (0xFFFFFFFF)
--     m21=          -8 (0xFFFFFFF8)        m22=           1 (0x00000001)
--- Det      0 (0x00000000)
--- Mat:  9 --------------------------------------------------------------  9
-- Inp A=     8 (0x0008)  B=    12 (0x000C)  C=     2 (0x0002)
--     D=   -12 (0xFFF4)  E=    -4 (0xFFFC)  F=    13 (0x000D)
-- Res m11=          96 (0x00000060)        m12=         -44 (0xFFFFFFD4)
--     m21=        -120 (0xFFFFFF88)        m22=         -23 (0xFFFFFFE9)
--- Det  -7488 (0xFFFFE2C0)
--- Mat: 10 -------------------------------------------------------------- 10
-- Inp A=     3 (0x0003)  B=     3 (0x0003)  C=    14 (0x000E)
--     D=     7 (0x0007)  E=    -1 (0xFFFF)  F=    -1 (0xFFFF)
-- Res m11=           9 (0x00000009)        m12=           4 (0x00000004)
--     m21=          63 (0x0000003F)        m22=          21 (0x00000015)
--- Det    -63 (0xFFFFFFC1)
--- Mat: 11 -------------------------------------------------------------- 11
-- Inp A=     8 (0x0008)  B=    -2 (0xFFFE)  C=     5 (0x0005)
--     D=     0 (0x0000)  E=    -9 (0xFFF7)  F=   -14 (0xFFF2)
-- Res m11=         -16 (0xFFFFFFF0)        m12=         134 (0x00000086)
--     m21=         -10 (0xFFFFFFF6)        m22=          36 (0x00000024)
--- Det    764 (0x000002FC)
--- Mat: 12 -------------------------------------------------------------- 12
-- Inp A=    -6 (0xFFFA)  B=     3 (0x0003)  C=     3 (0x0003)
--     D=    -8 (0xFFF8)  E=     3 (0x0003)  F=     9 (0x0009)
-- Res m11=         -18 (0xFFFFFFEE)        m12=          21 (0x00000015)
--     m21=         -15 (0xFFFFFFF1)        m22=           1 (0x00000001)
--- Det    297 (0x00000129)
--- Mat: 13 -------------------------------------------------------------- 13
-- Inp A=     6 (0x0006)  B=    -6 (0xFFFA)  C=     9 (0x0009)
--     D=    -9 (0xFFF7)  E=    13 (0x000D)  F=     6 (0x0006)
-- Res m11=         -36 (0xFFFFFFDC)        m12=          84 (0x00000054)
--     m21=           0 (0x00000000)        m22=          19 (0x00000013)
--- Det   -684 (0xFFFFFD54)
--- Mat: 14 -------------------------------------------------------------- 14
-- Inp A=     3 (0x0003)  B=    -1 (0xFFFF)  C=    14 (0x000E)
--     D=    -9 (0xFFF7)  E=    11 (0x000B)  F=    10 (0x000A)
-- Res m11=          -3 (0xFFFFFFFD)        m12=         113 (0x00000071)
--     m21=          -5 (0xFFFFFFFB)        m22=          32 (0x00000020)
--- Det    469 (0x000001D5)
--- Mat: 15 -------------------------------------------------------------- 15
-- Inp A=   -10 (0xFFF6)  B=    11 (0x000B)  C=    10 (0x000A)
--     D=    12 (0x000C)  E=   -10 (0xFFF6)  F=   -10 (0xFFF6)
-- Res m11=        -110 (0xFFFFFF92)        m12=          90 (0x0000005A)
--     m21=         242 (0x000000F2)        m22=          47 (0x0000002F)
--- Det -26950 (0xFFFF96BA)



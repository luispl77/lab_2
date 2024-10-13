-----------------------------------------------------------------------------
-- Memory generated for 'Computing Determinants', PSD/DSD (2024/25)
-- Copyright (C) by Paulo Flores <paulo.flores@tecnico.ulisboa.pt>
-- Version: Ver. 1.0 2024-09-20
-- Command: dat2mem.pl -bw 12
-- Seed: -s 1727642122 ( dat2mem.pl -bw 12 -s 1727642122 )
-- Date: 2024-09-29T21:35:22 WEST
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


architecture GEN1727642122 of MemIN is
  signal dout0,dout1,dout2: std_logic_vector(31 downto 0);
begin

  MEM_in0 : BRAM_SINGLE_MACRO
    generic map (          -- memory initialization
      BRAM_SIZE => "36Kb", -- Target BRAM, "18Kb" or "36Kb"
      DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
      WRITE_WIDTH => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH  => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      -- Initialize memory predefined data
      INIT_00 => X"FF20FC78F86E05ECFA15FAACF88F06F3FDB20680079C01FCFA890180F993049C",
      INIT_01 => X"07C6020300B50302F8D5001005AD06C904DAFFCD010C05F7F937FA37F8A0FF0A",
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
      INIT_00 => X"04640692017A046BFF8C00E50138066D04E6067C03F8068EFCE30595074B05DF",
      INIT_01 => X"FE33062DFEC4027EFA8703BE04330456010D04DFFF3700D4F84000F9070E00C0",
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
      INIT_00 => X"FD6E0498FFCAFA4002E80267FB9AFB1F05CAFEA6007AFD88079004AAFFB701AD",
      INIT_01 => X"FFD5FB0AF842FCE60204074404F6FD300639F95AFF8005D4037DFE43FBD6FFD1",
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

end GEN1727642122;

--- Mat:  0 --------------------------------------------------------------  0
-- Inp A=  1180 (0x049C)  B= -1645 (0xF993)  C=  1503 (0x05DF)
--     D=  1867 (0x074B)  E=   429 (0x01AD)  F=   -73 (0xFFB7)
-- Res m11=    -1941100 (0xFFE26194)        m12=      -30137 (0xFFFF8A47)
--     m21=    -5543650 (0xFFAB691E)        m22=       -4460 (0xFFFFEE94)
--- Det 502115902 (0x1DEDAE3E)
--- Mat:  1 --------------------------------------------------------------  1
-- Inp A=   384 (0x0180)  B= -1399 (0xFA89)  C=  1429 (0x0595)
--     D=  -797 (0xFCE3)  E=  1194 (0x04AA)  F=  1936 (0x0790)
-- Res m11=     -537216 (0xFFF7CD80)        m12=     2311968 (0x00234720)
--     m21=     -884168 (0xFFF28238)        m22=      578528 (0x0008D3E0)
--- Det -1793163008 (0x951E8100)
--- Mat:  2 --------------------------------------------------------------  2
-- Inp A=   508 (0x01FC)  B=  1948 (0x079C)  C=  1678 (0x068E)
--     D=  1016 (0x03F8)  E=  -632 (0xFD88)  F=   122 (0x007A)
-- Res m11=      989584 (0x000F1990)        m12=      -76596 (0xFFFED4CC)
--     m21=     5247912 (0x005013A8)        m22=      -16582 (0xFFFFBF3A)
--- Det -987270976 (0xC52770C0)
--- Mat:  3 --------------------------------------------------------------  3
-- Inp A=  1664 (0x0680)  B=  -590 (0xFDB2)  C=  1660 (0x067C)
--     D=  1254 (0x04E6)  E=  -346 (0xFEA6)  F=  1482 (0x05CA)
-- Res m11=     -981760 (0xFFF10500)        m12=     -511108 (0xFFF8337C)
--     m21=    -1719260 (0xFFE5C424)        m22=     -125279 (0xFFFE16A1)
--- Det 180615056 (0x0AC3F790)
--- Mat:  4 --------------------------------------------------------------  4
-- Inp A=  1779 (0x06F3)  B= -1905 (0xF88F)  C=  1645 (0x066D)
--     D=   312 (0x0138)  E= -1249 (0xFB1F)  F= -1126 (0xFB9A)
-- Res m11=    -3388995 (0xFFCC49BD)        m12=     1408153 (0x00157C99)
--     m21=    -3728085 (0xFFC71D2B)        m22=      353550 (0x0005650E)
--- Det 1380734627 (0x524C56A3)
--- Mat:  5 --------------------------------------------------------------  5
-- Inp A= -1364 (0xFAAC)  B= -1515 (0xFA15)  C=   229 (0x00E5)
--     D=  -116 (0xFF8C)  E=   615 (0x0267)  F=   744 (0x02E8)
-- Res m11=     2066460 (0x001F881C)        m12=      456196 (0x0006F604)
--     m21=     -171195 (0xFFFD6345)        m22=      114503 (0x0001BF47)
--- Det 1181730992 (0x466FC8B0)
--- Mat:  6 --------------------------------------------------------------  6
-- Inp A=  1516 (0x05EC)  B= -1938 (0xF86E)  C=  1131 (0x046B)
--     D=   378 (0x017A)  E= -1472 (0xFA40)  F=   -54 (0xFFCA)
-- Res m11=    -2938008 (0xFFD32B68)        m12=       81004 (0x00013C6C)
--     m21=    -2924442 (0xFFD36066)        m22=       21381 (0x00005385)
--- Det -2019708416 (0x879DB200)
--- Mat:  7 --------------------------------------------------------------  7
-- Inp A=  -904 (0xFC78)  B=  -224 (0xFF20)  C=  1682 (0x0692)
--     D=  1124 (0x0464)  E=  1176 (0x0498)  F=  -658 (0xFD6E)
-- Res m11=      202496 (0x00031700)        m12=     -774712 (0xFFF42DC8)
--     m21=     -628544 (0xFFF668C0)        m22=     -190646 (0xFFFD174A)
--- Det -1559621632 (0xA30A1000)
--- Mat:  8 --------------------------------------------------------------  8
-- Inp A=  -246 (0xFF0A)  B= -1888 (0xF8A0)  C=   192 (0x00C0)
--     D=  1806 (0x070E)  E=   -47 (0xFFD1)  F= -1066 (0xFBD6)
-- Res m11=      464448 (0x00071640)        m12=       49856 (0x0000C2C0)
--     m21=    -3772224 (0xFFC670C0)        m22=       14523 (0x000038BB)
--- Det 1539649728 (0x5BC530C0)
--- Mat:  9 --------------------------------------------------------------  9
-- Inp A= -1481 (0xFA37)  B= -1737 (0xF937)  C=   249 (0x00F9)
--     D= -1984 (0xF840)  E=  -445 (0xFE43)  F=   893 (0x037D)
-- Res m11=     2572497 (0x002740D1)        m12=     -398866 (0xFFF9E9EE)
--     m21=     3013695 (0x002DFC3F)        m22=     -101082 (0xFFFE7526)
--- Det 1429490292 (0x55344A74)
--- Mat: 10 -------------------------------------------------------------- 10
-- Inp A=  1527 (0x05F7)  B=   268 (0x010C)  C=   212 (0x00D4)
--     D=  -201 (0xFF37)  E=  1492 (0x05D4)  F=  -128 (0xFF80)
-- Res m11=      409236 (0x00063E94)        m12=     -189449 (0xFFFD1BF7)
--     m21=        2948 (0x00000B84)        m22=      -47733 (0xFFFF458B)
--- Det -1795697152 (0x94F7D600)
--- Mat: 11 -------------------------------------------------------------- 11
-- Inp A=   -51 (0xFFCD)  B=  1242 (0x04DA)  C=  1247 (0x04DF)
--     D=   269 (0x010D)  E= -1702 (0xF95A)  F=  1593 (0x0639)
-- Res m11=      -63342 (0xFFFF0892)        m12=    -2711337 (0xFFD6A0D7)
--     m21=     1882872 (0x001CBAF8)        m22=     -676306 (0xFFF5AE2E)
--- Det -1726693388 (0x9914BFF4)
--- Mat: 12 -------------------------------------------------------------- 12
-- Inp A=  1737 (0x06C9)  B=  1453 (0x05AD)  C=  1110 (0x0456)
--     D=  1075 (0x0433)  E=  -720 (0xFD30)  F=  1270 (0x04F6)
-- Res m11=     2523861 (0x002682D5)        m12=     -912663 (0xFFF212E9)
--     m21=     3174805 (0x00307195)        m22=     -226415 (0xFFFC8B91)
--- Det -1785207032 (0x9597E708)
--- Mat: 13 -------------------------------------------------------------- 13
-- Inp A=    16 (0x0010)  B= -1835 (0xF8D5)  C=   958 (0x03BE)
--     D= -1401 (0xFA87)  E=  1860 (0x0744)  F=   516 (0x0204)
-- Res m11=      -29360 (0xFFFF8D50)        m12=      959776 (0x000EA520)
--     m21=      812905 (0x000C6769)        m22=      239497 (0x0003A789)
--- Det -1259326032 (0xB4F035B0)
--- Mat: 14 -------------------------------------------------------------- 14
-- Inp A=   770 (0x0302)  B=   181 (0x00B5)  C=   638 (0x027E)
--     D=  -316 (0xFEC4)  E=  -794 (0xFCE6)  F= -1982 (0xF842)
-- Res m11=      139370 (0x0002206A)        m12=     1574478 (0x0018064E)
--     m21=       58282 (0x0000E3AA)        m22=      393749 (0x00060215)
--- Det 1767776998 (0x695E22E6)
--- Mat: 15 -------------------------------------------------------------- 15
-- Inp A=   515 (0x0203)  B=  1990 (0x07C6)  C=  1581 (0x062D)
--     D=  -461 (0xFE33)  E= -1270 (0xFB0A)  F=   -43 (0xFFD5)
-- Res m11=     1024850 (0x000FA352)        m12=       55125 (0x0000D755)
--     m21=     2228800 (0x00220240)        m22=       14772 (0x000039B4)
--- Det -349333400 (0xEB2D9868)



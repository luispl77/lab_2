-----------------------------------------------------------------------------
-- Memory generated for 'Computing Determinants', PSD/DSD (2024/25)
-- Copyright (C) by Paulo Flores <paulo.flores@tecnico.ulisboa.pt>
-- Version: Ver. 1.0 2024-09-20
-- Command: dat2mem.pl 
-- Seed: -s 1727642530 ( dat2mem.pl  -s 1727642530 )
-- Date: 2024-09-29T21:42:10 WEST
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


architecture GEN1727642530 of MemIN is
  signal dout0,dout1,dout2: std_logic_vector(31 downto 0);
begin

  MEM_in0 : BRAM_SINGLE_MACRO
    generic map (          -- memory initialization
      BRAM_SIZE => "36Kb", -- Target BRAM, "18Kb" or "36Kb"
      DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
      WRITE_WIDTH => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH  => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      -- Initialize memory predefined data
      INIT_00 => X"6560C72BBC2D1C22D068A614E8AAF15620E79A94279EE73996797B90C165A941",
      INIT_01 => X"8647EF4CD684C5A3D7FB7DD821411A8C2F4627259173739BEF7B1DEB400014AB",
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
      INIT_00 => X"A2687F68FC32796C43CA7FEE67EC557832890DABF6D44CE2774C1DB6C1B32AF2",
      INIT_01 => X"C4C43AE6DA042194591470A6965374ABC46661D92AFA154C8B236952A26124E0",
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
      INIT_00 => X"C7C533F2B935513A7C8909CB03620078AE7052E24C9B207275111C9E5BB85071",
      INIT_01 => X"D7529CD896294FE3325694AF7C98548148087C52C32B6C34C7E712F80FC7B7A1",
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

end GEN1727642530;

--- Mat:  0 --------------------------------------------------------------  0
-- Inp A=-22207 (0xA941)  B=-16027 (0xC165)  C= 10994 (0x2AF2)
--     D=-15949 (0xC1B3)  E= 20593 (0x5071)  F= 23480 (0x5BB8)
-- Res m11=   355911589 (0x1536C7A5)        m12=   483501433 (0x1CD1A579)
--     m21=    79413785 (0x04BBC219)        m22=   120875955 (0x07346BB3)
--- Det 1476506766 (0x5801B48E)
--- Mat:  1 --------------------------------------------------------------  1
-- Inp A= 31632 (0x7B90)  B=-27015 (0x9679)  C=  7606 (0x1DB6)
--     D= 30540 (0x774C)  E=  7326 (0x1C9E)  F= 29969 (0x7511)
-- Res m11=  -854538480 (0xCD10C710)        m12=   219584526 (0x0D16980E)
--     m21= -1030514190 (0xC29399F2)        m22=    54926369 (0x03461C21)
--- Det 386485716 (0x17094DD4)
--- Mat:  2 --------------------------------------------------------------  2
-- Inp A= -6343 (0xE739)  B= 10142 (0x279E)  C= 19682 (0x4CE2)
--     D= -2348 (0xF6D4)  E=  8306 (0x2072)  F= 19611 (0x4C9B)
-- Res m11=   -64330706 (0xFC2A642E)        m12=   162882623 (0x09B5643F)
--     m21=   175801428 (0x0A7A8454)        m22=    40739575 (0x026DA2F7)
--- Det 816210870 (0x30A663B6)
--- Mat:  3 --------------------------------------------------------------  3
-- Inp A=-25964 (0x9A94)  B=  8423 (0x20E7)  C=  3499 (0x0DAB)
--     D= 12937 (0x3289)  E= 21218 (0x52E2)  F=-20880 (0xAE70)
-- Res m11=  -218694772 (0xF2F6FB8C)        m12=  -443057804 (0xE5977974)
--     m21=   138440428 (0x08406EEC)        m22=  -110741524 (0xF96637EC)
--- Det -1230034400 (0xB6AF2A20)
--- Mat:  4 --------------------------------------------------------------  4
-- Inp A= -3754 (0xF156)  B= -5974 (0xE8AA)  C= 21880 (0x5578)
--     D= 26604 (0x67EC)  E=   120 (0x0078)  F=   866 (0x0362)
-- Res m11=    22426396 (0x0156331C)        m12=      100166 (0x00018746)
--     m21=  -289643416 (0xEEBC6468)        m22=       74464 (0x000122E0)
--- Det -864803824 (0xCC742410)
--- Mat:  5 --------------------------------------------------------------  5
-- Inp A=-23020 (0xA614)  B=-12184 (0xD068)  C= 32750 (0x7FEE)
--     D= 17354 (0x43CA)  E=  2507 (0x09CB)  F= 31881 (0x7C89)
-- Res m11=   280475680 (0x10B7B820)        m12=    79902647 (0x04C337B7)
--     m21=  -610467136 (0xDB9D02C0)        m22=    20031520 (0x0131A820)
--- Det 886557888 (0x34D7CCC0)
--- Mat:  6 --------------------------------------------------------------  6
-- Inp A=  7202 (0x1C22)  B=-17363 (0xBC2D)  C= 31084 (0x796C)
--     D=  -974 (0xFC32)  E= 20794 (0x513A)  F=-18123 (0xB935)
-- Res m11=  -125048326 (0xF88BE9FA)        m12=  -376842460 (0xE989D724)
--     m21=  -522799930 (0xE0D6B4C6)        m22=   -94182306 (0xFA62E45E)
--- Det -1317217292 (0xB17CDBF4)
--- Mat:  7 --------------------------------------------------------------  7
-- Inp A=-14549 (0xC72B)  B= 25952 (0x6560)  C= 32616 (0x7F68)
--     D=-23960 (0xA268)  E= 13298 (0x33F2)  F=-14395 (0xC7C5)
-- Res m11=  -377575648 (0xE97EA720)        m12=  -191439259 (0xF496DE65)
--     m21=   224640512 (0x0D63BE00)        m22=   -47847522 (0xFD25E79E)
--- Det 293277632 (0x117B0FC0)
--- Mat:  8 --------------------------------------------------------------  8
-- Inp A=  5291 (0x14AB)  B= 16384 (0x4000)  C=  9440 (0x24E0)
--     D=-23967 (0xA261)  E=-18527 (0xB7A1)  F=  4039 (0x0FC7)
-- Res m11=    86687744 (0x052AC000)        m12=   -74825262 (0xFB8A41D2)
--     m21=  -238010368 (0xF1D04000)        m22=   -18722166 (0xFEE2528A)
--- Det 1031208960 (0x3D770000)
--- Mat:  9 --------------------------------------------------------------  9
-- Inp A=  7659 (0x1DEB)  B= -4229 (0xEF7B)  C= 26962 (0x6952)
--     D=-29917 (0x8B23)  E=  4856 (0x12F8)  F=-14361 (0xC7E7)
-- Res m11=   -32389911 (0xFE11C4E9)        m12=   -69729357 (0xFBD803B3)
--     m21=    12496695 (0x00BEAF37)        m22=   -17437209 (0xFEF5EDE7)
--- Det -779666742 (0xD1873ACA)
--- Mat: 10 -------------------------------------------------------------- 10
-- Inp A= 29595 (0x739B)  B=-28301 (0x9173)  C=  5452 (0x154C)
--     D= 11002 (0x2AFA)  E= 27700 (0x6C34)  F=-15573 (0xC32B)
-- Res m11=  -837568095 (0xCE13B9A1)        m12=  -431342505 (0xE64A3C57)
--     m21=  -465664654 (0xE43E8572)        m22=  -107826571 (0xF992B275)
--- Det 627947223 (0x256DB6D7)
--- Mat: 11 -------------------------------------------------------------- 11
-- Inp A= 10021 (0x2725)  B= 12102 (0x2F46)  C= 25049 (0x61D9)
--     D=-15258 (0xC466)  E= 31826 (0x7C52)  F= 18440 (0x4808)
-- Res m11=   121274142 (0x073A7F1E)        m12=   586881461 (0x22FB19B5)
--     m21=   118490682 (0x0710063A)        m22=   146727651 (0x08BEE2E3)
--- Det -141745512 (0xF78D2298)
--- Mat: 12 -------------------------------------------------------------- 12
-- Inp A=  6796 (0x1A8C)  B=  8513 (0x2141)  C= 29867 (0x74AB)
--     D=-27053 (0x9653)  E= 21633 (0x5481)  F= 31896 (0x7C98)
-- Res m11=    57854348 (0x0372C98C)        m12=   690012964 (0x2920C324)
--     m21=    23955582 (0x016D887E)        m22=   172504356 (0x0A483524)
--- Det -2028001288 (0x871F27F8)
--- Mat: 13 -------------------------------------------------------------- 13
-- Inp A= 32216 (0x7DD8)  B=-10245 (0xD7FB)  C= 28838 (0x70A6)
--     D= 22804 (0x5914)  E=-27473 (0x94AF)  F= 12886 (0x3256)
-- Res m11=  -330052920 (0xEC53CAC8)        m12=  -353984862 (0xEAE69EA2)
--     m21=  -529072290 (0xE076FF5E)        m22=   -88452628 (0xFABA51EC)
--- Det 777689828 (0x2E5A9AE4)
--- Mat: 14 -------------------------------------------------------------- 14
-- Inp A=-14941 (0xC5A3)  B=-10620 (0xD684)  C=  8596 (0x2194)
--     D= -9724 (0xDA04)  E= 20451 (0x4FE3)  F=-27095 (0x9629)
-- Res m11=   158673420 (0x09752A0C)        m12=  -554134786 (0xDEF892FE)
--     m21=    11979360 (0x00B6CA60)        m22=  -138531090 (0xF7BE2EEE)
--- Det 1604039656 (0x5F9BB3E8)
--- Mat: 15 -------------------------------------------------------------- 15
-- Inp A= -4276 (0xEF4C)  B=-31161 (0x8647)  C= 15078 (0x3AE6)
--     D=-15164 (0xC4C4)  E=-25384 (0x9CD8)  F=-10414 (0xD752)
-- Res m11=   133244436 (0x07F12614)        m12=   264344700 (0x0FC1947C)
--     m21=     2679846 (0x0028E426)        m22=    66087158 (0x03F068F6)
--- Det -1785185072 (0x95983CD0)



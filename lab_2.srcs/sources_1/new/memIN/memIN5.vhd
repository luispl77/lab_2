-----------------------------------------------------------------------------
-- Memory generated for 'Computing Determinants', PSD/DSD (2024/25)
-- Copyright (C) by Paulo Flores <paulo.flores@tecnico.ulisboa.pt>
-- Version: Ver. 1.0 2024-09-20
-- Command: dat2mem.pl 
-- Seed: -s 1727642592 ( dat2mem.pl  -s 1727642592 )
-- Date: 2024-09-29T21:43:12 WEST
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


architecture GEN1727642592 of MemIN is
  signal dout0,dout1,dout2: std_logic_vector(31 downto 0);
begin

  MEM_in0 : BRAM_SINGLE_MACRO
    generic map (          -- memory initialization
      BRAM_SIZE => "36Kb", -- Target BRAM, "18Kb" or "36Kb"
      DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
      WRITE_WIDTH => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH  => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      -- Initialize memory predefined data
      INIT_00 => X"693CCF46C3AA0E3E0370C37AEC8CFE1A0FFD7196A89E407FA1875744791B7C7D",
      INIT_01 => X"ABB3209005ECB8CB72021F4165B15F05C3C483B0EFBA9722B91545F672C34025",
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
      INIT_00 => X"612564ACD5CB3538E7B55B3BDAEF64669A7754AE28733F3AF87D5EAFCDBB1C4D",
      INIT_01 => X"989C3253245E6AA7253C60D7261F54F479514EEAA5B90A9BA22C779A578F1D5D",
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
      INIT_00 => X"63F35F18A76F367D603C885E858ED922F8E34C82E8E50F129954AA61B5C4CE50",
      INIT_01 => X"32DA9611C4304CF31D3D1F4AAA546AD4A08BA8790766B5E8887E6473AA231C5A",
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

end GEN1727642592;

--- Mat:  0 --------------------------------------------------------------  0
-- Inp A= 31869 (0x7C7D)  B= 31003 (0x791B)  C=  7245 (0x1C4D)
--     D=-12869 (0xCDBB)  E=-12720 (0xCE50)  F=-19004 (0xB5C4)
-- Res m11=   988034607 (0x3AE4362F)        m12=   241762749 (0x0E6901BD)
--     m21=  -174360872 (0xF59B76D8)        m22=    60427096 (0x039A0B58)
--- Det -1271459920 (0xB4370FB0)
--- Mat:  1 --------------------------------------------------------------  1
-- Inp A= 22340 (0x5744)  B=-24185 (0xA187)  C= 24239 (0x5EAF)
--     D= -1923 (0xF87D)  E=-21919 (0xAA61)  F=-26284 (0x9954)
-- Res m11=  -540292900 (0xDFCBC8DC)        m12=   576141336 (0x22573818)
--     m21=  -539712460 (0xDFD4A434)        m22=   144052065 (0x08960F61)
--- Det 408763004 (0x185D3A7C)
--- Mat:  2 --------------------------------------------------------------  2
-- Inp A= 16511 (0x407F)  B=-22370 (0xA89E)  C= 16186 (0x3F3A)
--     D= 10355 (0x2873)  E=  3858 (0x0F12)  F= -5915 (0xE8E5)
-- Res m11=  -369351070 (0xE9FC2662)        m12=   -22803559 (0xFEA40B99)
--     m21=  -593722170 (0xDC9C84C6)        m22=    -5678477 (0xFFA95A73)
--- Det -1604463184 (0xA05DD5B0)
--- Mat:  3 --------------------------------------------------------------  3
-- Inp A= 29078 (0x7196)  B=  4093 (0x0FFD)  C= 21678 (0x54AE)
--     D=-25993 (0x9A77)  E= 19586 (0x4C82)  F= -1821 (0xF8E3)
-- Res m11=   119016254 (0x07180B3E)        m12=   -35637028 (0xFDE038DC)
--     m21=   -17661295 (0xFEF28291)        m22=    -8920842 (0xFF77E0F6)
--- Det 636166392 (0x25EB20F8)
--- Mat:  4 --------------------------------------------------------------  4
-- Inp A=  -486 (0xFE1A)  B= -4980 (0xEC8C)  C= 25702 (0x6466)
--     D= -9489 (0xDAEF)  E= -9950 (0xD922)  F=-31346 (0x858E)
-- Res m11=     2420280 (0x0024EE38)        m12=   311892214 (0x129718F6)
--     m21=   -80740740 (0xFB2FFE7C)        m22=    77989388 (0x04A6060C)
--- Det -2071834760 (0x84824F78)
--- Mat:  5 --------------------------------------------------------------  5
-- Inp A=-15494 (0xC37A)  B=   880 (0x0370)  C= 23355 (0x5B3B)
--     D= -6219 (0xE7B5)  E=-30626 (0x885E)  F= 24636 (0x603C)
-- Res m11=   -13634720 (0xFF2FF360)        m12=  -754517630 (0xD306F982)
--     m21=    15079680 (0x00E61900)        m22=  -188608398 (0xF4C21072)
--- Det -1205424448 (0xB826AEC0)
--- Mat:  6 --------------------------------------------------------------  6
-- Inp A=  3646 (0x0E3E)  B=-15446 (0xC3AA)  C= 13624 (0x3538)
--     D=-10805 (0xD5CB)  E= 13949 (0x367D)  F=-22673 (0xA76F)
-- Res m11=   -56316116 (0xFCA4AF2C)        m12=  -316262031 (0xED263971)
--     m21=   -43542274 (0xFD6798FE)        m22=   -79063601 (0xFB4995CF)
--- Det 1932208758 (0x732B2A76)
--- Mat:  7 --------------------------------------------------------------  7
-- Inp A=-12474 (0xCF46)  B= 26940 (0x693C)  C= 25772 (0x64AC)
--     D= 24869 (0x6125)  E= 24344 (0x5F18)  F= 25587 (0x63F3)
-- Res m11=  -336049560 (0xEBF84A68)        m12=   622877454 (0x25205B0E)
--     m21=  1364268540 (0x515115FC)        m22=   155773123 (0x0948E8C3)
--- Det -435214992 (0xE60F2570)
--- Mat:  8 --------------------------------------------------------------  8
-- Inp A= 16421 (0x4025)  B= 29379 (0x72C3)  C=  7517 (0x1D5D)
--     D= 22415 (0x578F)  E=  7258 (0x1C5A)  F=-21981 (0xAA23)
-- Res m11=   482432559 (0x1CC1562F)        m12=  -159521677 (0xF67DE473)
--     m21=   879372228 (0x346A27C4)        m22=   -39854593 (0xFD9FDDFF)
--- Det -1403126075 (0xAC5DFEC5)
--- Mat:  9 --------------------------------------------------------------  9
-- Inp A= 17910 (0x45F6)  B=-18155 (0xB915)  C= 30618 (0x779A)
--     D=-24020 (0xA22C)  E= 25715 (0x6473)  F=-30594 (0x887E)
-- Res m11=  -325156050 (0xEC9E832E)        m12=  -786706800 (0xD11BCE90)
--     m21=  -119786690 (0xF8DC333E)        m22=  -196674580 (0xF446FBEC)
--- Det 279990664 (0x10B05188)
--- Mat: 10 -------------------------------------------------------------- 10
-- Inp A=-26846 (0x9722)  B= -4166 (0xEFBA)  C=  2715 (0x0A9B)
--     D=-23111 (0xA5B9)  E=-18968 (0xB5E8)  F=  1894 (0x0766)
-- Res m11=   111840436 (0x06AA8CB4)        m12=   -35952238 (0xFDDB6992)
--     m21=    84969736 (0x05108908)        m22=    -9001744 (0xFF76A4F0)
--- Det -612054480 (0xDB84CA30)
--- Mat: 11 -------------------------------------------------------------- 11
-- Inp A=-31824 (0x83B0)  B=-15420 (0xC3C4)  C= 20202 (0x4EEA)
--     D= 31057 (0x7951)  E=-22407 (0xA879)  F=-24437 (0xA08B)
-- Res m11=   490726080 (0x1D3FE2C0)        m12=   547528035 (0x20A29D63)
--     m21=  -790413780 (0xD0E33E2C)        m22=   136941223 (0x08298EA7)
--- Det -665230276 (0xD859643C)
--- Mat: 12 -------------------------------------------------------------- 12
-- Inp A= 24325 (0x5F05)  B= 26033 (0x65B1)  C= 21748 (0x54F4)
--     D=  9759 (0x261F)  E= 27348 (0x6AD4)  F=-21932 (0xAA54)
-- Res m11=   633252725 (0x25BEAB75)        m12=  -599772011 (0xDC403495)
--     m21=   820221731 (0x30E39723)        m22=  -149917577 (0xF7107077)
--- Det 84594692 (0x050AD004)
--- Mat: 13 -------------------------------------------------------------- 13
-- Inp A=  8001 (0x1F41)  B= 29186 (0x7202)  C= 24791 (0x60D7)
--     D=  9532 (0x253C)  E=  8010 (0x1F4A)  F=  7485 (0x1D3D)
-- Res m11=   233517186 (0x0DEB3082)        m12=    59962851 (0x0392F5E3)
--     m21=  1001751078 (0x3BB58226)        m22=    15023035 (0x00E53BBB)
--- Det 1880596292 (0x70179F44)
--- Mat: 14 -------------------------------------------------------------- 14
-- Inp A=-18229 (0xB8CB)  B=  1516 (0x05EC)  C= 27303 (0x6AA7)
--     D=  9310 (0x245E)  E= 19699 (0x4CF3)  F=-15312 (0xC430)
-- Res m11=   -27635164 (0xFE5A5224)        m12=  -301649317 (0xEE05325B)
--     m21=    55505308 (0x034EF19C)        m22=   -75371159 (0xFB81ED69)
--- Det 1223600720 (0x48EEAA50)
--- Mat: 15 -------------------------------------------------------------- 15
-- Inp A=  8336 (0x2090)  B=-21581 (0xABB3)  C= 12883 (0x3253)
--     D=-26468 (0x989C)  E=-27119 (0x9611)  F= 13018 (0x32DA)
-- Res m11=  -179899216 (0xF546F4B0)        m12=  -353026806 (0xEAF53D0A)
--     m21=   293177885 (0x11798A1D)        m22=   -88272371 (0xFABD120D)
--- Det -1554678066 (0xA3557ECE)



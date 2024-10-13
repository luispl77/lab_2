-----------------------------------------------------------------------------
-- Memory generated for 'Computing Determinants', PSD/DSD (2024/25)
-- Copyright (C) by Paulo Flores <paulo.flores@tecnico.ulisboa.pt>
-- Version: Ver. 1.0 2024-09-20
-- Command: dat2mem.pl 
-- Seed: -s 1727642574 ( dat2mem.pl  -s 1727642574 )
-- Date: 2024-09-29T21:42:54 WEST
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


architecture GEN1727642574 of MemIN is
  signal dout0,dout1,dout2: std_logic_vector(31 downto 0);
begin

  MEM_in0 : BRAM_SINGLE_MACRO
    generic map (          -- memory initialization
      BRAM_SIZE => "36Kb", -- Target BRAM, "18Kb" or "36Kb"
      DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
      WRITE_WIDTH => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH  => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      -- Initialize memory predefined data
      INIT_00 => X"F6DB583FFF6B05E3567261F677ABB435A0C7E8A6F04A84D7CBBE3883833D2735",
      INIT_01 => X"255DE82D0C1F975D8AB40509F03CEA89724829C8F9853E905829E29126173FEA",
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
      INIT_00 => X"601E0958D8AE0F38888034578DB819DF0C6816C8616E643955633F70D69E49D8",
      INIT_01 => X"1CA22C8E5663490CB71316FBF7CF5E2A1D164C2858EF267DA3BD3584F1017A62",
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
      INIT_00 => X"5F836B5693D16BAB9BADB083FED340E12D3E5ABF540FA190C291E8582A26C560",
      INIT_01 => X"81A7745B8546CAF8AB178050F5BDE5F9337FDFDA4C965C41759CA2B0BE7F3584",
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

end GEN1727642574;

--- Mat:  0 --------------------------------------------------------------  0
-- Inp A= 10037 (0x2735)  B=-31939 (0x833D)  C= 18904 (0x49D8)
--     D=-10594 (0xD69E)  E=-15008 (0xC560)  F= 10790 (0x2A26)
-- Res m11=  -320571743 (0xECE476A1)        m12=  -161926283 (0xF6593375)
--     m21=  -265413090 (0xF02E1E1E)        m22=   -40475770 (0xFD966386)
--- Det -1219846768 (0xB74A9D90)
--- Mat:  1 --------------------------------------------------------------  1
-- Inp A= 14467 (0x3883)  B=-13378 (0xCBBE)  C= 16240 (0x3F70)
--     D= 21859 (0x5563)  E= -6056 (0xE858)  F=-15727 (0xC291)
-- Res m11=  -193539526 (0xF476D23A)        m12=    95257179 (0x05AD825B)
--     m21=  -509688422 (0xE19EC59A)        m22=    23848777 (0x016BE749)
--- Det -1493707060 (0xA6F7D6CC)
--- Mat:  2 --------------------------------------------------------------  2
-- Inp A=-31529 (0x84D7)  B= -4022 (0xF04A)  C= 25657 (0x6439)
--     D= 24942 (0x616E)  E=-24176 (0xA190)  F= 21519 (0x540F)
-- Res m11=   126809638 (0x078EF626)        m12=  -520274873 (0xE0FD3C47)
--     m21=  -203509178 (0xF3DEB246)        m22=  -130010237 (0xF8403383)
--- Det 1861725704 (0x6EF7AE08)
--- Mat:  3 --------------------------------------------------------------  3
-- Inp A= -5978 (0xE8A6)  B=-24377 (0xA0C7)  C=  5832 (0x16C8)
--     D=  3176 (0x0C68)  E= 23231 (0x5ABF)  F= 11582 (0x2D3E)
-- Res m11=   145725706 (0x08AF990A)        m12=   269055464 (0x100975E8)
--     m21=  -219588016 (0xF2E95A50)        m22=    67274368 (0x04028680)
--- Det -1519691648 (0xA56B5880)
--- Mat:  4 --------------------------------------------------------------  4
-- Inp A=-19403 (0xB435)  B= 30635 (0x77AB)  C=  6623 (0x19DF)
--     D=-29256 (0x8DB8)  E= 16609 (0x40E1)  F=  -301 (0xFED3)
-- Res m11=  -594410905 (0xDC920267)        m12=    -5018712 (0xFFB36BA8)
--     m21=  -693361955 (0xD6AC22DD)        m22=    -1272461 (0xFFEC9573)
--- Det -1981757635 (0x89E0C73D)
--- Mat:  5 --------------------------------------------------------------  5
-- Inp A= 25078 (0x61F6)  B= 22130 (0x5672)  C= 13399 (0x3457)
--     D=-30592 (0x8880)  E=-20349 (0xB083)  F=-25683 (0x9BAD)
-- Res m11=   554976140 (0x2114438C)        m12=   522648445 (0x1F26FB7D)
--     m21=  -380481090 (0xE95251BE)        m22=   130638648 (0x07C96338)
--- Det 669955802 (0x27EEB6DA)
--- Mat:  6 --------------------------------------------------------------  6
-- Inp A=  1507 (0x05E3)  B=  -149 (0xFF6B)  C=  3896 (0x0F38)
--     D=-10066 (0xD8AE)  E= 27563 (0x6BAB)  F=-27695 (0x93D1)
-- Res m11=     -224543 (0xFFFC92E1)        m12=  -763355778 (0xD2801D7E)
--     m21=      919330 (0x000E0722)        m22=  -190845492 (0xF49FEDCC)
--- Det 1816656784 (0x6C47FB90)
--- Mat:  7 --------------------------------------------------------------  7
-- Inp A= 22591 (0x583F)  B= -2341 (0xF6DB)  C=  2392 (0x0958)
--     D= 24606 (0x601E)  E= 27478 (0x6B56)  F= 24451 (0x5F83)
-- Res m11=   -52885531 (0xFCD907E5)        m12=   671887169 (0x280C2F41)
--     m21=   -63202318 (0xFC3B9BF2)        m22=   167993142 (0x0A035F36)
--- Det -850878756 (0xCD489EDC)
--- Mat:  8 --------------------------------------------------------------  8
-- Inp A= 16362 (0x3FEA)  B=  9751 (0x2617)  C= 31330 (0x7A62)
--     D= -3839 (0xF101)  E= 13700 (0x3584)  F=-16769 (0xBE7F)
-- Res m11=   159545862 (0x09827A06)        m12=  -229718938 (0xF24EC466)
--     m21=   268064741 (0x0FFA57E5)        m22=   -57406334 (0xFC940C82)
--- Det 446817742 (0x1AA1E5CE)
--- Mat:  9 --------------------------------------------------------------  9
-- Inp A= -7535 (0xE291)  B= 22569 (0x5829)  C= 13700 (0x3584)
--     D=-23619 (0xA3BD)  E=-23888 (0xA2B0)  F= 30108 (0x759C)
-- Res m11=  -170057415 (0xF5DD2139)        m12=  -719227439 (0xD52175D1)
--     m21=  -223861911 (0xF2A82369)        m22=  -179814895 (0xF5483E11)
--- Det -440001264 (0xE5C61D10)
--- Mat: 10 -------------------------------------------------------------- 10
-- Inp A= 16016 (0x3E90)  B= -1659 (0xF985)  C=  9853 (0x267D)
--     D= 22767 (0x58EF)  E= 23617 (0x5C41)  F= 19606 (0x4C96)
-- Res m11=   -26570544 (0xFE6A90D0)        m12=   463050918 (0x1B9998A6)
--     m21=   -54116580 (0xFCC63F1C)        m22=   115791345 (0x06E6D5F1)
--- Det -571615320 (0xDDEDD7A8)
--- Mat: 11 -------------------------------------------------------------- 11
-- Inp A= 10696 (0x29C8)  B= 29256 (0x7248)  C= 19496 (0x4C28)
--     D=  7446 (0x1D16)  E= -8230 (0xDFDA)  F= 13183 (0x337F)
-- Res m11=   312922176 (0x12A6D040)        m12=  -108485394 (0xF988A4EE)
--     m21=   788215152 (0x2EFB3570)        m22=   -27097081 (0xFE628807)
--- Det 1785349024 (0x6A6A43A0)
--- Mat: 12 -------------------------------------------------------------- 12
-- Inp A= -5495 (0xEA89)  B= -4036 (0xF03C)  C= 24106 (0x5E2A)
--     D= -2097 (0xF7CF)  E= -6663 (0xE5F9)  F= -2627 (0xF5BD)
-- Res m11=    22177820 (0x0152681C)        m12=    17498206 (0x010B005E)
--     m21=   -88828324 (0xFAB4965C)        m22=     4397934 (0x00431B6E)
--- Det -1586202048 (0xA1747A40)
--- Mat: 13 -------------------------------------------------------------- 13
-- Inp A=  1289 (0x0509)  B=-30028 (0x8AB4)  C=  5883 (0x16FB)
--     D=-18669 (0xB713)  E=-32688 (0x8050)  F=-21737 (0xAB17)
-- Res m11=   -38706092 (0xFDB16454)        m12=   710540345 (0x2A59FC39)
--     m21=   383938008 (0x16E26DD8)        m22=   177621978 (0x0A964BDA)
--- Det 1980298864 (0x7608F670)
--- Mat: 14 -------------------------------------------------------------- 14
-- Inp A=-26787 (0x975D)  B=  3103 (0x0C1F)  C= 18700 (0x490C)
--     D= 22115 (0x5663)  E=-13576 (0xCAF8)  F=-31418 (0x8546)
-- Res m11=   -83120061 (0xFB0BB043)        m12=   426503981 (0x196BEF2D)
--     m21=   126648945 (0x078C8271)        m22=   106673507 (0x065BB563)
--- Det -2092950516 (0x83401C0C)
--- Mat: 15 -------------------------------------------------------------- 15
-- Inp A= -6099 (0xE82D)  B=  9565 (0x255D)  C= 11406 (0x2C8E)
--     D=  7330 (0x1CA2)  E= 29787 (0x745B)  F=-32345 (0x81A7)
-- Res m11=   -58336935 (0xFC85D959)        m12=  -963466614 (0xC692AA8A)
--     m21=   179209840 (0x0AAE8670)        m22=  -240846393 (0xF1A4F9C7)
--- Det -1891849009 (0x8F3CACCF)



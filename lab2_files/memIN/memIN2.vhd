-----------------------------------------------------------------------------
-- Memory generated for 'Computing Determinants', PSD/DSD (2024/25)
-- Copyright (C) by Paulo Flores <paulo.flores@tecnico.ulisboa.pt>
-- Version: Ver. 1.0 2024-09-20
-- Command: dat2mem.pl 
-- Seed: -s 1727642500 ( dat2mem.pl  -s 1727642500 )
-- Date: 2024-09-29T21:41:40 WEST
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


architecture GEN1727642500 of MemIN is
  signal dout0,dout1,dout2: std_logic_vector(31 downto 0);
begin

  MEM_in0 : BRAM_SINGLE_MACRO
    generic map (          -- memory initialization
      BRAM_SIZE => "36Kb", -- Target BRAM, "18Kb" or "36Kb"
      DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
      WRITE_WIDTH => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH  => 32,   -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      -- Initialize memory predefined data
      INIT_00 => X"901C854F60390E36F0B542FCC1A1A0D624F6B0F95AD54FE2B2271DA7E5F5489C",
      INIT_01 => X"5627577A09268DEDD27F277D675F8AB95EAD4841A1C157C602942FB2BFC91444",
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
      INIT_00 => X"5BE2672D544F64BEC8303F1C3DF303EFE2047BD112D05FE14E6D69A02F792182",
      INIT_01 => X"C15C5BF3795A6990961A4AE3C8370405DE2207E828BB43C31CEB7B2E64AF6A92",
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
      INIT_00 => X"F9D3B7A6677A80CF58B18E74393F2BD0C4376A9E0786DB47A502A000D9C25F53",
      INIT_01 => X"AED38B7C52B3D7FD0F1F0BFA7EE9B22A813F755DA52FA0315F99CE456DDD8DAD",
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

end GEN1727642500;

--- Mat:  0 --------------------------------------------------------------  0
-- Inp A= 18588 (0x489C)  B= -6667 (0xE5F5)  C=  8578 (0x2182)
--     D= 12153 (0x2F79)  E= 24403 (0x5F53)  F= -9790 (0xD9C2)
-- Res m11=  -123926196 (0xF89D094C)        m12=  -238886782 (0xF1C2E082)
--     m21=  -138213577 (0xF7C30737)        m22=   -59705612 (0xFC70F6F4)
--- Det 131340930 (0x07D41A82)
--- Mat:  1 --------------------------------------------------------------  1
-- Inp A=  7591 (0x1DA7)  B=-19929 (0xB227)  C= 27040 (0x69A0)
--     D= 20077 (0x4E6D)  E=-24576 (0xA000)  F=-23294 (0xA502)
-- Res m11=  -151281039 (0xF6FBA271)        m12=   572480935 (0x221F5DA7)
--     m21=  -938994693 (0xC80813FB)        m22=   143165453 (0x0888880D)
--- Det -550563840 (0xDF2F1000)
--- Mat:  2 --------------------------------------------------------------  2
-- Inp A= 20450 (0x4FE2)  B= 23253 (0x5AD5)  C= 24545 (0x5FE1)
--     D=  4816 (0x12D0)  E= -9401 (0xDB47)  F=  1926 (0x0786)
-- Res m11=   475523850 (0x1C57EB0A)        m12=   -18085876 (0xFEEC080C)
--     m21=   682731333 (0x28B1A745)        m22=    -4497221 (0xFFBB60BB)
--- Det 864055570 (0x33807112)
--- Mat:  3 --------------------------------------------------------------  3
-- Inp A=-20231 (0xB0F9)  B=  9462 (0x24F6)  C= 31697 (0x7BD1)
--     D= -7676 (0xE204)  E= 27294 (0x6A9E)  F=-15305 (0xC437)
-- Res m11=  -191425722 (0xF4971346)        m12=  -417754901 (0xE71990EB)
--     m21=   227286702 (0x0D8C1EAE)        m22=  -104409647 (0xF9C6D5D1)
--- Det 514060396 (0x1EA3F06C)
--- Mat:  4 --------------------------------------------------------------  4
-- Inp A=-24362 (0xA0D6)  B=-15967 (0xC1A1)  C=  1007 (0x03EF)
--     D= 15859 (0x3DF3)  E= 11216 (0x2BD0)  F= 14655 (0x393F)
-- Res m11=   388988054 (0x172F7C96)        m12=   164346118 (0x09CBB906)
--     m21=  -269299422 (0xEFF2D122)        m22=    41109486 (0x027347EE)
--- Det -1135807320 (0xBC4CF4A8)
--- Mat:  5 --------------------------------------------------------------  5
-- Inp A= 17148 (0x42FC)  B= -3915 (0xF0B5)  C= 16156 (0x3F1C)
--     D=-14288 (0xC830)  E=-29068 (0x8E74)  F= 22705 (0x58B1)
-- Res m11=   -67134420 (0xFBFF9C2C)        m12=  -659971792 (0xD8A9A130)
--     m21=    -7313220 (0xFF9068BC)        m22=  -164995367 (0xF62A5ED9)
--- Det -584209908 (0xDD2DAA0C)
--- Mat:  6 --------------------------------------------------------------  6
-- Inp A=  3638 (0x0E36)  B= 24633 (0x6039)  C= 25790 (0x64BE)
--     D= 21583 (0x544F)  E=-32561 (0x80CF)  F= 26490 (0x677A)
-- Res m11=    89614854 (0x05576A06)        m12=  -862537252 (0xCC96B9DC)
--     m21=  1166939109 (0x458E13E5)        m22=  -215587850 (0xF32663F6)
--- Det -935551496 (0xC83C9DF8)
--- Mat:  7 --------------------------------------------------------------  7
-- Inp A=-31409 (0x854F)  B=-28644 (0x901C)  C= 26413 (0x672D)
--     D= 23522 (0x5BE2)  E=-18522 (0xB7A6)  F= -1581 (0xF9D3)
-- Res m11=   899679396 (0x35A004A4)        m12=    29251873 (0x01BE5921)
--     m21= -1430338140 (0xAABEC5A4)        m22=     7370755 (0x00707803)
--- Det 29847496 (0x01C76FC8)
--- Mat:  8 --------------------------------------------------------------  8
-- Inp A=  5188 (0x1444)  B=-16439 (0xBFC9)  C= 27282 (0x6A92)
--     D= 25775 (0x64AF)  E=-29267 (0x8DAD)  F= 28125 (0x6DDD)
-- Res m11=   -85285532 (0xFAEAA564)        m12=  -823129187 (0xCEF00B9D)
--     m21=  -872204023 (0xCC033909)        m22=  -205730537 (0xF3BCCD17)
--- Det -619146633 (0xDB189277)
--- Mat:  9 --------------------------------------------------------------  9
-- Inp A= 12210 (0x2FB2)  B=   660 (0x0294)  C= 31534 (0x7B2E)
--     D=  7403 (0x1CEB)  E=-12731 (0xCE45)  F= 24473 (0x5F99)
-- Res m11=     8058600 (0x007AF6E8)        m12=  -311553553 (0xED6E11EF)
--     m21=    25698420 (0x01882074)        m22=   -77852504 (0xFB5C10A8)
--- Det 1701480436 (0x656A87F4)
--- Mat: 10 -------------------------------------------------------------- 10
-- Inp A= 22470 (0x57C6)  B=-24127 (0xA1C1)  C= 17347 (0x43C3)
--     D= 10427 (0x28BB)  E=-24527 (0xA031)  F=-23249 (0xA52F)
-- Res m11=  -542133690 (0xDFAFB246)        m12=   570250693 (0x21FD55C5)
--     m21=  -670103298 (0xD80F08FE)        m22=   142584829 (0x087FABFD)
--- Det 719171512 (0x2ADDAFB8)
--- Mat: 11 -------------------------------------------------------------- 11
-- Inp A= 18497 (0x4841)  B= 24237 (0x5EAD)  C=  2024 (0x07E8)
--     D= -8670 (0xDE22)  E= 30045 (0x755D)  F=-32449 (0x813F)
-- Res m11=   448311789 (0x1AB8B1ED)        m12=  -974911708 (0xC5E40724)
--     m21=  -161079102 (0xF66620C2)        m22=  -243739198 (0xF178D5C2)
--- Det -2012275374 (0x880F1D52)
--- Mat: 12 -------------------------------------------------------------- 12
-- Inp A=-30023 (0x8AB9)  B= 26463 (0x675F)  C=  1029 (0x0405)
--     D=-14281 (0xC837)  E=-19926 (0xB22A)  F= 32489 (0x7EE9)
-- Res m11=  -794498649 (0xD0A4E9A7)        m12=  -647405837 (0xD9695EF3)
--     m21=  -350687676 (0xEB18EE44)        m22=  -161857206 (0xF65A414A)
--- Det 531222202 (0x1FA9CEBA)
--- Mat: 13 -------------------------------------------------------------- 13
-- Inp A= 10109 (0x277D)  B=-11649 (0xD27F)  C= 19171 (0x4AE3)
--     D=-27110 (0x961A)  E=  3066 (0x0BFA)  F=  3871 (0x0F1F)
-- Res m11=  -117759741 (0xF8FB2103)        m12=    11878595 (0x00B540C3)
--     m21=    92481411 (0x05832783)        m22=     2959182 (0x002D274E)
--- Det -5526751 (0xFFABAB21)
--- Mat: 14 -------------------------------------------------------------- 14
-- Inp A=-29203 (0x8DED)  B=  2342 (0x0926)  C= 27024 (0x6990)
--     D= 31066 (0x795A)  E=-10243 (0xD7FD)  F= 21171 (0x52B3)
-- Res m11=   -68393426 (0xFBEC662E)        m12=  -216883756 (0xF3129DD4)
--     m21=   136046780 (0x081BE8BC)        m22=   -54155549 (0xFCC5A6E3)
--- Det -264870118 (0xF036671A)
--- Mat: 15 -------------------------------------------------------------- 15
-- Inp A= 22394 (0x577A)  B= 22055 (0x5627)  C= 23539 (0x5BF3)
--     D=-16036 (0xC15C)  E=-29828 (0x8B7C)  F=-20781 (0xAED3)
-- Res m11=   493899670 (0x1D704F96)        m12=   619878062 (0x24F296AE)
--     m21=   165478665 (0x09DD0109)        m22=   154971420 (0x093CAD1C)
--- Det -1713039286 (0x99E5184A)



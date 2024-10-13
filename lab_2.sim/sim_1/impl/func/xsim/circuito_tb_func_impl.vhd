-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Oct 11 16:33:57 2024
-- Host        : Jaime running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/minde/Ambiente de Trabalho/Proj
--               SD/LAB/2/lab_2/lab_2.sim/sim_1/impl/func/xsim/circuito_tb_func_impl.vhd}
-- Design      : circuito
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity control is
  port (
    CEP : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \counterMEMin_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \counterMEMout_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_currstate_reg[3]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    en2_internal : out STD_LOGIC;
    en3_internal : out STD_LOGIC;
    done_OBUF : out STD_LOGIC;
    p_0_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mux4_sg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \R3_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \R3_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \R3_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \R3_reg[27]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RSTP : in STD_LOGIC;
    P : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \mult1_res_64__0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mult1_res_64 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mult1_res_64_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \mult1_res_64__1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    C : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ramb_bl.ramb36_sin_bl.ram36_bl\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \A__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    lopt : out STD_LOGIC;
    pwropt : out STD_LOGIC
  );
end control;

architecture STRUCTURE of control is
  signal \FSM_onehot_currstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_currstate[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_currstate[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_currstate_reg[6]_lopt_replica_1\ : STD_LOGIC;
  signal \FSM_onehot_currstate_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_currstate_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_currstate_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_currstate_reg_n_0_[8]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal counterMEMin_reg : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^countermemin_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal counterMEMout : STD_LOGIC;
  signal \counterMEMout[3]_i_1_n_0\ : STD_LOGIC;
  signal \^countermemout_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal done_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal \^en2_internal\ : STD_LOGIC;
  signal \^en3_internal\ : STD_LOGIC;
  signal \mux10_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \p_0_out__0\ : STD_LOGIC_VECTOR ( 30 downto 15 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_currstate_reg[1]\ : label is "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currstate_reg[2]\ : label is "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currstate_reg[3]\ : label is "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currstate_reg[4]\ : label is "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currstate_reg[5]\ : label is "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currstate_reg[6]\ : label is "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currstate_reg[6]_lopt_replica\ : label is "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000";
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of \FSM_onehot_currstate_reg[6]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \FSM_onehot_currstate_reg[6]_lopt_replica\ : label is "SWEEP";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currstate_reg[7]\ : label is "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currstate_reg[8]\ : label is "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counterMEMin[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counterMEMin[1]_i_1\ : label is "soft_lutpair6";
  attribute \PinAttr:I0:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I0:HOLD_DETOUR\ of \counterMEMin[3]_i_1\ : label is 155;
  attribute SOFT_HLUTNM of \counterMEMin[3]_i_1\ : label is "soft_lutpair2";
  attribute \PinAttr:I2:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I2:HOLD_DETOUR\ of \counterMEMin[4]_i_1\ : label is 155;
  attribute SOFT_HLUTNM of \counterMEMin[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counterMEMout[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counterMEMout[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counterMEMout[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counterMEMout[3]_i_2\ : label is "soft_lutpair3";
  attribute PHYS_OPT_MODIFIED : string;
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_10\ : label is "PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_11\ : label is "PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_12\ : label is "PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_14\ : label is "PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_15\ : label is "PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_16\ : label is "PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_17\ : label is "PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_18\ : label is "PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_3\ : label is "PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_4\ : label is "PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_5\ : label is "PLACEMENT_OPT PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_6\ : label is "PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_7\ : label is "PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_8\ : label is "PIN_SWAP";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64__0_i_9\ : label is "PIN_SWAP";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \counterMEMin_reg[3]_0\(3 downto 0) <= \^countermemin_reg[3]_0\(3 downto 0);
  \counterMEMout_reg[3]_0\(3 downto 0) <= \^countermemout_reg[3]_0\(3 downto 0);
  en2_internal <= \^en2_internal\;
  en3_internal <= \^en3_internal\;
  lopt <= \FSM_onehot_currstate_reg[6]_lopt_replica_1\;
  pwropt <= \counterMEMout[3]_i_1_n_0\;
\FSM_onehot_currstate[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE00"
    )
        port map (
      I0 => \^countermemin_reg[3]_0\(2),
      I1 => \^countermemin_reg[3]_0\(3),
      I2 => \FSM_onehot_currstate[2]_i_2_n_0\,
      I3 => counterMEMout,
      I4 => \FSM_onehot_currstate_reg_n_0_[1]\,
      O => \FSM_onehot_currstate[2]_i_1_n_0\
    );
\FSM_onehot_currstate[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => counterMEMin_reg(4),
      I1 => \^countermemin_reg[3]_0\(0),
      I2 => \^countermemin_reg[3]_0\(1),
      O => \FSM_onehot_currstate[2]_i_2_n_0\
    );
\FSM_onehot_currstate[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000200"
    )
        port map (
      I0 => counterMEMin_reg(4),
      I1 => \^countermemin_reg[3]_0\(0),
      I2 => \^countermemin_reg[3]_0\(1),
      I3 => counterMEMout,
      I4 => done_OBUF_inst_i_2_n_0,
      I5 => \FSM_onehot_currstate_reg_n_0_[8]\,
      O => \FSM_onehot_currstate[8]_i_1_n_0\
    );
\FSM_onehot_currstate_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      Q => \FSM_onehot_currstate_reg_n_0_[1]\,
      S => RSTP
    );
\FSM_onehot_currstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_currstate[2]_i_1_n_0\,
      Q => \^q\(0),
      R => RSTP
    );
\FSM_onehot_currstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \^q\(0),
      Q => \^q\(1),
      R => RSTP
    );
\FSM_onehot_currstate_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \^q\(1),
      Q => \FSM_onehot_currstate_reg_n_0_[4]\,
      R => RSTP
    );
\FSM_onehot_currstate_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_currstate_reg_n_0_[4]\,
      Q => \FSM_onehot_currstate_reg_n_0_[5]\,
      R => RSTP
    );
\FSM_onehot_currstate_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_currstate_reg_n_0_[5]\,
      Q => \^q\(2),
      R => RSTP
    );
\FSM_onehot_currstate_reg[6]_lopt_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_currstate_reg_n_0_[5]\,
      Q => \FSM_onehot_currstate_reg[6]_lopt_replica_1\,
      R => RSTP
    );
\FSM_onehot_currstate_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \^q\(2),
      Q => counterMEMout,
      R => RSTP
    );
\FSM_onehot_currstate_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_currstate[8]_i_1_n_0\,
      Q => \FSM_onehot_currstate_reg_n_0_[8]\,
      R => RSTP
    );
\R1[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      O => E(0)
    );
\R2[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      O => \^en2_internal\
    );
\R3[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \^en3_internal\
    );
R4_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => CEP
    );
\counterMEMin[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^countermemin_reg[3]_0\(0),
      O => plusOp(0)
    );
\counterMEMin[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^countermemin_reg[3]_0\(0),
      I1 => \^countermemin_reg[3]_0\(1),
      O => plusOp(1)
    );
\counterMEMin[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^countermemin_reg[3]_0\(0),
      I1 => \^countermemin_reg[3]_0\(1),
      I2 => \^countermemin_reg[3]_0\(2),
      O => plusOp(2)
    );
\counterMEMin[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^countermemin_reg[3]_0\(1),
      I1 => \^countermemin_reg[3]_0\(0),
      I2 => \^countermemin_reg[3]_0\(2),
      I3 => \^countermemin_reg[3]_0\(3),
      O => plusOp(3)
    );
\counterMEMin[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^countermemin_reg[3]_0\(2),
      I1 => \^countermemin_reg[3]_0\(0),
      I2 => \^countermemin_reg[3]_0\(1),
      I3 => \^countermemin_reg[3]_0\(3),
      I4 => counterMEMin_reg(4),
      O => plusOp(4)
    );
\counterMEMin_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^q\(2),
      D => plusOp(0),
      Q => \^countermemin_reg[3]_0\(0),
      R => RSTP
    );
\counterMEMin_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^q\(2),
      D => plusOp(1),
      Q => \^countermemin_reg[3]_0\(1),
      R => RSTP
    );
\counterMEMin_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^q\(2),
      D => plusOp(2),
      Q => \^countermemin_reg[3]_0\(2),
      R => RSTP
    );
\counterMEMin_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^q\(2),
      D => plusOp(3),
      Q => \^countermemin_reg[3]_0\(3),
      R => RSTP
    );
\counterMEMin_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^q\(2),
      D => plusOp(4),
      Q => counterMEMin_reg(4),
      R => RSTP
    );
\counterMEMout[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^countermemout_reg[3]_0\(0),
      O => \plusOp__0\(0)
    );
\counterMEMout[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^countermemout_reg[3]_0\(0),
      I1 => \^countermemout_reg[3]_0\(1),
      O => \plusOp__0\(1)
    );
\counterMEMout[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^countermemout_reg[3]_0\(0),
      I1 => \^countermemout_reg[3]_0\(1),
      I2 => \^countermemout_reg[3]_0\(2),
      O => \plusOp__0\(2)
    );
\counterMEMout[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterMEMout,
      I1 => RSTP,
      O => \counterMEMout[3]_i_1_n_0\
    );
\counterMEMout[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^countermemout_reg[3]_0\(1),
      I1 => \^countermemout_reg[3]_0\(0),
      I2 => \^countermemout_reg[3]_0\(2),
      I3 => \^countermemout_reg[3]_0\(3),
      O => \plusOp__0\(3)
    );
\counterMEMout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counterMEMout[3]_i_1_n_0\,
      D => \plusOp__0\(0),
      Q => \^countermemout_reg[3]_0\(0),
      R => '0'
    );
\counterMEMout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counterMEMout[3]_i_1_n_0\,
      D => \plusOp__0\(1),
      Q => \^countermemout_reg[3]_0\(1),
      R => '0'
    );
\counterMEMout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counterMEMout[3]_i_1_n_0\,
      D => \plusOp__0\(2),
      Q => \^countermemout_reg[3]_0\(2),
      R => '0'
    );
\counterMEMout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counterMEMout[3]_i_1_n_0\,
      D => \plusOp__0\(3),
      Q => \^countermemout_reg[3]_0\(3),
      R => '0'
    );
done_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => done_OBUF_inst_i_2_n_0,
      I1 => \^countermemin_reg[3]_0\(1),
      I2 => \^countermemin_reg[3]_0\(0),
      I3 => counterMEMout,
      I4 => counterMEMin_reg(4),
      I5 => \FSM_onehot_currstate_reg_n_0_[8]\,
      O => done_OBUF
    );
done_OBUF_inst_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^countermemin_reg[3]_0\(3),
      I1 => \^countermemin_reg[3]_0\(2),
      O => done_OBUF_inst_i_2_n_0
    );
\mult1_res_64__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(16),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(16)
    );
\mult1_res_64__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(9),
      I1 => mult1_res_64_0(9),
      I2 => \mult1_res_64__0\(9),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(9)
    );
\mult1_res_64__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(8),
      I1 => mult1_res_64_0(8),
      I2 => \mult1_res_64__0\(8),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(8)
    );
\mult1_res_64__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(7),
      I1 => mult1_res_64_0(7),
      I2 => \mult1_res_64__0\(7),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(7)
    );
\mult1_res_64__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(6),
      I1 => mult1_res_64_0(6),
      I2 => \mult1_res_64__0\(6),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(6)
    );
\mult1_res_64__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(5),
      I1 => mult1_res_64_0(5),
      I2 => \mult1_res_64__0\(5),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(5)
    );
\mult1_res_64__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(4),
      I1 => mult1_res_64_0(4),
      I2 => \mult1_res_64__0\(4),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(4)
    );
\mult1_res_64__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(3),
      I1 => mult1_res_64_0(3),
      I2 => \mult1_res_64__0\(3),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(3)
    );
\mult1_res_64__0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(2),
      I1 => mult1_res_64_0(2),
      I2 => \mult1_res_64__0\(2),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(2)
    );
\mult1_res_64__0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(1),
      I1 => mult1_res_64_0(1),
      I2 => \mult1_res_64__0\(1),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(1)
    );
\mult1_res_64__0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(0),
      I1 => mult1_res_64_0(0),
      I2 => \mult1_res_64__0\(0),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(0)
    );
\mult1_res_64__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(15),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(15)
    );
\mult1_res_64__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(16),
      I2 => mult1_res_64_0(16),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(16)
    );
\mult1_res_64__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(15),
      I2 => mult1_res_64_0(15),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(15)
    );
\mult1_res_64__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(14),
      I1 => mult1_res_64_0(14),
      I2 => \mult1_res_64__0\(14),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(14)
    );
\mult1_res_64__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(13),
      I1 => mult1_res_64_0(13),
      I2 => \mult1_res_64__0\(13),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(13)
    );
\mult1_res_64__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(12),
      I1 => mult1_res_64_0(12),
      I2 => \mult1_res_64__0\(12),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(12)
    );
\mult1_res_64__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(11),
      I1 => mult1_res_64_0(11),
      I2 => \mult1_res_64__0\(11),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(11)
    );
\mult1_res_64__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0AAAAAACC"
    )
        port map (
      I0 => mult1_res_64(10),
      I1 => mult1_res_64_0(10),
      I2 => \mult1_res_64__0\(10),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(10)
    );
\mult1_res_64__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(31),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(31)
    );
\mult1_res_64__1_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(22),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(22)
    );
\mult1_res_64__1_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(21),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(21)
    );
\mult1_res_64__1_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(20),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(20)
    );
\mult1_res_64__1_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(19),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(19)
    );
\mult1_res_64__1_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(18),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(18)
    );
\mult1_res_64__1_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(17),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(17)
    );
\mult1_res_64__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(30),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(30)
    );
\mult1_res_64__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(29),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(29)
    );
\mult1_res_64__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(28),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(28)
    );
\mult1_res_64__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(27),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(27)
    );
\mult1_res_64__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(26),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(26)
    );
\mult1_res_64__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(25),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(25)
    );
\mult1_res_64__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(24),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(24)
    );
\mult1_res_64__1_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAC"
    )
        port map (
      I0 => \mult1_res_64__1\(23),
      I1 => \mult1_res_64__0\(31),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      O => mux4_sg(23)
    );
mult1_res_64_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(14),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(30),
      O => mux4_sg(14)
    );
mult1_res_64_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(5),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(21),
      O => mux4_sg(5)
    );
mult1_res_64_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(4),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(20),
      O => mux4_sg(4)
    );
mult1_res_64_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(3),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(19),
      O => mux4_sg(3)
    );
mult1_res_64_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(2),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(18),
      O => mux4_sg(2)
    );
mult1_res_64_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(1),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(17),
      O => mux4_sg(1)
    );
mult1_res_64_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(0),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(16),
      O => mux4_sg(0)
    );
mult1_res_64_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(31),
      I2 => mult1_res_64_0(31),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(31)
    );
mult1_res_64_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(30),
      I2 => mult1_res_64_0(30),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(30)
    );
mult1_res_64_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(29),
      I2 => mult1_res_64_0(29),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(29)
    );
mult1_res_64_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(28),
      I2 => mult1_res_64_0(28),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(28)
    );
mult1_res_64_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(13),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(29),
      O => mux4_sg(13)
    );
mult1_res_64_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(27),
      I2 => mult1_res_64_0(27),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(27)
    );
mult1_res_64_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(26),
      I2 => mult1_res_64_0(26),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(26)
    );
mult1_res_64_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(25),
      I2 => mult1_res_64_0(25),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(25)
    );
mult1_res_64_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(24),
      I2 => mult1_res_64_0(24),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(24)
    );
mult1_res_64_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(23),
      I2 => mult1_res_64_0(23),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(23)
    );
mult1_res_64_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(22),
      I2 => mult1_res_64_0(22),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(22)
    );
mult1_res_64_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(21),
      I2 => mult1_res_64_0(21),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(21)
    );
mult1_res_64_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(20),
      I2 => mult1_res_64_0(20),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(20)
    );
mult1_res_64_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(19),
      I2 => mult1_res_64_0(19),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(19)
    );
mult1_res_64_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(18),
      I2 => mult1_res_64_0(18),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(18)
    );
mult1_res_64_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(12),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(28),
      O => mux4_sg(12)
    );
mult1_res_64_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AACCCCCCF0"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => mult1_res_64(17),
      I2 => mult1_res_64_0(17),
      I3 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_0_out(17)
    );
mult1_res_64_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(11),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(27),
      O => mux4_sg(11)
    );
mult1_res_64_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(10),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(26),
      O => mux4_sg(10)
    );
mult1_res_64_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(9),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(25),
      O => mux4_sg(9)
    );
mult1_res_64_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(8),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(24),
      O => mux4_sg(8)
    );
mult1_res_64_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(7),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(23),
      O => mux4_sg(7)
    );
mult1_res_64_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \mult1_res_64__1\(6),
      I1 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I2 => \FSM_onehot_currstate_reg_n_0_[5]\,
      I3 => \mult1_res_64__0\(22),
      O => mux4_sg(6)
    );
\mux10_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(8),
      I2 => P(6),
      I3 => DOADO(7),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(6)
    );
\mux10_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(7),
      I2 => P(5),
      I3 => DOADO(6),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(5)
    );
\mux10_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(6),
      I2 => P(4),
      I3 => DOADO(5),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(4)
    );
\mux10_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(9),
      I2 => P(7),
      I3 => DOADO(8),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(7)
    );
\mux10_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(12),
      I2 => P(10),
      I3 => DOADO(11),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(10)
    );
\mux10_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(11),
      I2 => P(9),
      I3 => DOADO(10),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(9)
    );
\mux10_carry__1_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(10),
      I2 => P(8),
      I3 => DOADO(9),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(8)
    );
\mux10_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(13),
      I2 => P(11),
      I3 => DOADO(12),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(11)
    );
\mux10_carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(17),
      I2 => P(15),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(15)
    );
\mux10_carry__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(16),
      I2 => P(14),
      I3 => DOADO(15),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(14)
    );
\mux10_carry__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(15),
      I2 => P(13),
      I3 => DOADO(14),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(13)
    );
\mux10_carry__2_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(14),
      I2 => P(12),
      I3 => DOADO(13),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(12)
    );
\mux10_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(15),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(15),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(15),
      O => \R3_reg[15]\(0)
    );
\mux10_carry__2_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002C0020"
    )
        port map (
      I0 => \mult1_res_64__0\(15),
      I1 => \^q\(0),
      I2 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I3 => \^q\(1),
      I4 => DOADO(0),
      O => \mux10_carry__2_i_9_n_0\
    );
\mux10_carry__3_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(20),
      I2 => P(18),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(18)
    );
\mux10_carry__3_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(19),
      I2 => P(17),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(17)
    );
\mux10_carry__3_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(18),
      I2 => P(16),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(16)
    );
\mux10_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(19),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(19),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(19),
      O => \R3_reg[19]\(3)
    );
\mux10_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(18),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(18),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(18),
      O => \R3_reg[19]\(2)
    );
\mux10_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(17),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(17),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(17),
      O => \R3_reg[19]\(1)
    );
\mux10_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(16),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(16),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(16),
      O => \R3_reg[19]\(0)
    );
\mux10_carry__3_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(21),
      I2 => P(19),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(19)
    );
\mux10_carry__4_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(24),
      I2 => P(22),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(22)
    );
\mux10_carry__4_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(23),
      I2 => P(21),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(21)
    );
\mux10_carry__4_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(22),
      I2 => P(20),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(20)
    );
\mux10_carry__4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(23),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(23),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(23),
      O => \R3_reg[23]\(3)
    );
\mux10_carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(22),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(22),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(22),
      O => \R3_reg[23]\(2)
    );
\mux10_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(21),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(21),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(21),
      O => \R3_reg[23]\(1)
    );
\mux10_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(20),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(20),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(20),
      O => \R3_reg[23]\(0)
    );
\mux10_carry__4_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(25),
      I2 => P(23),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(23)
    );
\mux10_carry__5_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(28),
      I2 => P(26),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(26)
    );
\mux10_carry__5_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(27),
      I2 => P(25),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(25)
    );
\mux10_carry__5_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(26),
      I2 => P(24),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(24)
    );
\mux10_carry__5_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(27),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(27),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(27),
      O => \R3_reg[27]\(3)
    );
\mux10_carry__5_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(26),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(26),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(26),
      O => \R3_reg[27]\(2)
    );
\mux10_carry__5_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(25),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(25),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(25),
      O => \R3_reg[27]\(1)
    );
\mux10_carry__5_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(24),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(24),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(24),
      O => \R3_reg[27]\(0)
    );
\mux10_carry__5_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(29),
      I2 => P(27),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(27)
    );
\mux10_carry__6_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(31),
      I2 => P(29),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(29)
    );
\mux10_carry__6_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(30),
      I2 => P(28),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(28)
    );
\mux10_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96969696969695A6"
    )
        port map (
      I0 => \A__0\(0),
      I1 => \^q\(2),
      I2 => P(31),
      I3 => DOADO(16),
      I4 => \^q\(1),
      I5 => \FSM_onehot_currstate_reg_n_0_[4]\,
      O => S(3)
    );
\mux10_carry__6_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(30),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(30),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(30),
      O => S(2)
    );
\mux10_carry__6_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(29),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(29),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(29),
      O => S(1)
    );
\mux10_carry__6_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007C7FFFFF8380"
    )
        port map (
      I0 => mult1_res_64(28),
      I1 => \^en3_internal\,
      I2 => \^en2_internal\,
      I3 => mult1_res_64_0(28),
      I4 => \mux10_carry__2_i_9_n_0\,
      I5 => \p_0_out__0\(28),
      O => S(0)
    );
\mux10_carry__6_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(31),
      I2 => P(30),
      I3 => DOADO(16),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \p_0_out__0\(30)
    );
mux10_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(4),
      I2 => P(2),
      I3 => DOADO(3),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(2)
    );
mux10_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(3),
      I2 => P(1),
      I3 => DOADO(2),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(1)
    );
mux10_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(2),
      I2 => P(0),
      I3 => DOADO(1),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(0)
    );
mux10_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27272727D8D8DD88"
    )
        port map (
      I0 => \^q\(1),
      I1 => P(5),
      I2 => P(3),
      I3 => DOADO(4),
      I4 => \FSM_onehot_currstate_reg_n_0_[4]\,
      I5 => \^q\(2),
      O => \FSM_onehot_currstate_reg[3]_0\(3)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => C(3),
      I1 => \^q\(1),
      I2 => \ramb_bl.ramb36_sin_bl.ram36_bl\(3),
      O => D(3)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => C(2),
      I1 => \^q\(1),
      I2 => \ramb_bl.ramb36_sin_bl.ram36_bl\(2),
      O => D(2)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => C(1),
      I1 => \^q\(1),
      I2 => \ramb_bl.ramb36_sin_bl.ram36_bl\(1),
      O => D(1)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => C(0),
      I1 => \^q\(1),
      I2 => \ramb_bl.ramb36_sin_bl.ram36_bl\(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity datapath is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    C : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_currstate_reg[3]\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \R3_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \R1_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \R2_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mux4_sg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_0_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    A : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \R2_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \R2_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \R2_reg[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \R2_reg[19]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \R2_reg[23]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \R2_reg[27]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \R2_reg[31]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RSTP : in STD_LOGIC;
    en3_internal : in STD_LOGIC;
    \R3_reg[31]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CEP : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en2_internal : in STD_LOGIC
  );
end datapath;

architecture STRUCTURE of datapath is
  signal \^c\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^fsm_onehot_currstate_reg[3]\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \mult1_res_64__0_n_106\ : STD_LOGIC;
  signal \mult1_res_64__0_n_107\ : STD_LOGIC;
  signal \mult1_res_64__0_n_108\ : STD_LOGIC;
  signal \mult1_res_64__0_n_109\ : STD_LOGIC;
  signal \mult1_res_64__0_n_110\ : STD_LOGIC;
  signal \mult1_res_64__0_n_111\ : STD_LOGIC;
  signal \mult1_res_64__0_n_112\ : STD_LOGIC;
  signal \mult1_res_64__0_n_113\ : STD_LOGIC;
  signal \mult1_res_64__0_n_114\ : STD_LOGIC;
  signal \mult1_res_64__0_n_115\ : STD_LOGIC;
  signal \mult1_res_64__0_n_116\ : STD_LOGIC;
  signal \mult1_res_64__0_n_117\ : STD_LOGIC;
  signal \mult1_res_64__0_n_118\ : STD_LOGIC;
  signal \mult1_res_64__0_n_119\ : STD_LOGIC;
  signal \mult1_res_64__0_n_120\ : STD_LOGIC;
  signal \mult1_res_64__0_n_121\ : STD_LOGIC;
  signal \mult1_res_64__0_n_122\ : STD_LOGIC;
  signal \mult1_res_64__0_n_123\ : STD_LOGIC;
  signal \mult1_res_64__0_n_124\ : STD_LOGIC;
  signal \mult1_res_64__0_n_125\ : STD_LOGIC;
  signal \mult1_res_64__0_n_126\ : STD_LOGIC;
  signal \mult1_res_64__0_n_127\ : STD_LOGIC;
  signal \mult1_res_64__0_n_128\ : STD_LOGIC;
  signal \mult1_res_64__0_n_129\ : STD_LOGIC;
  signal \mult1_res_64__0_n_130\ : STD_LOGIC;
  signal \mult1_res_64__0_n_131\ : STD_LOGIC;
  signal \mult1_res_64__0_n_132\ : STD_LOGIC;
  signal \mult1_res_64__0_n_133\ : STD_LOGIC;
  signal \mult1_res_64__0_n_134\ : STD_LOGIC;
  signal \mult1_res_64__0_n_135\ : STD_LOGIC;
  signal \mult1_res_64__0_n_136\ : STD_LOGIC;
  signal \mult1_res_64__0_n_137\ : STD_LOGIC;
  signal \mult1_res_64__0_n_138\ : STD_LOGIC;
  signal \mult1_res_64__0_n_139\ : STD_LOGIC;
  signal \mult1_res_64__0_n_140\ : STD_LOGIC;
  signal \mult1_res_64__0_n_141\ : STD_LOGIC;
  signal \mult1_res_64__0_n_142\ : STD_LOGIC;
  signal \mult1_res_64__0_n_143\ : STD_LOGIC;
  signal \mult1_res_64__0_n_144\ : STD_LOGIC;
  signal \mult1_res_64__0_n_145\ : STD_LOGIC;
  signal \mult1_res_64__0_n_146\ : STD_LOGIC;
  signal \mult1_res_64__0_n_147\ : STD_LOGIC;
  signal \mult1_res_64__0_n_148\ : STD_LOGIC;
  signal \mult1_res_64__0_n_149\ : STD_LOGIC;
  signal \mult1_res_64__0_n_150\ : STD_LOGIC;
  signal \mult1_res_64__0_n_151\ : STD_LOGIC;
  signal \mult1_res_64__0_n_152\ : STD_LOGIC;
  signal \mult1_res_64__0_n_153\ : STD_LOGIC;
  signal \mult1_res_64__0_n_24\ : STD_LOGIC;
  signal \mult1_res_64__0_n_25\ : STD_LOGIC;
  signal \mult1_res_64__0_n_26\ : STD_LOGIC;
  signal \mult1_res_64__0_n_27\ : STD_LOGIC;
  signal \mult1_res_64__0_n_28\ : STD_LOGIC;
  signal \mult1_res_64__0_n_29\ : STD_LOGIC;
  signal \mult1_res_64__0_n_30\ : STD_LOGIC;
  signal \mult1_res_64__0_n_31\ : STD_LOGIC;
  signal \mult1_res_64__0_n_32\ : STD_LOGIC;
  signal \mult1_res_64__0_n_33\ : STD_LOGIC;
  signal \mult1_res_64__0_n_34\ : STD_LOGIC;
  signal \mult1_res_64__0_n_35\ : STD_LOGIC;
  signal \mult1_res_64__0_n_36\ : STD_LOGIC;
  signal \mult1_res_64__0_n_37\ : STD_LOGIC;
  signal \mult1_res_64__0_n_38\ : STD_LOGIC;
  signal \mult1_res_64__0_n_39\ : STD_LOGIC;
  signal \mult1_res_64__0_n_40\ : STD_LOGIC;
  signal \mult1_res_64__0_n_41\ : STD_LOGIC;
  signal \mult1_res_64__0_n_42\ : STD_LOGIC;
  signal \mult1_res_64__0_n_43\ : STD_LOGIC;
  signal \mult1_res_64__0_n_44\ : STD_LOGIC;
  signal \mult1_res_64__0_n_45\ : STD_LOGIC;
  signal \mult1_res_64__0_n_46\ : STD_LOGIC;
  signal \mult1_res_64__0_n_47\ : STD_LOGIC;
  signal \mult1_res_64__0_n_48\ : STD_LOGIC;
  signal \mult1_res_64__0_n_49\ : STD_LOGIC;
  signal \mult1_res_64__0_n_50\ : STD_LOGIC;
  signal \mult1_res_64__0_n_51\ : STD_LOGIC;
  signal \mult1_res_64__0_n_52\ : STD_LOGIC;
  signal \mult1_res_64__0_n_53\ : STD_LOGIC;
  signal \mult1_res_64__2\ : STD_LOGIC_VECTOR ( 27 downto 16 );
  signal \mult1_res_64_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \mult1_res_64_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \mult1_res_64_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \mult1_res_64_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \mult1_res_64_carry__0_n_0\ : STD_LOGIC;
  signal \mult1_res_64_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \mult1_res_64_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \mult1_res_64_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \mult1_res_64_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \mult1_res_64_carry__1_n_0\ : STD_LOGIC;
  signal \mult1_res_64_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \mult1_res_64_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \mult1_res_64_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \mult1_res_64_carry__2_i_4_n_0\ : STD_LOGIC;
  signal mult1_res_64_carry_i_1_n_0 : STD_LOGIC;
  signal mult1_res_64_carry_i_2_n_0 : STD_LOGIC;
  signal mult1_res_64_carry_i_3_n_0 : STD_LOGIC;
  signal mult1_res_64_carry_n_0 : STD_LOGIC;
  signal \mux10_carry__0_n_0\ : STD_LOGIC;
  signal \mux10_carry__0_n_4\ : STD_LOGIC;
  signal \mux10_carry__0_n_5\ : STD_LOGIC;
  signal \mux10_carry__0_n_6\ : STD_LOGIC;
  signal \mux10_carry__0_n_7\ : STD_LOGIC;
  signal \mux10_carry__1_n_0\ : STD_LOGIC;
  signal \mux10_carry__1_n_4\ : STD_LOGIC;
  signal \mux10_carry__1_n_5\ : STD_LOGIC;
  signal \mux10_carry__1_n_6\ : STD_LOGIC;
  signal \mux10_carry__1_n_7\ : STD_LOGIC;
  signal \mux10_carry__2_n_0\ : STD_LOGIC;
  signal \mux10_carry__2_n_4\ : STD_LOGIC;
  signal \mux10_carry__2_n_5\ : STD_LOGIC;
  signal \mux10_carry__2_n_6\ : STD_LOGIC;
  signal \mux10_carry__2_n_7\ : STD_LOGIC;
  signal \mux10_carry__3_n_0\ : STD_LOGIC;
  signal \mux10_carry__3_n_4\ : STD_LOGIC;
  signal \mux10_carry__3_n_5\ : STD_LOGIC;
  signal \mux10_carry__3_n_6\ : STD_LOGIC;
  signal \mux10_carry__3_n_7\ : STD_LOGIC;
  signal \mux10_carry__4_n_0\ : STD_LOGIC;
  signal \mux10_carry__4_n_4\ : STD_LOGIC;
  signal \mux10_carry__4_n_5\ : STD_LOGIC;
  signal \mux10_carry__4_n_6\ : STD_LOGIC;
  signal \mux10_carry__4_n_7\ : STD_LOGIC;
  signal \mux10_carry__5_n_0\ : STD_LOGIC;
  signal \mux10_carry__5_n_4\ : STD_LOGIC;
  signal \mux10_carry__5_n_5\ : STD_LOGIC;
  signal \mux10_carry__5_n_6\ : STD_LOGIC;
  signal \mux10_carry__5_n_7\ : STD_LOGIC;
  signal mux10_carry_n_0 : STD_LOGIC;
  signal mux10_carry_n_4 : STD_LOGIC;
  signal mux10_carry_n_5 : STD_LOGIC;
  signal mux10_carry_n_6 : STD_LOGIC;
  signal mux10_carry_n_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 17 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_R4_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_R4_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_R4_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_R4_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_R4_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_R4_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_R4_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_R4_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_R4_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_R4_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_R4_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mult1_res_64_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult1_res_64_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult1_res_64_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult1_res_64_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult1_res_64_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult1_res_64_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult1_res_64_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mult1_res_64_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mult1_res_64_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mult1_res_64_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 15 );
  signal NLW_mult1_res_64_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mult1_res_64__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult1_res_64__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult1_res_64__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult1_res_64__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult1_res_64__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult1_res_64__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult1_res_64__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mult1_res_64__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult1_res_64__0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal \NLW_mult1_res_64__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult1_res_64__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult1_res_64__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult1_res_64__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult1_res_64__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult1_res_64__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult1_res_64__1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mult1_res_64__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mult1_res_64__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult1_res_64__1_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 15 );
  signal \NLW_mult1_res_64__1_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mult1_res_64_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mult1_res_64_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mult1_res_64_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mult1_res_64_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mux10_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mux10_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mux10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mux10_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mux10_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mux10_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mux10_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mux10_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of R4_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of R4_reg : label is "RETARGET";
  attribute METHODOLOGY_DRC_VIOS of mult1_res_64 : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \mult1_res_64__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \mult1_res_64__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of mult1_res_64_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS of mult1_res_64_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of mult1_res_64_carry : label is "PROPCONST";
  attribute ADDER_THRESHOLD of \mult1_res_64_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \mult1_res_64_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute PHYS_OPT_MODIFIED : string;
  attribute PHYS_OPT_MODIFIED of \mult1_res_64_carry__0_i_3\ : label is "PIN_SWAP";
  attribute ADDER_THRESHOLD of \mult1_res_64_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \mult1_res_64_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute PHYS_OPT_MODIFIED of \mult1_res_64_carry__1_i_3\ : label is "PIN_SWAP";
  attribute ADDER_THRESHOLD of \mult1_res_64_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \mult1_res_64_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute PHYS_OPT_MODIFIED of mult1_res_64_carry_i_3 : label is "PIN_SWAP";
  attribute ADDER_THRESHOLD of mux10_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS of mux10_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \mux10_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \mux10_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \mux10_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \mux10_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \mux10_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \mux10_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \mux10_carry__3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \mux10_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \mux10_carry__4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \mux10_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \mux10_carry__5\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \mux10_carry__5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \mux10_carry__6\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \mux10_carry__6\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  C(3 downto 0) <= \^c\(3 downto 0);
  D(3 downto 0) <= \^d\(3 downto 0);
  \FSM_onehot_currstate_reg[3]\(27 downto 0) <= \^fsm_onehot_currstate_reg[3]\(27 downto 0);
\R1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(0),
      Q => \R1_reg[31]_0\(0),
      R => RSTP
    );
\R1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(10),
      Q => \R1_reg[31]_0\(10),
      R => RSTP
    );
\R1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(11),
      Q => \R1_reg[31]_0\(11),
      R => RSTP
    );
\R1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(12),
      Q => \R1_reg[31]_0\(12),
      R => RSTP
    );
\R1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(13),
      Q => \R1_reg[31]_0\(13),
      R => RSTP
    );
\R1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(14),
      Q => \R1_reg[31]_0\(14),
      R => RSTP
    );
\R1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(15),
      Q => \R1_reg[31]_0\(15),
      R => RSTP
    );
\R1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \mult1_res_64__2\(16),
      Q => \R1_reg[31]_0\(16),
      R => RSTP
    );
\R1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \mult1_res_64__2\(17),
      Q => \R1_reg[31]_0\(17),
      R => RSTP
    );
\R1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \mult1_res_64__2\(18),
      Q => \R1_reg[31]_0\(18),
      R => RSTP
    );
\R1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \mult1_res_64__2\(19),
      Q => \R1_reg[31]_0\(19),
      R => RSTP
    );
\R1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(1),
      Q => \R1_reg[31]_0\(1),
      R => RSTP
    );
\R1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \mult1_res_64__2\(20),
      Q => \R1_reg[31]_0\(20),
      R => RSTP
    );
\R1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \mult1_res_64__2\(21),
      Q => \R1_reg[31]_0\(21),
      R => RSTP
    );
\R1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \mult1_res_64__2\(22),
      Q => \R1_reg[31]_0\(22),
      R => RSTP
    );
\R1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \mult1_res_64__2\(23),
      Q => \R1_reg[31]_0\(23),
      R => RSTP
    );
\R1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \mult1_res_64__2\(24),
      Q => \R1_reg[31]_0\(24),
      R => RSTP
    );
\R1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \mult1_res_64__2\(25),
      Q => \R1_reg[31]_0\(25),
      R => RSTP
    );
\R1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \mult1_res_64__2\(26),
      Q => \R1_reg[31]_0\(26),
      R => RSTP
    );
\R1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \mult1_res_64__2\(27),
      Q => \R1_reg[31]_0\(27),
      R => RSTP
    );
\R1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \^c\(0),
      Q => \R1_reg[31]_0\(28),
      R => RSTP
    );
\R1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \^c\(1),
      Q => \R1_reg[31]_0\(29),
      R => RSTP
    );
\R1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(2),
      Q => \R1_reg[31]_0\(2),
      R => RSTP
    );
\R1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \^c\(2),
      Q => \R1_reg[31]_0\(30),
      R => RSTP
    );
\R1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \^c\(3),
      Q => \R1_reg[31]_0\(31),
      R => RSTP
    );
\R1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(3),
      Q => \R1_reg[31]_0\(3),
      R => RSTP
    );
\R1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(4),
      Q => \R1_reg[31]_0\(4),
      R => RSTP
    );
\R1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(5),
      Q => \R1_reg[31]_0\(5),
      R => RSTP
    );
\R1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(6),
      Q => \R1_reg[31]_0\(6),
      R => RSTP
    );
\R1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(7),
      Q => \R1_reg[31]_0\(7),
      R => RSTP
    );
\R1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(8),
      Q => \R1_reg[31]_0\(8),
      R => RSTP
    );
\R1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(9),
      Q => \R1_reg[31]_0\(9),
      R => RSTP
    );
\R2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => mux10_carry_n_7,
      Q => \R2_reg[31]_0\(0),
      R => RSTP
    );
\R2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__1_n_5\,
      Q => \R2_reg[31]_0\(10),
      R => RSTP
    );
\R2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__1_n_4\,
      Q => \R2_reg[31]_0\(11),
      R => RSTP
    );
\R2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__2_n_7\,
      Q => \R2_reg[31]_0\(12),
      R => RSTP
    );
\R2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__2_n_6\,
      Q => \R2_reg[31]_0\(13),
      R => RSTP
    );
\R2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__2_n_5\,
      Q => \R2_reg[31]_0\(14),
      R => RSTP
    );
\R2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__2_n_4\,
      Q => \R2_reg[31]_0\(15),
      R => RSTP
    );
\R2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__3_n_7\,
      Q => \R2_reg[31]_0\(16),
      R => RSTP
    );
\R2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__3_n_6\,
      Q => \R2_reg[31]_0\(17),
      R => RSTP
    );
\R2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__3_n_5\,
      Q => \R2_reg[31]_0\(18),
      R => RSTP
    );
\R2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__3_n_4\,
      Q => \R2_reg[31]_0\(19),
      R => RSTP
    );
\R2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => mux10_carry_n_6,
      Q => \R2_reg[31]_0\(1),
      R => RSTP
    );
\R2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__4_n_7\,
      Q => \R2_reg[31]_0\(20),
      R => RSTP
    );
\R2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__4_n_6\,
      Q => \R2_reg[31]_0\(21),
      R => RSTP
    );
\R2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__4_n_5\,
      Q => \R2_reg[31]_0\(22),
      R => RSTP
    );
\R2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__4_n_4\,
      Q => \R2_reg[31]_0\(23),
      R => RSTP
    );
\R2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__5_n_7\,
      Q => \R2_reg[31]_0\(24),
      R => RSTP
    );
\R2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__5_n_6\,
      Q => \R2_reg[31]_0\(25),
      R => RSTP
    );
\R2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__5_n_5\,
      Q => \R2_reg[31]_0\(26),
      R => RSTP
    );
\R2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__5_n_4\,
      Q => \R2_reg[31]_0\(27),
      R => RSTP
    );
\R2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \^d\(0),
      Q => \R2_reg[31]_0\(28),
      R => RSTP
    );
\R2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \^d\(1),
      Q => \R2_reg[31]_0\(29),
      R => RSTP
    );
\R2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => mux10_carry_n_5,
      Q => \R2_reg[31]_0\(2),
      R => RSTP
    );
\R2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \^d\(2),
      Q => \R2_reg[31]_0\(30),
      R => RSTP
    );
\R2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \^d\(3),
      Q => \R2_reg[31]_0\(31),
      R => RSTP
    );
\R2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => mux10_carry_n_4,
      Q => \R2_reg[31]_0\(3),
      R => RSTP
    );
\R2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__0_n_7\,
      Q => \R2_reg[31]_0\(4),
      R => RSTP
    );
\R2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__0_n_6\,
      Q => \R2_reg[31]_0\(5),
      R => RSTP
    );
\R2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__0_n_5\,
      Q => \R2_reg[31]_0\(6),
      R => RSTP
    );
\R2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__0_n_4\,
      Q => \R2_reg[31]_0\(7),
      R => RSTP
    );
\R2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__1_n_7\,
      Q => \R2_reg[31]_0\(8),
      R => RSTP
    );
\R2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en2_internal,
      D => \mux10_carry__1_n_6\,
      Q => \R2_reg[31]_0\(9),
      R => RSTP
    );
\R3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(0),
      Q => \R3_reg[31]_0\(0),
      R => RSTP
    );
\R3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(10),
      Q => \R3_reg[31]_0\(10),
      R => RSTP
    );
\R3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(11),
      Q => \R3_reg[31]_0\(11),
      R => RSTP
    );
\R3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(12),
      Q => \R3_reg[31]_0\(12),
      R => RSTP
    );
\R3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(13),
      Q => \R3_reg[31]_0\(13),
      R => RSTP
    );
\R3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(14),
      Q => \R3_reg[31]_0\(14),
      R => RSTP
    );
\R3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(15),
      Q => \R3_reg[31]_0\(15),
      R => RSTP
    );
\R3_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(16),
      Q => \R3_reg[31]_0\(16),
      R => RSTP
    );
\R3_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(17),
      Q => \R3_reg[31]_0\(17),
      R => RSTP
    );
\R3_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(18),
      Q => \R3_reg[31]_0\(18),
      R => RSTP
    );
\R3_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(19),
      Q => \R3_reg[31]_0\(19),
      R => RSTP
    );
\R3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(1),
      Q => \R3_reg[31]_0\(1),
      R => RSTP
    );
\R3_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(20),
      Q => \R3_reg[31]_0\(20),
      R => RSTP
    );
\R3_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(21),
      Q => \R3_reg[31]_0\(21),
      R => RSTP
    );
\R3_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(22),
      Q => \R3_reg[31]_0\(22),
      R => RSTP
    );
\R3_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(23),
      Q => \R3_reg[31]_0\(23),
      R => RSTP
    );
\R3_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(24),
      Q => \R3_reg[31]_0\(24),
      R => RSTP
    );
\R3_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(25),
      Q => \R3_reg[31]_0\(25),
      R => RSTP
    );
\R3_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(26),
      Q => \R3_reg[31]_0\(26),
      R => RSTP
    );
\R3_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(27),
      Q => \R3_reg[31]_0\(27),
      R => RSTP
    );
\R3_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \R3_reg[31]_1\(0),
      Q => \R3_reg[31]_0\(28),
      R => RSTP
    );
\R3_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \R3_reg[31]_1\(1),
      Q => \R3_reg[31]_0\(29),
      R => RSTP
    );
\R3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(2),
      Q => \R3_reg[31]_0\(2),
      R => RSTP
    );
\R3_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \R3_reg[31]_1\(2),
      Q => \R3_reg[31]_0\(30),
      R => RSTP
    );
\R3_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \R3_reg[31]_1\(3),
      Q => \R3_reg[31]_0\(31),
      R => RSTP
    );
\R3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(3),
      Q => \R3_reg[31]_0\(3),
      R => RSTP
    );
\R3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(4),
      Q => \R3_reg[31]_0\(4),
      R => RSTP
    );
\R3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(5),
      Q => \R3_reg[31]_0\(5),
      R => RSTP
    );
\R3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(6),
      Q => \R3_reg[31]_0\(6),
      R => RSTP
    );
\R3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(7),
      Q => \R3_reg[31]_0\(7),
      R => RSTP
    );
\R3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(8),
      Q => \R3_reg[31]_0\(8),
      R => RSTP
    );
\R3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => en3_internal,
      D => \^fsm_onehot_currstate_reg[3]\(9),
      Q => \R3_reg[31]_0\(9),
      R => RSTP
    );
R4_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      IS_OPMODE_INVERTED => B"0110000",
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => DOADO(15),
      A(28) => DOADO(15),
      A(27) => DOADO(15),
      A(26) => DOADO(15),
      A(25) => DOADO(15),
      A(24) => DOADO(15),
      A(23) => DOADO(15),
      A(22) => DOADO(15),
      A(21) => DOADO(15),
      A(20) => DOADO(15),
      A(19) => DOADO(15),
      A(18) => DOADO(15),
      A(17) => DOADO(15),
      A(16) => DOADO(15),
      A(15 downto 0) => DOADO(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_R4_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => DOADO(31),
      B(16) => DOADO(31),
      B(15 downto 0) => DOADO(31 downto 16),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_R4_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 32) => B"0000000000000000",
      C(31 downto 28) => \^c\(3 downto 0),
      C(27 downto 16) => \mult1_res_64__2\(27 downto 16),
      C(15 downto 0) => p_1_in(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_R4_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_R4_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => CEP,
      CLK => CLK,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_R4_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6) => '0',
      OPMODE(5) => Q(0),
      OPMODE(4) => Q(0),
      OPMODE(3) => '0',
      OPMODE(2) => Q(0),
      OPMODE(1) => '0',
      OPMODE(0) => Q(0),
      OVERFLOW => NLW_R4_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_R4_reg_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => P(31 downto 0),
      PATTERNBDETECT => NLW_R4_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_R4_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_R4_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => RSTP,
      UNDERFLOW => NLW_R4_reg_UNDERFLOW_UNCONNECTED
    );
mult1_res_64: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => p_0_out(31),
      A(28) => p_0_out(31),
      A(27) => p_0_out(31),
      A(26) => p_0_out(31),
      A(25) => p_0_out(31),
      A(24) => p_0_out(31),
      A(23) => p_0_out(31),
      A(22) => p_0_out(31),
      A(21) => p_0_out(31),
      A(20) => p_0_out(31),
      A(19) => p_0_out(31),
      A(18) => p_0_out(31),
      A(17) => p_0_out(31),
      A(16) => p_0_out(31),
      A(15) => p_0_out(31),
      A(14 downto 0) => p_0_out(31 downto 17),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mult1_res_64_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => mux4_sg(14),
      B(16) => mux4_sg(14),
      B(15) => mux4_sg(14),
      B(14 downto 0) => mux4_sg(14 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mult1_res_64_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mult1_res_64_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mult1_res_64_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mult1_res_64_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mult1_res_64_OVERFLOW_UNCONNECTED,
      P(47 downto 15) => NLW_mult1_res_64_P_UNCONNECTED(47 downto 15),
      P(14 downto 0) => p_0_in(31 downto 17),
      PATTERNBDETECT => NLW_mult1_res_64_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mult1_res_64_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mult1_res_64_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mult1_res_64_UNDERFLOW_UNCONNECTED
    );
\mult1_res_64__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => p_0_out(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29) => \mult1_res_64__0_n_24\,
      ACOUT(28) => \mult1_res_64__0_n_25\,
      ACOUT(27) => \mult1_res_64__0_n_26\,
      ACOUT(26) => \mult1_res_64__0_n_27\,
      ACOUT(25) => \mult1_res_64__0_n_28\,
      ACOUT(24) => \mult1_res_64__0_n_29\,
      ACOUT(23) => \mult1_res_64__0_n_30\,
      ACOUT(22) => \mult1_res_64__0_n_31\,
      ACOUT(21) => \mult1_res_64__0_n_32\,
      ACOUT(20) => \mult1_res_64__0_n_33\,
      ACOUT(19) => \mult1_res_64__0_n_34\,
      ACOUT(18) => \mult1_res_64__0_n_35\,
      ACOUT(17) => \mult1_res_64__0_n_36\,
      ACOUT(16) => \mult1_res_64__0_n_37\,
      ACOUT(15) => \mult1_res_64__0_n_38\,
      ACOUT(14) => \mult1_res_64__0_n_39\,
      ACOUT(13) => \mult1_res_64__0_n_40\,
      ACOUT(12) => \mult1_res_64__0_n_41\,
      ACOUT(11) => \mult1_res_64__0_n_42\,
      ACOUT(10) => \mult1_res_64__0_n_43\,
      ACOUT(9) => \mult1_res_64__0_n_44\,
      ACOUT(8) => \mult1_res_64__0_n_45\,
      ACOUT(7) => \mult1_res_64__0_n_46\,
      ACOUT(6) => \mult1_res_64__0_n_47\,
      ACOUT(5) => \mult1_res_64__0_n_48\,
      ACOUT(4) => \mult1_res_64__0_n_49\,
      ACOUT(3) => \mult1_res_64__0_n_50\,
      ACOUT(2) => \mult1_res_64__0_n_51\,
      ACOUT(1) => \mult1_res_64__0_n_52\,
      ACOUT(0) => \mult1_res_64__0_n_53\,
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => mux4_sg(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mult1_res_64__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mult1_res_64__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mult1_res_64__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mult1_res_64__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_mult1_res_64__0_OVERFLOW_UNCONNECTED\,
      P(47 downto 17) => \NLW_mult1_res_64__0_P_UNCONNECTED\(47 downto 17),
      P(16 downto 0) => p_1_in(16 downto 0),
      PATTERNBDETECT => \NLW_mult1_res_64__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mult1_res_64__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \mult1_res_64__0_n_106\,
      PCOUT(46) => \mult1_res_64__0_n_107\,
      PCOUT(45) => \mult1_res_64__0_n_108\,
      PCOUT(44) => \mult1_res_64__0_n_109\,
      PCOUT(43) => \mult1_res_64__0_n_110\,
      PCOUT(42) => \mult1_res_64__0_n_111\,
      PCOUT(41) => \mult1_res_64__0_n_112\,
      PCOUT(40) => \mult1_res_64__0_n_113\,
      PCOUT(39) => \mult1_res_64__0_n_114\,
      PCOUT(38) => \mult1_res_64__0_n_115\,
      PCOUT(37) => \mult1_res_64__0_n_116\,
      PCOUT(36) => \mult1_res_64__0_n_117\,
      PCOUT(35) => \mult1_res_64__0_n_118\,
      PCOUT(34) => \mult1_res_64__0_n_119\,
      PCOUT(33) => \mult1_res_64__0_n_120\,
      PCOUT(32) => \mult1_res_64__0_n_121\,
      PCOUT(31) => \mult1_res_64__0_n_122\,
      PCOUT(30) => \mult1_res_64__0_n_123\,
      PCOUT(29) => \mult1_res_64__0_n_124\,
      PCOUT(28) => \mult1_res_64__0_n_125\,
      PCOUT(27) => \mult1_res_64__0_n_126\,
      PCOUT(26) => \mult1_res_64__0_n_127\,
      PCOUT(25) => \mult1_res_64__0_n_128\,
      PCOUT(24) => \mult1_res_64__0_n_129\,
      PCOUT(23) => \mult1_res_64__0_n_130\,
      PCOUT(22) => \mult1_res_64__0_n_131\,
      PCOUT(21) => \mult1_res_64__0_n_132\,
      PCOUT(20) => \mult1_res_64__0_n_133\,
      PCOUT(19) => \mult1_res_64__0_n_134\,
      PCOUT(18) => \mult1_res_64__0_n_135\,
      PCOUT(17) => \mult1_res_64__0_n_136\,
      PCOUT(16) => \mult1_res_64__0_n_137\,
      PCOUT(15) => \mult1_res_64__0_n_138\,
      PCOUT(14) => \mult1_res_64__0_n_139\,
      PCOUT(13) => \mult1_res_64__0_n_140\,
      PCOUT(12) => \mult1_res_64__0_n_141\,
      PCOUT(11) => \mult1_res_64__0_n_142\,
      PCOUT(10) => \mult1_res_64__0_n_143\,
      PCOUT(9) => \mult1_res_64__0_n_144\,
      PCOUT(8) => \mult1_res_64__0_n_145\,
      PCOUT(7) => \mult1_res_64__0_n_146\,
      PCOUT(6) => \mult1_res_64__0_n_147\,
      PCOUT(5) => \mult1_res_64__0_n_148\,
      PCOUT(4) => \mult1_res_64__0_n_149\,
      PCOUT(3) => \mult1_res_64__0_n_150\,
      PCOUT(2) => \mult1_res_64__0_n_151\,
      PCOUT(1) => \mult1_res_64__0_n_152\,
      PCOUT(0) => \mult1_res_64__0_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mult1_res_64__0_UNDERFLOW_UNCONNECTED\
    );
\mult1_res_64__1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29) => \mult1_res_64__0_n_24\,
      ACIN(28) => \mult1_res_64__0_n_25\,
      ACIN(27) => \mult1_res_64__0_n_26\,
      ACIN(26) => \mult1_res_64__0_n_27\,
      ACIN(25) => \mult1_res_64__0_n_28\,
      ACIN(24) => \mult1_res_64__0_n_29\,
      ACIN(23) => \mult1_res_64__0_n_30\,
      ACIN(22) => \mult1_res_64__0_n_31\,
      ACIN(21) => \mult1_res_64__0_n_32\,
      ACIN(20) => \mult1_res_64__0_n_33\,
      ACIN(19) => \mult1_res_64__0_n_34\,
      ACIN(18) => \mult1_res_64__0_n_35\,
      ACIN(17) => \mult1_res_64__0_n_36\,
      ACIN(16) => \mult1_res_64__0_n_37\,
      ACIN(15) => \mult1_res_64__0_n_38\,
      ACIN(14) => \mult1_res_64__0_n_39\,
      ACIN(13) => \mult1_res_64__0_n_40\,
      ACIN(12) => \mult1_res_64__0_n_41\,
      ACIN(11) => \mult1_res_64__0_n_42\,
      ACIN(10) => \mult1_res_64__0_n_43\,
      ACIN(9) => \mult1_res_64__0_n_44\,
      ACIN(8) => \mult1_res_64__0_n_45\,
      ACIN(7) => \mult1_res_64__0_n_46\,
      ACIN(6) => \mult1_res_64__0_n_47\,
      ACIN(5) => \mult1_res_64__0_n_48\,
      ACIN(4) => \mult1_res_64__0_n_49\,
      ACIN(3) => \mult1_res_64__0_n_50\,
      ACIN(2) => \mult1_res_64__0_n_51\,
      ACIN(1) => \mult1_res_64__0_n_52\,
      ACIN(0) => \mult1_res_64__0_n_53\,
      ACOUT(29 downto 0) => \NLW_mult1_res_64__1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => mux4_sg(31),
      B(16) => mux4_sg(31),
      B(15) => mux4_sg(31),
      B(14 downto 0) => mux4_sg(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mult1_res_64__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mult1_res_64__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mult1_res_64__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mult1_res_64__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_mult1_res_64__1_OVERFLOW_UNCONNECTED\,
      P(47 downto 15) => \NLW_mult1_res_64__1_P_UNCONNECTED\(47 downto 15),
      P(14 downto 0) => p_1_in(31 downto 17),
      PATTERNBDETECT => \NLW_mult1_res_64__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mult1_res_64__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \mult1_res_64__0_n_106\,
      PCIN(46) => \mult1_res_64__0_n_107\,
      PCIN(45) => \mult1_res_64__0_n_108\,
      PCIN(44) => \mult1_res_64__0_n_109\,
      PCIN(43) => \mult1_res_64__0_n_110\,
      PCIN(42) => \mult1_res_64__0_n_111\,
      PCIN(41) => \mult1_res_64__0_n_112\,
      PCIN(40) => \mult1_res_64__0_n_113\,
      PCIN(39) => \mult1_res_64__0_n_114\,
      PCIN(38) => \mult1_res_64__0_n_115\,
      PCIN(37) => \mult1_res_64__0_n_116\,
      PCIN(36) => \mult1_res_64__0_n_117\,
      PCIN(35) => \mult1_res_64__0_n_118\,
      PCIN(34) => \mult1_res_64__0_n_119\,
      PCIN(33) => \mult1_res_64__0_n_120\,
      PCIN(32) => \mult1_res_64__0_n_121\,
      PCIN(31) => \mult1_res_64__0_n_122\,
      PCIN(30) => \mult1_res_64__0_n_123\,
      PCIN(29) => \mult1_res_64__0_n_124\,
      PCIN(28) => \mult1_res_64__0_n_125\,
      PCIN(27) => \mult1_res_64__0_n_126\,
      PCIN(26) => \mult1_res_64__0_n_127\,
      PCIN(25) => \mult1_res_64__0_n_128\,
      PCIN(24) => \mult1_res_64__0_n_129\,
      PCIN(23) => \mult1_res_64__0_n_130\,
      PCIN(22) => \mult1_res_64__0_n_131\,
      PCIN(21) => \mult1_res_64__0_n_132\,
      PCIN(20) => \mult1_res_64__0_n_133\,
      PCIN(19) => \mult1_res_64__0_n_134\,
      PCIN(18) => \mult1_res_64__0_n_135\,
      PCIN(17) => \mult1_res_64__0_n_136\,
      PCIN(16) => \mult1_res_64__0_n_137\,
      PCIN(15) => \mult1_res_64__0_n_138\,
      PCIN(14) => \mult1_res_64__0_n_139\,
      PCIN(13) => \mult1_res_64__0_n_140\,
      PCIN(12) => \mult1_res_64__0_n_141\,
      PCIN(11) => \mult1_res_64__0_n_142\,
      PCIN(10) => \mult1_res_64__0_n_143\,
      PCIN(9) => \mult1_res_64__0_n_144\,
      PCIN(8) => \mult1_res_64__0_n_145\,
      PCIN(7) => \mult1_res_64__0_n_146\,
      PCIN(6) => \mult1_res_64__0_n_147\,
      PCIN(5) => \mult1_res_64__0_n_148\,
      PCIN(4) => \mult1_res_64__0_n_149\,
      PCIN(3) => \mult1_res_64__0_n_150\,
      PCIN(2) => \mult1_res_64__0_n_151\,
      PCIN(1) => \mult1_res_64__0_n_152\,
      PCIN(0) => \mult1_res_64__0_n_153\,
      PCOUT(47 downto 0) => \NLW_mult1_res_64__1_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mult1_res_64__1_UNDERFLOW_UNCONNECTED\
    );
mult1_res_64_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => mult1_res_64_carry_n_0,
      CO(2 downto 0) => NLW_mult1_res_64_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => p_1_in(19 downto 17),
      DI(0) => '0',
      O(3 downto 0) => \mult1_res_64__2\(19 downto 16),
      S(3) => mult1_res_64_carry_i_1_n_0,
      S(2) => mult1_res_64_carry_i_2_n_0,
      S(1) => mult1_res_64_carry_i_3_n_0,
      S(0) => p_1_in(16)
    );
\mult1_res_64_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => mult1_res_64_carry_n_0,
      CO(3) => \mult1_res_64_carry__0_n_0\,
      CO(2 downto 0) => \NLW_mult1_res_64_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => p_1_in(23 downto 20),
      O(3 downto 0) => \mult1_res_64__2\(23 downto 20),
      S(3) => \mult1_res_64_carry__0_i_1_n_0\,
      S(2) => \mult1_res_64_carry__0_i_2_n_0\,
      S(1) => \mult1_res_64_carry__0_i_3_n_0\,
      S(0) => \mult1_res_64_carry__0_i_4_n_0\
    );
\mult1_res_64_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(23),
      I1 => p_0_in(23),
      O => \mult1_res_64_carry__0_i_1_n_0\
    );
\mult1_res_64_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(22),
      I1 => p_0_in(22),
      O => \mult1_res_64_carry__0_i_2_n_0\
    );
\mult1_res_64_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(21),
      I1 => p_0_in(21),
      O => \mult1_res_64_carry__0_i_3_n_0\
    );
\mult1_res_64_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(20),
      I1 => p_0_in(20),
      O => \mult1_res_64_carry__0_i_4_n_0\
    );
\mult1_res_64_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult1_res_64_carry__0_n_0\,
      CO(3) => \mult1_res_64_carry__1_n_0\,
      CO(2 downto 0) => \NLW_mult1_res_64_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => p_1_in(27 downto 24),
      O(3 downto 0) => \mult1_res_64__2\(27 downto 24),
      S(3) => \mult1_res_64_carry__1_i_1_n_0\,
      S(2) => \mult1_res_64_carry__1_i_2_n_0\,
      S(1) => \mult1_res_64_carry__1_i_3_n_0\,
      S(0) => \mult1_res_64_carry__1_i_4_n_0\
    );
\mult1_res_64_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(27),
      I1 => p_0_in(27),
      O => \mult1_res_64_carry__1_i_1_n_0\
    );
\mult1_res_64_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(26),
      I1 => p_0_in(26),
      O => \mult1_res_64_carry__1_i_2_n_0\
    );
\mult1_res_64_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(25),
      I1 => p_0_in(25),
      O => \mult1_res_64_carry__1_i_3_n_0\
    );
\mult1_res_64_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(24),
      I1 => p_0_in(24),
      O => \mult1_res_64_carry__1_i_4_n_0\
    );
\mult1_res_64_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult1_res_64_carry__1_n_0\,
      CO(3 downto 0) => \NLW_mult1_res_64_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => p_1_in(30 downto 28),
      O(3 downto 0) => \^c\(3 downto 0),
      S(3) => \mult1_res_64_carry__2_i_1_n_0\,
      S(2) => \mult1_res_64_carry__2_i_2_n_0\,
      S(1) => \mult1_res_64_carry__2_i_3_n_0\,
      S(0) => \mult1_res_64_carry__2_i_4_n_0\
    );
\mult1_res_64_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(31),
      I1 => p_0_in(31),
      O => \mult1_res_64_carry__2_i_1_n_0\
    );
\mult1_res_64_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(30),
      I1 => p_0_in(30),
      O => \mult1_res_64_carry__2_i_2_n_0\
    );
\mult1_res_64_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(29),
      I1 => p_0_in(29),
      O => \mult1_res_64_carry__2_i_3_n_0\
    );
\mult1_res_64_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(28),
      I1 => p_0_in(28),
      O => \mult1_res_64_carry__2_i_4_n_0\
    );
mult1_res_64_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(19),
      I1 => p_0_in(19),
      O => mult1_res_64_carry_i_1_n_0
    );
mult1_res_64_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(18),
      I1 => p_0_in(18),
      O => mult1_res_64_carry_i_2_n_0
    );
mult1_res_64_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(17),
      I1 => p_0_in(17),
      O => mult1_res_64_carry_i_3_n_0
    );
mux10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => mux10_carry_n_0,
      CO(2 downto 0) => NLW_mux10_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => Q(2),
      DI(3 downto 0) => A(3 downto 0),
      O(3) => mux10_carry_n_4,
      O(2) => mux10_carry_n_5,
      O(1) => mux10_carry_n_6,
      O(0) => mux10_carry_n_7,
      S(3 downto 0) => S(3 downto 0)
    );
\mux10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => mux10_carry_n_0,
      CO(3) => \mux10_carry__0_n_0\,
      CO(2 downto 0) => \NLW_mux10_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => A(7 downto 4),
      O(3) => \mux10_carry__0_n_4\,
      O(2) => \mux10_carry__0_n_5\,
      O(1) => \mux10_carry__0_n_6\,
      O(0) => \mux10_carry__0_n_7\,
      S(3 downto 0) => \R2_reg[7]_0\(3 downto 0)
    );
\mux10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mux10_carry__0_n_0\,
      CO(3) => \mux10_carry__1_n_0\,
      CO(2 downto 0) => \NLW_mux10_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => A(11 downto 8),
      O(3) => \mux10_carry__1_n_4\,
      O(2) => \mux10_carry__1_n_5\,
      O(1) => \mux10_carry__1_n_6\,
      O(0) => \mux10_carry__1_n_7\,
      S(3 downto 0) => \R2_reg[11]_0\(3 downto 0)
    );
\mux10_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mux10_carry__1_n_0\,
      CO(3) => \mux10_carry__2_n_0\,
      CO(2 downto 0) => \NLW_mux10_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => A(15 downto 12),
      O(3) => \mux10_carry__2_n_4\,
      O(2) => \mux10_carry__2_n_5\,
      O(1) => \mux10_carry__2_n_6\,
      O(0) => \mux10_carry__2_n_7\,
      S(3 downto 0) => \R2_reg[15]_0\(3 downto 0)
    );
\mux10_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \mux10_carry__2_n_0\,
      CO(3) => \mux10_carry__3_n_0\,
      CO(2 downto 0) => \NLW_mux10_carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => A(19 downto 16),
      O(3) => \mux10_carry__3_n_4\,
      O(2) => \mux10_carry__3_n_5\,
      O(1) => \mux10_carry__3_n_6\,
      O(0) => \mux10_carry__3_n_7\,
      S(3 downto 0) => \R2_reg[19]_0\(3 downto 0)
    );
\mux10_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \mux10_carry__3_n_0\,
      CO(3) => \mux10_carry__4_n_0\,
      CO(2 downto 0) => \NLW_mux10_carry__4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => A(23 downto 20),
      O(3) => \mux10_carry__4_n_4\,
      O(2) => \mux10_carry__4_n_5\,
      O(1) => \mux10_carry__4_n_6\,
      O(0) => \mux10_carry__4_n_7\,
      S(3 downto 0) => \R2_reg[23]_0\(3 downto 0)
    );
\mux10_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \mux10_carry__4_n_0\,
      CO(3) => \mux10_carry__5_n_0\,
      CO(2 downto 0) => \NLW_mux10_carry__5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => A(27 downto 24),
      O(3) => \mux10_carry__5_n_4\,
      O(2) => \mux10_carry__5_n_5\,
      O(1) => \mux10_carry__5_n_6\,
      O(0) => \mux10_carry__5_n_7\,
      S(3 downto 0) => \R2_reg[27]_0\(3 downto 0)
    );
\mux10_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \mux10_carry__5_n_0\,
      CO(3 downto 0) => \NLW_mux10_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => A(30 downto 28),
      O(3 downto 0) => \^d\(3 downto 0),
      S(3 downto 0) => \R2_reg[31]_1\(3 downto 0)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mult1_res_64__2\(22),
      I1 => Q(1),
      I2 => \mux10_carry__4_n_5\,
      O => \^fsm_onehot_currstate_reg[3]\(22)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mult1_res_64__2\(21),
      I1 => Q(1),
      I2 => \mux10_carry__4_n_6\,
      O => \^fsm_onehot_currstate_reg[3]\(21)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mult1_res_64__2\(20),
      I1 => Q(1),
      I2 => \mux10_carry__4_n_7\,
      O => \^fsm_onehot_currstate_reg[3]\(20)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mult1_res_64__2\(19),
      I1 => Q(1),
      I2 => \mux10_carry__3_n_4\,
      O => \^fsm_onehot_currstate_reg[3]\(19)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mult1_res_64__2\(18),
      I1 => Q(1),
      I2 => \mux10_carry__3_n_5\,
      O => \^fsm_onehot_currstate_reg[3]\(18)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mult1_res_64__2\(17),
      I1 => Q(1),
      I2 => \mux10_carry__3_n_6\,
      O => \^fsm_onehot_currstate_reg[3]\(17)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mult1_res_64__2\(16),
      I1 => Q(1),
      I2 => \mux10_carry__3_n_7\,
      O => \^fsm_onehot_currstate_reg[3]\(16)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(15),
      I1 => Q(1),
      I2 => \mux10_carry__2_n_4\,
      O => \^fsm_onehot_currstate_reg[3]\(15)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(14),
      I1 => Q(1),
      I2 => \mux10_carry__2_n_5\,
      O => \^fsm_onehot_currstate_reg[3]\(14)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(13),
      I1 => Q(1),
      I2 => \mux10_carry__2_n_6\,
      O => \^fsm_onehot_currstate_reg[3]\(13)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(12),
      I1 => Q(1),
      I2 => \mux10_carry__2_n_7\,
      O => \^fsm_onehot_currstate_reg[3]\(12)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(11),
      I1 => Q(1),
      I2 => \mux10_carry__1_n_4\,
      O => \^fsm_onehot_currstate_reg[3]\(11)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(10),
      I1 => Q(1),
      I2 => \mux10_carry__1_n_5\,
      O => \^fsm_onehot_currstate_reg[3]\(10)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(9),
      I1 => Q(1),
      I2 => \mux10_carry__1_n_6\,
      O => \^fsm_onehot_currstate_reg[3]\(9)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(8),
      I1 => Q(1),
      I2 => \mux10_carry__1_n_7\,
      O => \^fsm_onehot_currstate_reg[3]\(8)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(7),
      I1 => Q(1),
      I2 => \mux10_carry__0_n_4\,
      O => \^fsm_onehot_currstate_reg[3]\(7)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(6),
      I1 => Q(1),
      I2 => \mux10_carry__0_n_5\,
      O => \^fsm_onehot_currstate_reg[3]\(6)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(5),
      I1 => Q(1),
      I2 => \mux10_carry__0_n_6\,
      O => \^fsm_onehot_currstate_reg[3]\(5)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(4),
      I1 => Q(1),
      I2 => \mux10_carry__0_n_7\,
      O => \^fsm_onehot_currstate_reg[3]\(4)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(3),
      I1 => Q(1),
      I2 => mux10_carry_n_4,
      O => \^fsm_onehot_currstate_reg[3]\(3)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(2),
      I1 => Q(1),
      I2 => mux10_carry_n_5,
      O => \^fsm_onehot_currstate_reg[3]\(2)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(1),
      I1 => Q(1),
      I2 => mux10_carry_n_6,
      O => \^fsm_onehot_currstate_reg[3]\(1)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(0),
      I1 => Q(1),
      I2 => mux10_carry_n_7,
      O => \^fsm_onehot_currstate_reg[3]\(0)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mult1_res_64__2\(27),
      I1 => Q(1),
      I2 => \mux10_carry__5_n_4\,
      O => \^fsm_onehot_currstate_reg[3]\(27)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mult1_res_64__2\(26),
      I1 => Q(1),
      I2 => \mux10_carry__5_n_5\,
      O => \^fsm_onehot_currstate_reg[3]\(26)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mult1_res_64__2\(25),
      I1 => Q(1),
      I2 => \mux10_carry__5_n_6\,
      O => \^fsm_onehot_currstate_reg[3]\(25)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mult1_res_64__2\(24),
      I1 => Q(1),
      I2 => \mux10_carry__5_n_7\,
      O => \^fsm_onehot_currstate_reg[3]\(24)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \mult1_res_64__2\(23),
      I1 => Q(1),
      I2 => \mux10_carry__4_n_4\,
      O => \^fsm_onehot_currstate_reg[3]\(23)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity unimacro_BRAM_SINGLE_MACRO is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    \ramb_bl.ramb36_sin_bl.ram36_bl_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    pwropt : in STD_LOGIC;
    pwropt_1 : in STD_LOGIC
  );
end unimacro_BRAM_SINGLE_MACRO;

architecture STRUCTURE of unimacro_BRAM_SINGLE_MACRO is
  signal \inst_memOUT/MEM_out/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_6\ : STD_LOGIC;
  signal \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_7\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of \ramb_bl.ramb36_sin_bl.ram36_bl\ : label is std.standard.true;
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of \ramb_bl.ramb36_sin_bl.ram36_bl\ : label is "ENARDEN=NEW";
  attribute box_type : string;
  attribute box_type of \ramb_bl.ramb36_sin_bl.ram36_bl\ : label is "PRIMITIVE";
begin
\inst_memOUT/MEM_out/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_gate_9_cooolDelFlop\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => pwropt,
      Q => \inst_memOUT/MEM_out/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_6\
    );
\ramb_bl.ramb36_sin_bl.ram36_bl\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15 downto 9) => B"1000000",
      ADDRARDADDR(8 downto 5) => \ramb_bl.ramb36_sin_bl.ram36_bl_0\(3 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => CLK,
      CLKBWRCLK => '0',
      DBITERR => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => DIADI(31 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => DOADO(31 downto 0),
      DOBDO(31 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_7\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED\,
      WEA(3) => Q(0),
      WEA(2) => Q(0),
      WEA(1) => Q(0),
      WEA(0) => Q(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_gate_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"fe"
    )
        port map (
      I0 => \inst_memOUT/MEM_out/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_6\,
      I1 => Q(0),
      I2 => pwropt_1,
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_7\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \unimacro_BRAM_SINGLE_MACRO__parameterized0\ is
  port (
    \ramb_bl.ramb36_sin_bl.ram36_bl_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    A : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \A__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ramb_bl.ramb36_sin_bl.ram36_bl_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ramb_bl.ramb36_sin_bl.ram36_bl_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ramb_bl.ramb36_sin_bl.ram36_bl_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \mux10_carry__6_i_4\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \mux10_carry__6_i_4_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en2_internal : in STD_LOGIC;
    en3_internal : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \R2_reg[15]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    pwropt : in STD_LOGIC;
    pwropt_1 : in STD_LOGIC;
    pwropt_2 : out STD_LOGIC;
    pwropt_3 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \unimacro_BRAM_SINGLE_MACRO__parameterized0\ : entity is "unimacro_BRAM_SINGLE_MACRO";
end \unimacro_BRAM_SINGLE_MACRO__parameterized0\;

architecture STRUCTURE of \unimacro_BRAM_SINGLE_MACRO__parameterized0\ is
  signal \^a\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_1\ : STD_LOGIC;
  signal \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_2\ : STD_LOGIC;
  signal \^ramb_bl.ramb36_sin_bl.ram36_bl_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_3\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of \ramb_bl.ramb36_sin_bl.ram36_bl\ : label is std.standard.true;
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of \ramb_bl.ramb36_sin_bl.ram36_bl\ : label is "ENARDEN=NEW";
  attribute box_type : string;
  attribute box_type of \ramb_bl.ramb36_sin_bl.ram36_bl\ : label is "PRIMITIVE";
begin
  A(30 downto 0) <= \^a\(30 downto 0);
  pwropt_2 <= \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_1\;
  pwropt_3 <= \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_2\;
  \ramb_bl.ramb36_sin_bl.ram36_bl_0\(31 downto 0) <= \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(31 downto 0);
\inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_gate_1_cooolDelFlop\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => pwropt,
      Q => \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_1\
    );
\inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_gate_2_cooolDelFlop\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => pwropt_1,
      Q => \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_2\
    );
\mux10_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(7),
      I1 => \mux10_carry__6_i_4\(7),
      I2 => \mux10_carry__6_i_4_0\(7),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(7),
      O => \^a\(7)
    );
\mux10_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(6),
      I1 => \mux10_carry__6_i_4\(6),
      I2 => \mux10_carry__6_i_4_0\(6),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(6),
      O => \^a\(6)
    );
\mux10_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(5),
      I1 => \mux10_carry__6_i_4\(5),
      I2 => \mux10_carry__6_i_4_0\(5),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(5),
      O => \^a\(5)
    );
\mux10_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(4),
      I1 => \mux10_carry__6_i_4\(4),
      I2 => \mux10_carry__6_i_4_0\(4),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(4),
      O => \^a\(4)
    );
\mux10_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(7),
      I1 => \R2_reg[15]\(7),
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_1\(3)
    );
\mux10_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(6),
      I1 => \R2_reg[15]\(6),
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_1\(2)
    );
\mux10_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(5),
      I1 => \R2_reg[15]\(5),
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_1\(1)
    );
\mux10_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(4),
      I1 => \R2_reg[15]\(4),
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_1\(0)
    );
\mux10_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(11),
      I1 => \mux10_carry__6_i_4\(11),
      I2 => \mux10_carry__6_i_4_0\(11),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(11),
      O => \^a\(11)
    );
\mux10_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(10),
      I1 => \mux10_carry__6_i_4\(10),
      I2 => \mux10_carry__6_i_4_0\(10),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(10),
      O => \^a\(10)
    );
\mux10_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(9),
      I1 => \mux10_carry__6_i_4\(9),
      I2 => \mux10_carry__6_i_4_0\(9),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(9),
      O => \^a\(9)
    );
\mux10_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(8),
      I1 => \mux10_carry__6_i_4\(8),
      I2 => \mux10_carry__6_i_4_0\(8),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(8),
      O => \^a\(8)
    );
\mux10_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(11),
      I1 => \R2_reg[15]\(11),
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_2\(3)
    );
\mux10_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(10),
      I1 => \R2_reg[15]\(10),
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_2\(2)
    );
\mux10_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(9),
      I1 => \R2_reg[15]\(9),
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_2\(1)
    );
\mux10_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(8),
      I1 => \R2_reg[15]\(8),
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_2\(0)
    );
\mux10_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(15),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(15),
      O => \^a\(15)
    );
\mux10_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(14),
      I1 => \mux10_carry__6_i_4\(14),
      I2 => \mux10_carry__6_i_4_0\(14),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(14),
      O => \^a\(14)
    );
\mux10_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(13),
      I1 => \mux10_carry__6_i_4\(13),
      I2 => \mux10_carry__6_i_4_0\(13),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(13),
      O => \^a\(13)
    );
\mux10_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(12),
      I1 => \mux10_carry__6_i_4\(12),
      I2 => \mux10_carry__6_i_4_0\(12),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(12),
      O => \^a\(12)
    );
\mux10_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(14),
      I1 => \R2_reg[15]\(14),
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_3\(2)
    );
\mux10_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(13),
      I1 => \R2_reg[15]\(13),
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_3\(1)
    );
\mux10_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(12),
      I1 => \R2_reg[15]\(12),
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_3\(0)
    );
\mux10_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(19),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(19),
      O => \^a\(19)
    );
\mux10_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(18),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(18),
      O => \^a\(18)
    );
\mux10_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(17),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(17),
      O => \^a\(17)
    );
\mux10_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(16),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(16),
      O => \^a\(16)
    );
\mux10_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(23),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(23),
      O => \^a\(23)
    );
\mux10_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(22),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(22),
      O => \^a\(22)
    );
\mux10_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(21),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(21),
      O => \^a\(21)
    );
\mux10_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(20),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(20),
      O => \^a\(20)
    );
\mux10_carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(27),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(27),
      O => \^a\(27)
    );
\mux10_carry__5_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(26),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(26),
      O => \^a\(26)
    );
\mux10_carry__5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(25),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(25),
      O => \^a\(25)
    );
\mux10_carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(24),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(24),
      O => \^a\(24)
    );
\mux10_carry__6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(30),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(30),
      O => \^a\(30)
    );
\mux10_carry__6_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(29),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(29),
      O => \^a\(29)
    );
\mux10_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(28),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(28),
      O => \^a\(28)
    );
\mux10_carry__6_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(15),
      I1 => DOADO(15),
      I2 => \mux10_carry__6_i_4_0\(31),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => \mux10_carry__6_i_4\(31),
      O => \A__0\(0)
    );
mux10_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(3),
      I1 => \mux10_carry__6_i_4\(3),
      I2 => \mux10_carry__6_i_4_0\(3),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(3),
      O => \^a\(3)
    );
mux10_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(2),
      I1 => \mux10_carry__6_i_4\(2),
      I2 => \mux10_carry__6_i_4_0\(2),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(2),
      O => \^a\(2)
    );
mux10_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(1),
      I1 => \mux10_carry__6_i_4\(1),
      I2 => \mux10_carry__6_i_4_0\(1),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(1),
      O => \^a\(1)
    );
mux10_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(0),
      I1 => \mux10_carry__6_i_4\(0),
      I2 => \mux10_carry__6_i_4_0\(0),
      I3 => en2_internal,
      I4 => en3_internal,
      I5 => DOADO(0),
      O => \^a\(0)
    );
mux10_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(3),
      I1 => \R2_reg[15]\(3),
      O => S(3)
    );
mux10_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(2),
      I1 => \R2_reg[15]\(2),
      O => S(2)
    );
mux10_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(1),
      I1 => \R2_reg[15]\(1),
      O => S(1)
    );
mux10_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^a\(0),
      I1 => \R2_reg[15]\(0),
      O => S(0)
    );
\ramb_bl.ramb36_sin_bl.ram36_bl\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"E5A722EEB4CD5DFABBBDA63665A5E2D55D1003A76B4062E0821A241621D9767E",
      INIT_01 => X"FCDDDCB2AE020CA7F46F149ADDA9810F6AFD3E9C92D63E2BF085AF230F50FD28",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15 downto 9) => B"1000000",
      ADDRARDADDR(8 downto 5) => addr(3 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => CLK,
      CLKBWRCLK => '0',
      DBITERR => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \^ramb_bl.ramb36_sin_bl.ram36_bl_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_3\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_gate_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"e"
    )
        port map (
      I0 => \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_2\,
      I1 => \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_1\,
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \unimacro_BRAM_SINGLE_MACRO__parameterized1\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pwropt : in STD_LOGIC;
    pwropt_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \unimacro_BRAM_SINGLE_MACRO__parameterized1\ : entity is "unimacro_BRAM_SINGLE_MACRO";
end \unimacro_BRAM_SINGLE_MACRO__parameterized1\;

architecture STRUCTURE of \unimacro_BRAM_SINGLE_MACRO__parameterized1\ is
  signal \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_4\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of \ramb_bl.ramb36_sin_bl.ram36_bl\ : label is std.standard.true;
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of \ramb_bl.ramb36_sin_bl.ram36_bl\ : label is "ENARDEN=NEW";
  attribute box_type : string;
  attribute box_type of \ramb_bl.ramb36_sin_bl.ram36_bl\ : label is "PRIMITIVE";
begin
\ramb_bl.ramb36_sin_bl.ram36_bl\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"4A9C01667DAF0E9BF03A44321DD72242BAE958BC6DBF11EC170A4CD8C3C93156",
      INIT_01 => X"90060BB7130E163AB0FF2F301A1D444B9E467DBA1E753BC2B3C25F027BA4027F",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15 downto 9) => B"1000000",
      ADDRARDADDR(8 downto 5) => addr(3 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => CLK,
      CLKBWRCLK => '0',
      DBITERR => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => DOADO(31 downto 0),
      DOBDO(31 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_4\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_gate_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"e"
    )
        port map (
      I0 => pwropt_1,
      I1 => pwropt,
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \unimacro_BRAM_SINGLE_MACRO__parameterized2\ is
  port (
    \ramb_bl.ramb36_sin_bl.ram36_bl_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pwropt : in STD_LOGIC;
    pwropt_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \unimacro_BRAM_SINGLE_MACRO__parameterized2\ : entity is "unimacro_BRAM_SINGLE_MACRO";
end \unimacro_BRAM_SINGLE_MACRO__parameterized2\;

architecture STRUCTURE of \unimacro_BRAM_SINGLE_MACRO__parameterized2\ is
  signal \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_5\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of \ramb_bl.ramb36_sin_bl.ram36_bl\ : label is std.standard.true;
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of \ramb_bl.ramb36_sin_bl.ram36_bl\ : label is "ENARDEN=NEW";
  attribute box_type : string;
  attribute box_type of \ramb_bl.ramb36_sin_bl.ram36_bl\ : label is "PRIMITIVE";
begin
\ramb_bl.ramb36_sin_bl.ram36_bl\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"A1C855C8C04E53AD7250D50ADDB1F9AFF25C6F834B43448D288151B8D34D895F",
      INIT_01 => X"CF38F3A4894C4C2C3B78EC9A977619A78002108459187D7D8E47052228307E38",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "NONE",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15 downto 9) => B"1000000",
      ADDRARDADDR(8 downto 5) => addr(3 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => CLK,
      CLKBWRCLK => '0',
      DBITERR => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \ramb_bl.ramb36_sin_bl.ram36_bl_0\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_5\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_gate_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"e"
    )
        port map (
      I0 => pwropt_1,
      I1 => pwropt,
      O => \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_5\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MemIN is
  port (
    A : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \ramb_bl.ramb36_sin_bl.ram36_bl\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOADO : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \A__0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ramb_bl.ramb36_sin_bl.ram36_bl_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ramb_bl.ramb36_sin_bl.ram36_bl_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ramb_bl.ramb36_sin_bl.ram36_bl_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ramb_bl.ramb36_sin_bl.ram36_bl_3\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \mux10_carry__6_i_4\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \mux10_carry__6_i_4_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en2_internal : in STD_LOGIC;
    en3_internal : in STD_LOGIC;
    \R2_reg[15]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    CLK : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pwropt : in STD_LOGIC;
    pwropt_1 : in STD_LOGIC;
    pwropt_2 : out STD_LOGIC
  );
end MemIN;

architecture STRUCTURE of MemIN is
  signal C_internal : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^doado\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^pwropt_2\ : STD_LOGIC;
  signal pwropt_3 : STD_LOGIC;
begin
  DOADO(16 downto 0) <= \^doado\(16 downto 0);
  pwropt_2 <= \^pwropt_2\;
MEM_in0: entity work.\unimacro_BRAM_SINGLE_MACRO__parameterized0\
     port map (
      A(30 downto 0) => A(30 downto 0),
      \A__0\(0) => \A__0\(0),
      CLK => CLK,
      DOADO(15) => \^doado\(0),
      DOADO(14 downto 0) => C_internal(14 downto 0),
      \R2_reg[15]\(14 downto 0) => \R2_reg[15]\(14 downto 0),
      S(3 downto 0) => S(3 downto 0),
      addr(3 downto 0) => addr(3 downto 0),
      en2_internal => en2_internal,
      en3_internal => en3_internal,
      \mux10_carry__6_i_4\(31 downto 0) => \mux10_carry__6_i_4\(31 downto 0),
      \mux10_carry__6_i_4_0\(31 downto 0) => \mux10_carry__6_i_4_0\(31 downto 0),
      pwropt => pwropt,
      pwropt_1 => pwropt_1,
      pwropt_2 => \^pwropt_2\,
      pwropt_3 => pwropt_3,
      \ramb_bl.ramb36_sin_bl.ram36_bl_0\(31 downto 0) => \ramb_bl.ramb36_sin_bl.ram36_bl\(31 downto 0),
      \ramb_bl.ramb36_sin_bl.ram36_bl_1\(3 downto 0) => \ramb_bl.ramb36_sin_bl.ram36_bl_0\(3 downto 0),
      \ramb_bl.ramb36_sin_bl.ram36_bl_2\(3 downto 0) => \ramb_bl.ramb36_sin_bl.ram36_bl_1\(3 downto 0),
      \ramb_bl.ramb36_sin_bl.ram36_bl_3\(2 downto 0) => \ramb_bl.ramb36_sin_bl.ram36_bl_2\(2 downto 0)
    );
MEM_in1: entity work.\unimacro_BRAM_SINGLE_MACRO__parameterized1\
     port map (
      CLK => CLK,
      DOADO(31 downto 15) => \^doado\(16 downto 0),
      DOADO(14 downto 0) => C_internal(14 downto 0),
      addr(3 downto 0) => addr(3 downto 0),
      pwropt => \^pwropt_2\,
      pwropt_1 => pwropt_3
    );
MEM_in2: entity work.\unimacro_BRAM_SINGLE_MACRO__parameterized2\
     port map (
      CLK => CLK,
      addr(3 downto 0) => addr(3 downto 0),
      pwropt => \^pwropt_2\,
      pwropt_1 => pwropt_3,
      \ramb_bl.ramb36_sin_bl.ram36_bl_0\(31 downto 0) => \ramb_bl.ramb36_sin_bl.ram36_bl_3\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity memOUT is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    \ramb_bl.ramb36_sin_bl.ram36_bl\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    pwropt : in STD_LOGIC;
    pwropt_1 : in STD_LOGIC
  );
end memOUT;

architecture STRUCTURE of memOUT is
begin
MEM_out: entity work.unimacro_BRAM_SINGLE_MACRO
     port map (
      CLK => CLK,
      DIADI(31 downto 0) => DIADI(31 downto 0),
      DOADO(31 downto 0) => DOADO(31 downto 0),
      Q(0) => Q(0),
      pwropt => pwropt,
      pwropt_1 => pwropt_1,
      \ramb_bl.ramb36_sin_bl.ram36_bl_0\(3 downto 0) => \ramb_bl.ramb36_sin_bl.ram36_bl\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity circuito is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    we : out STD_LOGIC;
    done : out STD_LOGIC;
    addrMEMout : out STD_LOGIC_VECTOR ( 9 downto 0 );
    dataOUT : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of circuito : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of circuito : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of circuito : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of circuito : entity is "2210c724";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of circuito : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of circuito : entity is 0;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of circuito : entity is 0;
end circuito;

architecture STRUCTURE of circuito is
  signal A : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \A__0\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal A_internal : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal B_internal : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal C_internal : STD_LOGIC_VECTOR ( 15 to 15 );
  signal D_internal : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Det_out_internal : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal E_internal : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal F_internal : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal R1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal R2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal R3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal addrMEMin_internal : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal addrMEMout_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal dataOUT_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal done_OBUF : STD_LOGIC;
  signal en1_internal : STD_LOGIC;
  signal en2_internal : STD_LOGIC;
  signal en3_internal : STD_LOGIC;
  signal en4_internal : STD_LOGIC;
  signal inst_control_n_100 : STD_LOGIC;
  signal inst_control_n_101 : STD_LOGIC;
  signal inst_control_n_102 : STD_LOGIC;
  signal inst_control_n_103 : STD_LOGIC;
  signal inst_control_n_104 : STD_LOGIC;
  signal inst_control_n_105 : STD_LOGIC;
  signal inst_control_n_106 : STD_LOGIC;
  signal inst_control_n_107 : STD_LOGIC;
  signal inst_control_n_108 : STD_LOGIC;
  signal inst_control_n_109 : STD_LOGIC;
  signal inst_control_n_110 : STD_LOGIC;
  signal inst_control_n_111 : STD_LOGIC;
  signal inst_control_n_112 : STD_LOGIC;
  signal inst_control_n_113 : STD_LOGIC;
  signal inst_control_n_114 : STD_LOGIC;
  signal inst_control_n_115 : STD_LOGIC;
  signal inst_control_n_99 : STD_LOGIC;
  signal inst_datapath_n_0 : STD_LOGIC;
  signal inst_datapath_n_1 : STD_LOGIC;
  signal inst_datapath_n_101 : STD_LOGIC;
  signal inst_datapath_n_102 : STD_LOGIC;
  signal inst_datapath_n_103 : STD_LOGIC;
  signal inst_datapath_n_104 : STD_LOGIC;
  signal inst_datapath_n_105 : STD_LOGIC;
  signal inst_datapath_n_106 : STD_LOGIC;
  signal inst_datapath_n_107 : STD_LOGIC;
  signal inst_datapath_n_108 : STD_LOGIC;
  signal inst_datapath_n_109 : STD_LOGIC;
  signal inst_datapath_n_110 : STD_LOGIC;
  signal inst_datapath_n_111 : STD_LOGIC;
  signal inst_datapath_n_112 : STD_LOGIC;
  signal inst_datapath_n_113 : STD_LOGIC;
  signal inst_datapath_n_114 : STD_LOGIC;
  signal inst_datapath_n_115 : STD_LOGIC;
  signal inst_datapath_n_116 : STD_LOGIC;
  signal inst_datapath_n_117 : STD_LOGIC;
  signal inst_datapath_n_118 : STD_LOGIC;
  signal inst_datapath_n_119 : STD_LOGIC;
  signal inst_datapath_n_120 : STD_LOGIC;
  signal inst_datapath_n_121 : STD_LOGIC;
  signal inst_datapath_n_122 : STD_LOGIC;
  signal inst_datapath_n_123 : STD_LOGIC;
  signal inst_datapath_n_124 : STD_LOGIC;
  signal inst_datapath_n_125 : STD_LOGIC;
  signal inst_datapath_n_126 : STD_LOGIC;
  signal inst_datapath_n_127 : STD_LOGIC;
  signal inst_datapath_n_128 : STD_LOGIC;
  signal inst_datapath_n_129 : STD_LOGIC;
  signal inst_datapath_n_130 : STD_LOGIC;
  signal inst_datapath_n_131 : STD_LOGIC;
  signal inst_datapath_n_2 : STD_LOGIC;
  signal inst_datapath_n_3 : STD_LOGIC;
  signal inst_memIN_n_81 : STD_LOGIC;
  signal inst_memIN_n_82 : STD_LOGIC;
  signal inst_memIN_n_83 : STD_LOGIC;
  signal inst_memIN_n_84 : STD_LOGIC;
  signal inst_memIN_n_85 : STD_LOGIC;
  signal inst_memIN_n_86 : STD_LOGIC;
  signal inst_memIN_n_87 : STD_LOGIC;
  signal inst_memIN_n_88 : STD_LOGIC;
  signal inst_memIN_n_89 : STD_LOGIC;
  signal inst_memIN_n_90 : STD_LOGIC;
  signal inst_memIN_n_91 : STD_LOGIC;
  signal inst_memIN_n_92 : STD_LOGIC;
  signal inst_memIN_n_93 : STD_LOGIC;
  signal inst_memIN_n_94 : STD_LOGIC;
  signal inst_memIN_n_95 : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal mult1_res_64 : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal mux4_sg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in1_in0 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \p_0_out__0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal pwropt : STD_LOGIC;
  signal pwropt_1 : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal sel1_internal : STD_LOGIC;
  signal sel2_internal : STD_LOGIC;
  signal we_OBUF : STD_LOGIC;
  attribute SPLIT_LOADS_ON_BUFG : boolean;
  attribute SPLIT_LOADS_ON_BUFG of clk_IBUF_BUFG_inst : label is std.standard.true;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of we_OBUF_inst : label is "SWEEP";
begin
\addrMEMout_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addrMEMout_OBUF(0),
      O => addrMEMout(0)
    );
\addrMEMout_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addrMEMout_OBUF(1),
      O => addrMEMout(1)
    );
\addrMEMout_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addrMEMout_OBUF(2),
      O => addrMEMout(2)
    );
\addrMEMout_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addrMEMout_OBUF(3),
      O => addrMEMout(3)
    );
\addrMEMout_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => addrMEMout(4)
    );
\addrMEMout_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => addrMEMout(5)
    );
\addrMEMout_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => addrMEMout(6)
    );
\addrMEMout_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => addrMEMout(7)
    );
\addrMEMout_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => addrMEMout(8)
    );
\addrMEMout_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => addrMEMout(9)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\dataOUT_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(0),
      O => dataOUT(0)
    );
\dataOUT_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(10),
      O => dataOUT(10)
    );
\dataOUT_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(11),
      O => dataOUT(11)
    );
\dataOUT_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(12),
      O => dataOUT(12)
    );
\dataOUT_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(13),
      O => dataOUT(13)
    );
\dataOUT_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(14),
      O => dataOUT(14)
    );
\dataOUT_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(15),
      O => dataOUT(15)
    );
\dataOUT_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(16),
      O => dataOUT(16)
    );
\dataOUT_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(17),
      O => dataOUT(17)
    );
\dataOUT_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(18),
      O => dataOUT(18)
    );
\dataOUT_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(19),
      O => dataOUT(19)
    );
\dataOUT_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(1),
      O => dataOUT(1)
    );
\dataOUT_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(20),
      O => dataOUT(20)
    );
\dataOUT_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(21),
      O => dataOUT(21)
    );
\dataOUT_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(22),
      O => dataOUT(22)
    );
\dataOUT_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(23),
      O => dataOUT(23)
    );
\dataOUT_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(24),
      O => dataOUT(24)
    );
\dataOUT_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(25),
      O => dataOUT(25)
    );
\dataOUT_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(26),
      O => dataOUT(26)
    );
\dataOUT_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(27),
      O => dataOUT(27)
    );
\dataOUT_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(28),
      O => dataOUT(28)
    );
\dataOUT_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(29),
      O => dataOUT(29)
    );
\dataOUT_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(2),
      O => dataOUT(2)
    );
\dataOUT_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(30),
      O => dataOUT(30)
    );
\dataOUT_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(31),
      O => dataOUT(31)
    );
\dataOUT_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(3),
      O => dataOUT(3)
    );
\dataOUT_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(4),
      O => dataOUT(4)
    );
\dataOUT_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(5),
      O => dataOUT(5)
    );
\dataOUT_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(6),
      O => dataOUT(6)
    );
\dataOUT_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(7),
      O => dataOUT(7)
    );
\dataOUT_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(8),
      O => dataOUT(8)
    );
\dataOUT_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => dataOUT_OBUF(9),
      O => dataOUT(9)
    );
done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => done_OBUF,
      O => done
    );
inst_control: entity work.control
     port map (
      \A__0\(0) => \A__0\(31),
      C(3 downto 0) => mult1_res_64(31 downto 28),
      CEP => en4_internal,
      CLK => clk_IBUF_BUFG,
      D(3 downto 0) => Det_out_internal(31 downto 28),
      DOADO(16 downto 1) => D_internal(15 downto 0),
      DOADO(0) => C_internal(15),
      E(0) => en1_internal,
      \FSM_onehot_currstate_reg[3]_0\(14 downto 0) => \p_0_out__0\(14 downto 0),
      P(31) => p_0_in1_in0,
      P(30) => inst_datapath_n_101,
      P(29) => inst_datapath_n_102,
      P(28) => inst_datapath_n_103,
      P(27) => inst_datapath_n_104,
      P(26) => inst_datapath_n_105,
      P(25) => inst_datapath_n_106,
      P(24) => inst_datapath_n_107,
      P(23) => inst_datapath_n_108,
      P(22) => inst_datapath_n_109,
      P(21) => inst_datapath_n_110,
      P(20) => inst_datapath_n_111,
      P(19) => inst_datapath_n_112,
      P(18) => inst_datapath_n_113,
      P(17) => inst_datapath_n_114,
      P(16) => inst_datapath_n_115,
      P(15) => inst_datapath_n_116,
      P(14) => inst_datapath_n_117,
      P(13) => inst_datapath_n_118,
      P(12) => inst_datapath_n_119,
      P(11) => inst_datapath_n_120,
      P(10) => inst_datapath_n_121,
      P(9) => inst_datapath_n_122,
      P(8) => inst_datapath_n_123,
      P(7) => inst_datapath_n_124,
      P(6) => inst_datapath_n_125,
      P(5) => inst_datapath_n_126,
      P(4) => inst_datapath_n_127,
      P(3) => inst_datapath_n_128,
      P(2) => inst_datapath_n_129,
      P(1) => inst_datapath_n_130,
      P(0) => inst_datapath_n_131,
      Q(2) => we_OBUF,
      Q(1) => sel1_internal,
      Q(0) => sel2_internal,
      \R3_reg[15]\(0) => inst_control_n_103,
      \R3_reg[19]\(3) => inst_control_n_104,
      \R3_reg[19]\(2) => inst_control_n_105,
      \R3_reg[19]\(1) => inst_control_n_106,
      \R3_reg[19]\(0) => inst_control_n_107,
      \R3_reg[23]\(3) => inst_control_n_108,
      \R3_reg[23]\(2) => inst_control_n_109,
      \R3_reg[23]\(1) => inst_control_n_110,
      \R3_reg[23]\(0) => inst_control_n_111,
      \R3_reg[27]\(3) => inst_control_n_112,
      \R3_reg[27]\(2) => inst_control_n_113,
      \R3_reg[27]\(1) => inst_control_n_114,
      \R3_reg[27]\(0) => inst_control_n_115,
      RSTP => rst_IBUF,
      S(3) => inst_control_n_99,
      S(2) => inst_control_n_100,
      S(1) => inst_control_n_101,
      S(0) => inst_control_n_102,
      \counterMEMin_reg[3]_0\(3 downto 0) => addrMEMin_internal(3 downto 0),
      \counterMEMout_reg[3]_0\(3 downto 0) => addrMEMout_OBUF(3 downto 0),
      done_OBUF => done_OBUF,
      en2_internal => en2_internal,
      en3_internal => en3_internal,
      lopt => lopt,
      mult1_res_64(31 downto 0) => R3(31 downto 0),
      mult1_res_64_0(31 downto 0) => R1(31 downto 0),
      \mult1_res_64__0\(31 downto 16) => B_internal(15 downto 0),
      \mult1_res_64__0\(15 downto 0) => A_internal(15 downto 0),
      \mult1_res_64__1\(31 downto 0) => R2(31 downto 0),
      mux4_sg(31 downto 0) => mux4_sg(31 downto 0),
      p_0_out(31 downto 0) => p_0_out(31 downto 0),
      pwropt => pwropt,
      \ramb_bl.ramb36_sin_bl.ram36_bl\(3) => inst_datapath_n_0,
      \ramb_bl.ramb36_sin_bl.ram36_bl\(2) => inst_datapath_n_1,
      \ramb_bl.ramb36_sin_bl.ram36_bl\(1) => inst_datapath_n_2,
      \ramb_bl.ramb36_sin_bl.ram36_bl\(0) => inst_datapath_n_3
    );
inst_datapath: entity work.datapath
     port map (
      A(30 downto 0) => A(30 downto 0),
      C(3 downto 0) => mult1_res_64(31 downto 28),
      CEP => en4_internal,
      CLK => clk_IBUF_BUFG,
      D(3) => inst_datapath_n_0,
      D(2) => inst_datapath_n_1,
      D(1) => inst_datapath_n_2,
      D(0) => inst_datapath_n_3,
      DOADO(31 downto 16) => F_internal(15 downto 0),
      DOADO(15 downto 0) => E_internal(15 downto 0),
      E(0) => en1_internal,
      \FSM_onehot_currstate_reg[3]\(27 downto 0) => Det_out_internal(27 downto 0),
      P(31) => p_0_in1_in0,
      P(30) => inst_datapath_n_101,
      P(29) => inst_datapath_n_102,
      P(28) => inst_datapath_n_103,
      P(27) => inst_datapath_n_104,
      P(26) => inst_datapath_n_105,
      P(25) => inst_datapath_n_106,
      P(24) => inst_datapath_n_107,
      P(23) => inst_datapath_n_108,
      P(22) => inst_datapath_n_109,
      P(21) => inst_datapath_n_110,
      P(20) => inst_datapath_n_111,
      P(19) => inst_datapath_n_112,
      P(18) => inst_datapath_n_113,
      P(17) => inst_datapath_n_114,
      P(16) => inst_datapath_n_115,
      P(15) => inst_datapath_n_116,
      P(14) => inst_datapath_n_117,
      P(13) => inst_datapath_n_118,
      P(12) => inst_datapath_n_119,
      P(11) => inst_datapath_n_120,
      P(10) => inst_datapath_n_121,
      P(9) => inst_datapath_n_122,
      P(8) => inst_datapath_n_123,
      P(7) => inst_datapath_n_124,
      P(6) => inst_datapath_n_125,
      P(5) => inst_datapath_n_126,
      P(4) => inst_datapath_n_127,
      P(3) => inst_datapath_n_128,
      P(2) => inst_datapath_n_129,
      P(1) => inst_datapath_n_130,
      P(0) => inst_datapath_n_131,
      Q(2) => we_OBUF,
      Q(1) => sel1_internal,
      Q(0) => sel2_internal,
      \R1_reg[31]_0\(31 downto 0) => R1(31 downto 0),
      \R2_reg[11]_0\(3) => inst_memIN_n_89,
      \R2_reg[11]_0\(2) => inst_memIN_n_90,
      \R2_reg[11]_0\(1) => inst_memIN_n_91,
      \R2_reg[11]_0\(0) => inst_memIN_n_92,
      \R2_reg[15]_0\(3) => inst_control_n_103,
      \R2_reg[15]_0\(2) => inst_memIN_n_93,
      \R2_reg[15]_0\(1) => inst_memIN_n_94,
      \R2_reg[15]_0\(0) => inst_memIN_n_95,
      \R2_reg[19]_0\(3) => inst_control_n_104,
      \R2_reg[19]_0\(2) => inst_control_n_105,
      \R2_reg[19]_0\(1) => inst_control_n_106,
      \R2_reg[19]_0\(0) => inst_control_n_107,
      \R2_reg[23]_0\(3) => inst_control_n_108,
      \R2_reg[23]_0\(2) => inst_control_n_109,
      \R2_reg[23]_0\(1) => inst_control_n_110,
      \R2_reg[23]_0\(0) => inst_control_n_111,
      \R2_reg[27]_0\(3) => inst_control_n_112,
      \R2_reg[27]_0\(2) => inst_control_n_113,
      \R2_reg[27]_0\(1) => inst_control_n_114,
      \R2_reg[27]_0\(0) => inst_control_n_115,
      \R2_reg[31]_0\(31 downto 0) => R2(31 downto 0),
      \R2_reg[31]_1\(3) => inst_control_n_99,
      \R2_reg[31]_1\(2) => inst_control_n_100,
      \R2_reg[31]_1\(1) => inst_control_n_101,
      \R2_reg[31]_1\(0) => inst_control_n_102,
      \R2_reg[7]_0\(3) => inst_memIN_n_85,
      \R2_reg[7]_0\(2) => inst_memIN_n_86,
      \R2_reg[7]_0\(1) => inst_memIN_n_87,
      \R2_reg[7]_0\(0) => inst_memIN_n_88,
      \R3_reg[31]_0\(31 downto 0) => R3(31 downto 0),
      \R3_reg[31]_1\(3 downto 0) => Det_out_internal(31 downto 28),
      RSTP => rst_IBUF,
      S(3) => inst_memIN_n_81,
      S(2) => inst_memIN_n_82,
      S(1) => inst_memIN_n_83,
      S(0) => inst_memIN_n_84,
      en2_internal => en2_internal,
      en3_internal => en3_internal,
      mux4_sg(31 downto 0) => mux4_sg(31 downto 0),
      p_0_out(31 downto 0) => p_0_out(31 downto 0)
    );
inst_memIN: entity work.MemIN
     port map (
      A(30 downto 0) => A(30 downto 0),
      \A__0\(0) => \A__0\(31),
      CLK => clk_IBUF_BUFG,
      DOADO(16 downto 1) => D_internal(15 downto 0),
      DOADO(0) => C_internal(15),
      \R2_reg[15]\(14 downto 0) => \p_0_out__0\(14 downto 0),
      S(3) => inst_memIN_n_81,
      S(2) => inst_memIN_n_82,
      S(1) => inst_memIN_n_83,
      S(0) => inst_memIN_n_84,
      addr(3 downto 0) => addrMEMin_internal(3 downto 0),
      en2_internal => en2_internal,
      en3_internal => en3_internal,
      \mux10_carry__6_i_4\(31 downto 0) => R3(31 downto 0),
      \mux10_carry__6_i_4_0\(31 downto 0) => R1(31 downto 0),
      pwropt => we_OBUF,
      pwropt_1 => rst_IBUF,
      pwropt_2 => pwropt_1,
      \ramb_bl.ramb36_sin_bl.ram36_bl\(31 downto 16) => B_internal(15 downto 0),
      \ramb_bl.ramb36_sin_bl.ram36_bl\(15 downto 0) => A_internal(15 downto 0),
      \ramb_bl.ramb36_sin_bl.ram36_bl_0\(3) => inst_memIN_n_85,
      \ramb_bl.ramb36_sin_bl.ram36_bl_0\(2) => inst_memIN_n_86,
      \ramb_bl.ramb36_sin_bl.ram36_bl_0\(1) => inst_memIN_n_87,
      \ramb_bl.ramb36_sin_bl.ram36_bl_0\(0) => inst_memIN_n_88,
      \ramb_bl.ramb36_sin_bl.ram36_bl_1\(3) => inst_memIN_n_89,
      \ramb_bl.ramb36_sin_bl.ram36_bl_1\(2) => inst_memIN_n_90,
      \ramb_bl.ramb36_sin_bl.ram36_bl_1\(1) => inst_memIN_n_91,
      \ramb_bl.ramb36_sin_bl.ram36_bl_1\(0) => inst_memIN_n_92,
      \ramb_bl.ramb36_sin_bl.ram36_bl_2\(2) => inst_memIN_n_93,
      \ramb_bl.ramb36_sin_bl.ram36_bl_2\(1) => inst_memIN_n_94,
      \ramb_bl.ramb36_sin_bl.ram36_bl_2\(0) => inst_memIN_n_95,
      \ramb_bl.ramb36_sin_bl.ram36_bl_3\(31 downto 16) => F_internal(15 downto 0),
      \ramb_bl.ramb36_sin_bl.ram36_bl_3\(15 downto 0) => E_internal(15 downto 0)
    );
inst_memOUT: entity work.memOUT
     port map (
      CLK => clk_IBUF_BUFG,
      DIADI(31 downto 0) => Det_out_internal(31 downto 0),
      DOADO(31 downto 0) => dataOUT_OBUF(31 downto 0),
      Q(0) => we_OBUF,
      pwropt => pwropt,
      pwropt_1 => pwropt_1,
      \ramb_bl.ramb36_sin_bl.ram36_bl\(3 downto 0) => addrMEMout_OBUF(3 downto 0)
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => lopt,
      O => we
    );
end STRUCTURE;

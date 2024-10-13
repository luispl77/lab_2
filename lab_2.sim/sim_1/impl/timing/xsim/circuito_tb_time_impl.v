// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Oct 11 16:31:35 2024
// Host        : Jaime running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/minde/Ambiente de Trabalho/Proj
//               SD/LAB/2/lab_2/lab_2.sim/sim_1/impl/timing/xsim/circuito_tb_time_impl.v}
// Design      : circuito
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module MemIN
   (A,
    \ramb_bl.ramb36_sin_bl.ram36_bl ,
    DOADO,
    A__0,
    S,
    \ramb_bl.ramb36_sin_bl.ram36_bl_0 ,
    \ramb_bl.ramb36_sin_bl.ram36_bl_1 ,
    \ramb_bl.ramb36_sin_bl.ram36_bl_2 ,
    \ramb_bl.ramb36_sin_bl.ram36_bl_3 ,
    mux10_carry__6_i_4,
    mux10_carry__6_i_4_0,
    en2_internal,
    en3_internal,
    \R2_reg[15] ,
    CLK,
    addr,
    pwropt,
    pwropt_1,
    pwropt_2);
  output [30:0]A;
  output [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl ;
  output [16:0]DOADO;
  output [0:0]A__0;
  output [3:0]S;
  output [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  output [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl_1 ;
  output [2:0]\ramb_bl.ramb36_sin_bl.ram36_bl_2 ;
  output [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl_3 ;
  input [31:0]mux10_carry__6_i_4;
  input [31:0]mux10_carry__6_i_4_0;
  input en2_internal;
  input en3_internal;
  input [14:0]\R2_reg[15] ;
  input CLK;
  input [3:0]addr;
  input pwropt;
  input pwropt_1;
  output pwropt_2;

  wire [30:0]A;
  wire [0:0]A__0;
  wire CLK;
  wire [14:0]C_internal;
  wire [16:0]DOADO;
  wire [14:0]\R2_reg[15] ;
  wire [3:0]S;
  wire [3:0]addr;
  wire en2_internal;
  wire en3_internal;
  wire [31:0]mux10_carry__6_i_4;
  wire [31:0]mux10_carry__6_i_4_0;
  wire pwropt;
  wire pwropt_1;
  wire pwropt_2;
  wire pwropt_3;
  wire [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl ;
  wire [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  wire [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl_1 ;
  wire [2:0]\ramb_bl.ramb36_sin_bl.ram36_bl_2 ;
  wire [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl_3 ;

  unimacro_BRAM_SINGLE_MACRO__parameterized0 MEM_in0
       (.A(A),
        .A__0(A__0),
        .CLK(CLK),
        .DOADO({DOADO[0],C_internal}),
        .\R2_reg[15] (\R2_reg[15] ),
        .S(S),
        .addr(addr),
        .en2_internal(en2_internal),
        .en3_internal(en3_internal),
        .mux10_carry__6_i_4(mux10_carry__6_i_4),
        .mux10_carry__6_i_4_0(mux10_carry__6_i_4_0),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .pwropt_2(pwropt_2),
        .pwropt_3(pwropt_3),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_0 (\ramb_bl.ramb36_sin_bl.ram36_bl ),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_1 (\ramb_bl.ramb36_sin_bl.ram36_bl_0 ),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_2 (\ramb_bl.ramb36_sin_bl.ram36_bl_1 ),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_3 (\ramb_bl.ramb36_sin_bl.ram36_bl_2 ));
  unimacro_BRAM_SINGLE_MACRO__parameterized1 MEM_in1
       (.CLK(CLK),
        .DOADO({DOADO,C_internal}),
        .addr(addr),
        .pwropt(pwropt_2),
        .pwropt_1(pwropt_3));
  unimacro_BRAM_SINGLE_MACRO__parameterized2 MEM_in2
       (.CLK(CLK),
        .addr(addr),
        .pwropt(pwropt_2),
        .pwropt_1(pwropt_3),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_0 (\ramb_bl.ramb36_sin_bl.ram36_bl_3 ));
endmodule

(* ECO_CHECKSUM = "2210c724" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module circuito
   (clk,
    rst,
    we,
    done,
    addrMEMout,
    dataOUT);
  input clk;
  input rst;
  output we;
  output done;
  output [9:0]addrMEMout;
  output [31:0]dataOUT;

  wire [30:0]A;
  wire [31:31]A__0;
  wire [15:0]A_internal;
  wire [15:0]B_internal;
  wire [15:15]C_internal;
  wire [15:0]D_internal;
  wire [31:0]Det_out_internal;
  wire [15:0]E_internal;
  wire [15:0]F_internal;
  wire [31:0]R1;
  wire [31:0]R2;
  wire [31:0]R3;
  wire [3:0]addrMEMin_internal;
  wire [9:0]addrMEMout;
  wire [3:0]addrMEMout_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]dataOUT;
  wire [31:0]dataOUT_OBUF;
  wire done;
  wire done_OBUF;
  wire en1_internal;
  wire en2_internal;
  wire en3_internal;
  wire en4_internal;
  wire inst_control_n_100;
  wire inst_control_n_101;
  wire inst_control_n_102;
  wire inst_control_n_103;
  wire inst_control_n_104;
  wire inst_control_n_105;
  wire inst_control_n_106;
  wire inst_control_n_107;
  wire inst_control_n_108;
  wire inst_control_n_109;
  wire inst_control_n_110;
  wire inst_control_n_111;
  wire inst_control_n_112;
  wire inst_control_n_113;
  wire inst_control_n_114;
  wire inst_control_n_115;
  wire inst_control_n_99;
  wire inst_datapath_n_0;
  wire inst_datapath_n_1;
  wire inst_datapath_n_101;
  wire inst_datapath_n_102;
  wire inst_datapath_n_103;
  wire inst_datapath_n_104;
  wire inst_datapath_n_105;
  wire inst_datapath_n_106;
  wire inst_datapath_n_107;
  wire inst_datapath_n_108;
  wire inst_datapath_n_109;
  wire inst_datapath_n_110;
  wire inst_datapath_n_111;
  wire inst_datapath_n_112;
  wire inst_datapath_n_113;
  wire inst_datapath_n_114;
  wire inst_datapath_n_115;
  wire inst_datapath_n_116;
  wire inst_datapath_n_117;
  wire inst_datapath_n_118;
  wire inst_datapath_n_119;
  wire inst_datapath_n_120;
  wire inst_datapath_n_121;
  wire inst_datapath_n_122;
  wire inst_datapath_n_123;
  wire inst_datapath_n_124;
  wire inst_datapath_n_125;
  wire inst_datapath_n_126;
  wire inst_datapath_n_127;
  wire inst_datapath_n_128;
  wire inst_datapath_n_129;
  wire inst_datapath_n_130;
  wire inst_datapath_n_131;
  wire inst_datapath_n_2;
  wire inst_datapath_n_3;
  wire inst_memIN_n_81;
  wire inst_memIN_n_82;
  wire inst_memIN_n_83;
  wire inst_memIN_n_84;
  wire inst_memIN_n_85;
  wire inst_memIN_n_86;
  wire inst_memIN_n_87;
  wire inst_memIN_n_88;
  wire inst_memIN_n_89;
  wire inst_memIN_n_90;
  wire inst_memIN_n_91;
  wire inst_memIN_n_92;
  wire inst_memIN_n_93;
  wire inst_memIN_n_94;
  wire inst_memIN_n_95;
  wire lopt;
  wire [31:28]mult1_res_64;
  wire [31:0]mux4_sg;
  wire p_0_in1_in0;
  wire [31:0]p_0_out;
  wire [14:0]p_0_out__0;
  wire pwropt;
  wire pwropt_1;
  wire rst;
  wire rst_IBUF;
  wire sel1_internal;
  wire sel2_internal;
  wire we;
  wire we_OBUF;

initial begin
 $sdf_annotate("circuito_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \addrMEMout_OBUF[0]_inst 
       (.I(addrMEMout_OBUF[0]),
        .O(addrMEMout[0]));
  OBUF \addrMEMout_OBUF[1]_inst 
       (.I(addrMEMout_OBUF[1]),
        .O(addrMEMout[1]));
  OBUF \addrMEMout_OBUF[2]_inst 
       (.I(addrMEMout_OBUF[2]),
        .O(addrMEMout[2]));
  OBUF \addrMEMout_OBUF[3]_inst 
       (.I(addrMEMout_OBUF[3]),
        .O(addrMEMout[3]));
  OBUF \addrMEMout_OBUF[4]_inst 
       (.I(1'b0),
        .O(addrMEMout[4]));
  OBUF \addrMEMout_OBUF[5]_inst 
       (.I(1'b0),
        .O(addrMEMout[5]));
  OBUF \addrMEMout_OBUF[6]_inst 
       (.I(1'b0),
        .O(addrMEMout[6]));
  OBUF \addrMEMout_OBUF[7]_inst 
       (.I(1'b0),
        .O(addrMEMout[7]));
  OBUF \addrMEMout_OBUF[8]_inst 
       (.I(1'b0),
        .O(addrMEMout[8]));
  OBUF \addrMEMout_OBUF[9]_inst 
       (.I(1'b0),
        .O(addrMEMout[9]));
  (* SPLIT_LOADS_ON_BUFG *) 
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \dataOUT_OBUF[0]_inst 
       (.I(dataOUT_OBUF[0]),
        .O(dataOUT[0]));
  OBUF \dataOUT_OBUF[10]_inst 
       (.I(dataOUT_OBUF[10]),
        .O(dataOUT[10]));
  OBUF \dataOUT_OBUF[11]_inst 
       (.I(dataOUT_OBUF[11]),
        .O(dataOUT[11]));
  OBUF \dataOUT_OBUF[12]_inst 
       (.I(dataOUT_OBUF[12]),
        .O(dataOUT[12]));
  OBUF \dataOUT_OBUF[13]_inst 
       (.I(dataOUT_OBUF[13]),
        .O(dataOUT[13]));
  OBUF \dataOUT_OBUF[14]_inst 
       (.I(dataOUT_OBUF[14]),
        .O(dataOUT[14]));
  OBUF \dataOUT_OBUF[15]_inst 
       (.I(dataOUT_OBUF[15]),
        .O(dataOUT[15]));
  OBUF \dataOUT_OBUF[16]_inst 
       (.I(dataOUT_OBUF[16]),
        .O(dataOUT[16]));
  OBUF \dataOUT_OBUF[17]_inst 
       (.I(dataOUT_OBUF[17]),
        .O(dataOUT[17]));
  OBUF \dataOUT_OBUF[18]_inst 
       (.I(dataOUT_OBUF[18]),
        .O(dataOUT[18]));
  OBUF \dataOUT_OBUF[19]_inst 
       (.I(dataOUT_OBUF[19]),
        .O(dataOUT[19]));
  OBUF \dataOUT_OBUF[1]_inst 
       (.I(dataOUT_OBUF[1]),
        .O(dataOUT[1]));
  OBUF \dataOUT_OBUF[20]_inst 
       (.I(dataOUT_OBUF[20]),
        .O(dataOUT[20]));
  OBUF \dataOUT_OBUF[21]_inst 
       (.I(dataOUT_OBUF[21]),
        .O(dataOUT[21]));
  OBUF \dataOUT_OBUF[22]_inst 
       (.I(dataOUT_OBUF[22]),
        .O(dataOUT[22]));
  OBUF \dataOUT_OBUF[23]_inst 
       (.I(dataOUT_OBUF[23]),
        .O(dataOUT[23]));
  OBUF \dataOUT_OBUF[24]_inst 
       (.I(dataOUT_OBUF[24]),
        .O(dataOUT[24]));
  OBUF \dataOUT_OBUF[25]_inst 
       (.I(dataOUT_OBUF[25]),
        .O(dataOUT[25]));
  OBUF \dataOUT_OBUF[26]_inst 
       (.I(dataOUT_OBUF[26]),
        .O(dataOUT[26]));
  OBUF \dataOUT_OBUF[27]_inst 
       (.I(dataOUT_OBUF[27]),
        .O(dataOUT[27]));
  OBUF \dataOUT_OBUF[28]_inst 
       (.I(dataOUT_OBUF[28]),
        .O(dataOUT[28]));
  OBUF \dataOUT_OBUF[29]_inst 
       (.I(dataOUT_OBUF[29]),
        .O(dataOUT[29]));
  OBUF \dataOUT_OBUF[2]_inst 
       (.I(dataOUT_OBUF[2]),
        .O(dataOUT[2]));
  OBUF \dataOUT_OBUF[30]_inst 
       (.I(dataOUT_OBUF[30]),
        .O(dataOUT[30]));
  OBUF \dataOUT_OBUF[31]_inst 
       (.I(dataOUT_OBUF[31]),
        .O(dataOUT[31]));
  OBUF \dataOUT_OBUF[3]_inst 
       (.I(dataOUT_OBUF[3]),
        .O(dataOUT[3]));
  OBUF \dataOUT_OBUF[4]_inst 
       (.I(dataOUT_OBUF[4]),
        .O(dataOUT[4]));
  OBUF \dataOUT_OBUF[5]_inst 
       (.I(dataOUT_OBUF[5]),
        .O(dataOUT[5]));
  OBUF \dataOUT_OBUF[6]_inst 
       (.I(dataOUT_OBUF[6]),
        .O(dataOUT[6]));
  OBUF \dataOUT_OBUF[7]_inst 
       (.I(dataOUT_OBUF[7]),
        .O(dataOUT[7]));
  OBUF \dataOUT_OBUF[8]_inst 
       (.I(dataOUT_OBUF[8]),
        .O(dataOUT[8]));
  OBUF \dataOUT_OBUF[9]_inst 
       (.I(dataOUT_OBUF[9]),
        .O(dataOUT[9]));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  control inst_control
       (.A__0(A__0),
        .C(mult1_res_64),
        .CEP(en4_internal),
        .CLK(clk_IBUF_BUFG),
        .D(Det_out_internal[31:28]),
        .DOADO({D_internal,C_internal}),
        .E(en1_internal),
        .\FSM_onehot_currstate_reg[3]_0 (p_0_out__0),
        .P({p_0_in1_in0,inst_datapath_n_101,inst_datapath_n_102,inst_datapath_n_103,inst_datapath_n_104,inst_datapath_n_105,inst_datapath_n_106,inst_datapath_n_107,inst_datapath_n_108,inst_datapath_n_109,inst_datapath_n_110,inst_datapath_n_111,inst_datapath_n_112,inst_datapath_n_113,inst_datapath_n_114,inst_datapath_n_115,inst_datapath_n_116,inst_datapath_n_117,inst_datapath_n_118,inst_datapath_n_119,inst_datapath_n_120,inst_datapath_n_121,inst_datapath_n_122,inst_datapath_n_123,inst_datapath_n_124,inst_datapath_n_125,inst_datapath_n_126,inst_datapath_n_127,inst_datapath_n_128,inst_datapath_n_129,inst_datapath_n_130,inst_datapath_n_131}),
        .Q({we_OBUF,sel1_internal,sel2_internal}),
        .\R3_reg[15] (inst_control_n_103),
        .\R3_reg[19] ({inst_control_n_104,inst_control_n_105,inst_control_n_106,inst_control_n_107}),
        .\R3_reg[23] ({inst_control_n_108,inst_control_n_109,inst_control_n_110,inst_control_n_111}),
        .\R3_reg[27] ({inst_control_n_112,inst_control_n_113,inst_control_n_114,inst_control_n_115}),
        .RSTP(rst_IBUF),
        .S({inst_control_n_99,inst_control_n_100,inst_control_n_101,inst_control_n_102}),
        .\counterMEMin_reg[3]_0 (addrMEMin_internal),
        .\counterMEMout_reg[3]_0 (addrMEMout_OBUF),
        .done_OBUF(done_OBUF),
        .en2_internal(en2_internal),
        .en3_internal(en3_internal),
        .lopt(lopt),
        .mult1_res_64(R3),
        .mult1_res_64_0(R1),
        .mult1_res_64__0({B_internal,A_internal}),
        .mult1_res_64__1(R2),
        .mux4_sg(mux4_sg),
        .p_0_out(p_0_out),
        .pwropt(pwropt),
        .\ramb_bl.ramb36_sin_bl.ram36_bl ({inst_datapath_n_0,inst_datapath_n_1,inst_datapath_n_2,inst_datapath_n_3}));
  datapath inst_datapath
       (.A(A),
        .C(mult1_res_64),
        .CEP(en4_internal),
        .CLK(clk_IBUF_BUFG),
        .D({inst_datapath_n_0,inst_datapath_n_1,inst_datapath_n_2,inst_datapath_n_3}),
        .DOADO({F_internal,E_internal}),
        .E(en1_internal),
        .\FSM_onehot_currstate_reg[3] (Det_out_internal[27:0]),
        .P({p_0_in1_in0,inst_datapath_n_101,inst_datapath_n_102,inst_datapath_n_103,inst_datapath_n_104,inst_datapath_n_105,inst_datapath_n_106,inst_datapath_n_107,inst_datapath_n_108,inst_datapath_n_109,inst_datapath_n_110,inst_datapath_n_111,inst_datapath_n_112,inst_datapath_n_113,inst_datapath_n_114,inst_datapath_n_115,inst_datapath_n_116,inst_datapath_n_117,inst_datapath_n_118,inst_datapath_n_119,inst_datapath_n_120,inst_datapath_n_121,inst_datapath_n_122,inst_datapath_n_123,inst_datapath_n_124,inst_datapath_n_125,inst_datapath_n_126,inst_datapath_n_127,inst_datapath_n_128,inst_datapath_n_129,inst_datapath_n_130,inst_datapath_n_131}),
        .Q({we_OBUF,sel1_internal,sel2_internal}),
        .\R1_reg[31]_0 (R1),
        .\R2_reg[11]_0 ({inst_memIN_n_89,inst_memIN_n_90,inst_memIN_n_91,inst_memIN_n_92}),
        .\R2_reg[15]_0 ({inst_control_n_103,inst_memIN_n_93,inst_memIN_n_94,inst_memIN_n_95}),
        .\R2_reg[19]_0 ({inst_control_n_104,inst_control_n_105,inst_control_n_106,inst_control_n_107}),
        .\R2_reg[23]_0 ({inst_control_n_108,inst_control_n_109,inst_control_n_110,inst_control_n_111}),
        .\R2_reg[27]_0 ({inst_control_n_112,inst_control_n_113,inst_control_n_114,inst_control_n_115}),
        .\R2_reg[31]_0 (R2),
        .\R2_reg[31]_1 ({inst_control_n_99,inst_control_n_100,inst_control_n_101,inst_control_n_102}),
        .\R2_reg[7]_0 ({inst_memIN_n_85,inst_memIN_n_86,inst_memIN_n_87,inst_memIN_n_88}),
        .\R3_reg[31]_0 (R3),
        .\R3_reg[31]_1 (Det_out_internal[31:28]),
        .RSTP(rst_IBUF),
        .S({inst_memIN_n_81,inst_memIN_n_82,inst_memIN_n_83,inst_memIN_n_84}),
        .en2_internal(en2_internal),
        .en3_internal(en3_internal),
        .mux4_sg(mux4_sg),
        .p_0_out(p_0_out));
  MemIN inst_memIN
       (.A(A),
        .A__0(A__0),
        .CLK(clk_IBUF_BUFG),
        .DOADO({D_internal,C_internal}),
        .\R2_reg[15] (p_0_out__0),
        .S({inst_memIN_n_81,inst_memIN_n_82,inst_memIN_n_83,inst_memIN_n_84}),
        .addr(addrMEMin_internal),
        .en2_internal(en2_internal),
        .en3_internal(en3_internal),
        .mux10_carry__6_i_4(R3),
        .mux10_carry__6_i_4_0(R1),
        .pwropt(we_OBUF),
        .pwropt_1(rst_IBUF),
        .pwropt_2(pwropt_1),
        .\ramb_bl.ramb36_sin_bl.ram36_bl ({B_internal,A_internal}),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_0 ({inst_memIN_n_85,inst_memIN_n_86,inst_memIN_n_87,inst_memIN_n_88}),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_1 ({inst_memIN_n_89,inst_memIN_n_90,inst_memIN_n_91,inst_memIN_n_92}),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_2 ({inst_memIN_n_93,inst_memIN_n_94,inst_memIN_n_95}),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_3 ({F_internal,E_internal}));
  memOUT inst_memOUT
       (.CLK(clk_IBUF_BUFG),
        .DIADI(Det_out_internal),
        .DOADO(dataOUT_OBUF),
        .Q(we_OBUF),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .\ramb_bl.ramb36_sin_bl.ram36_bl (addrMEMout_OBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF we_OBUF_inst
       (.I(lopt),
        .O(we));
endmodule

module control
   (CEP,
    Q,
    E,
    \counterMEMin_reg[3]_0 ,
    \counterMEMout_reg[3]_0 ,
    \FSM_onehot_currstate_reg[3]_0 ,
    en2_internal,
    en3_internal,
    done_OBUF,
    p_0_out,
    mux4_sg,
    D,
    S,
    \R3_reg[15] ,
    \R3_reg[19] ,
    \R3_reg[23] ,
    \R3_reg[27] ,
    RSTP,
    P,
    DOADO,
    mult1_res_64__0,
    mult1_res_64,
    mult1_res_64_0,
    mult1_res_64__1,
    C,
    \ramb_bl.ramb36_sin_bl.ram36_bl ,
    A__0,
    CLK,
    lopt,
    pwropt);
  output CEP;
  output [2:0]Q;
  output [0:0]E;
  output [3:0]\counterMEMin_reg[3]_0 ;
  output [3:0]\counterMEMout_reg[3]_0 ;
  output [14:0]\FSM_onehot_currstate_reg[3]_0 ;
  output en2_internal;
  output en3_internal;
  output done_OBUF;
  output [31:0]p_0_out;
  output [31:0]mux4_sg;
  output [3:0]D;
  output [3:0]S;
  output [0:0]\R3_reg[15] ;
  output [3:0]\R3_reg[19] ;
  output [3:0]\R3_reg[23] ;
  output [3:0]\R3_reg[27] ;
  input RSTP;
  input [31:0]P;
  input [16:0]DOADO;
  input [31:0]mult1_res_64__0;
  input [31:0]mult1_res_64;
  input [31:0]mult1_res_64_0;
  input [31:0]mult1_res_64__1;
  input [3:0]C;
  input [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl ;
  input [0:0]A__0;
  input CLK;
  output lopt;
  output pwropt;

  wire [0:0]A__0;
  wire [3:0]C;
  wire CEP;
  wire CLK;
  wire [3:0]D;
  wire [16:0]DOADO;
  wire [0:0]E;
  wire \FSM_onehot_currstate[2]_i_1_n_0 ;
  wire \FSM_onehot_currstate[2]_i_2_n_0 ;
  wire \FSM_onehot_currstate[8]_i_1_n_0 ;
  wire [14:0]\FSM_onehot_currstate_reg[3]_0 ;
  wire \FSM_onehot_currstate_reg[6]_lopt_replica_1 ;
  wire \FSM_onehot_currstate_reg_n_0_[1] ;
  wire \FSM_onehot_currstate_reg_n_0_[4] ;
  wire \FSM_onehot_currstate_reg_n_0_[5] ;
  wire \FSM_onehot_currstate_reg_n_0_[8] ;
  wire [31:0]P;
  wire [2:0]Q;
  wire [0:0]\R3_reg[15] ;
  wire [3:0]\R3_reg[19] ;
  wire [3:0]\R3_reg[23] ;
  wire [3:0]\R3_reg[27] ;
  wire RSTP;
  wire [3:0]S;
  wire [4:4]counterMEMin_reg;
  wire [3:0]\counterMEMin_reg[3]_0 ;
  wire counterMEMout;
  wire \counterMEMout[3]_i_1_n_0 ;
  wire [3:0]\counterMEMout_reg[3]_0 ;
  wire done_OBUF;
  wire done_OBUF_inst_i_2_n_0;
  wire en2_internal;
  wire en3_internal;
  wire [31:0]mult1_res_64;
  wire [31:0]mult1_res_64_0;
  wire [31:0]mult1_res_64__0;
  wire [31:0]mult1_res_64__1;
  wire mux10_carry__2_i_9_n_0;
  wire [31:0]mux4_sg;
  wire [31:0]p_0_out;
  wire [30:15]p_0_out__0;
  wire [4:0]plusOp;
  wire [3:0]plusOp__0;
  wire [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl ;

  assign lopt = \FSM_onehot_currstate_reg[6]_lopt_replica_1 ;
  assign pwropt = \counterMEMout[3]_i_1_n_0 ;
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \FSM_onehot_currstate[2]_i_1 
       (.I0(\counterMEMin_reg[3]_0 [2]),
        .I1(\counterMEMin_reg[3]_0 [3]),
        .I2(\FSM_onehot_currstate[2]_i_2_n_0 ),
        .I3(counterMEMout),
        .I4(\FSM_onehot_currstate_reg_n_0_[1] ),
        .O(\FSM_onehot_currstate[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_onehot_currstate[2]_i_2 
       (.I0(counterMEMin_reg),
        .I1(\counterMEMin_reg[3]_0 [0]),
        .I2(\counterMEMin_reg[3]_0 [1]),
        .O(\FSM_onehot_currstate[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \FSM_onehot_currstate[8]_i_1 
       (.I0(counterMEMin_reg),
        .I1(\counterMEMin_reg[3]_0 [0]),
        .I2(\counterMEMin_reg[3]_0 [1]),
        .I3(counterMEMout),
        .I4(done_OBUF_inst_i_2_n_0),
        .I5(\FSM_onehot_currstate_reg_n_0_[8] ),
        .O(\FSM_onehot_currstate[8]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_currstate_reg_n_0_[1] ),
        .S(RSTP));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_currstate[2]_i_1_n_0 ),
        .Q(Q[0]),
        .R(RSTP));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Q[1]),
        .R(RSTP));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\FSM_onehot_currstate_reg_n_0_[4] ),
        .R(RSTP));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_currstate_reg_n_0_[4] ),
        .Q(\FSM_onehot_currstate_reg_n_0_[5] ),
        .R(RSTP));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_currstate_reg_n_0_[5] ),
        .Q(Q[2]),
        .R(RSTP));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[6]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_currstate_reg_n_0_[5] ),
        .Q(\FSM_onehot_currstate_reg[6]_lopt_replica_1 ),
        .R(RSTP));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[2]),
        .Q(counterMEMout),
        .R(RSTP));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_currstate[8]_i_1_n_0 ),
        .Q(\FSM_onehot_currstate_reg_n_0_[8] ),
        .R(RSTP));
  LUT2 #(
    .INIT(4'hE)) 
    \R1[31]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .O(E));
  LUT2 #(
    .INIT(4'hE)) 
    \R2[31]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .O(en2_internal));
  LUT2 #(
    .INIT(4'hE)) 
    \R3[31]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(en3_internal));
  LUT2 #(
    .INIT(4'hE)) 
    R4_reg_i_1
       (.I0(Q[0]),
        .I1(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(CEP));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counterMEMin[0]_i_1 
       (.I0(\counterMEMin_reg[3]_0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counterMEMin[1]_i_1 
       (.I0(\counterMEMin_reg[3]_0 [0]),
        .I1(\counterMEMin_reg[3]_0 [1]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \counterMEMin[2]_i_1 
       (.I0(\counterMEMin_reg[3]_0 [0]),
        .I1(\counterMEMin_reg[3]_0 [1]),
        .I2(\counterMEMin_reg[3]_0 [2]),
        .O(plusOp[2]));
  (* \PinAttr:I0:HOLD_DETOUR  = "155" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counterMEMin[3]_i_1 
       (.I0(\counterMEMin_reg[3]_0 [1]),
        .I1(\counterMEMin_reg[3]_0 [0]),
        .I2(\counterMEMin_reg[3]_0 [2]),
        .I3(\counterMEMin_reg[3]_0 [3]),
        .O(plusOp[3]));
  (* \PinAttr:I2:HOLD_DETOUR  = "155" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counterMEMin[4]_i_1 
       (.I0(\counterMEMin_reg[3]_0 [2]),
        .I1(\counterMEMin_reg[3]_0 [0]),
        .I2(\counterMEMin_reg[3]_0 [1]),
        .I3(\counterMEMin_reg[3]_0 [3]),
        .I4(counterMEMin_reg),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMin_reg[0] 
       (.C(CLK),
        .CE(Q[2]),
        .D(plusOp[0]),
        .Q(\counterMEMin_reg[3]_0 [0]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMin_reg[1] 
       (.C(CLK),
        .CE(Q[2]),
        .D(plusOp[1]),
        .Q(\counterMEMin_reg[3]_0 [1]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMin_reg[2] 
       (.C(CLK),
        .CE(Q[2]),
        .D(plusOp[2]),
        .Q(\counterMEMin_reg[3]_0 [2]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMin_reg[3] 
       (.C(CLK),
        .CE(Q[2]),
        .D(plusOp[3]),
        .Q(\counterMEMin_reg[3]_0 [3]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMin_reg[4] 
       (.C(CLK),
        .CE(Q[2]),
        .D(plusOp[4]),
        .Q(counterMEMin_reg),
        .R(RSTP));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counterMEMout[0]_i_1 
       (.I0(\counterMEMout_reg[3]_0 [0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counterMEMout[1]_i_1 
       (.I0(\counterMEMout_reg[3]_0 [0]),
        .I1(\counterMEMout_reg[3]_0 [1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counterMEMout[2]_i_1 
       (.I0(\counterMEMout_reg[3]_0 [0]),
        .I1(\counterMEMout_reg[3]_0 [1]),
        .I2(\counterMEMout_reg[3]_0 [2]),
        .O(plusOp__0[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \counterMEMout[3]_i_1 
       (.I0(counterMEMout),
        .I1(RSTP),
        .O(\counterMEMout[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counterMEMout[3]_i_2 
       (.I0(\counterMEMout_reg[3]_0 [1]),
        .I1(\counterMEMout_reg[3]_0 [0]),
        .I2(\counterMEMout_reg[3]_0 [2]),
        .I3(\counterMEMout_reg[3]_0 [3]),
        .O(plusOp__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMout_reg[0] 
       (.C(CLK),
        .CE(\counterMEMout[3]_i_1_n_0 ),
        .D(plusOp__0[0]),
        .Q(\counterMEMout_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMout_reg[1] 
       (.C(CLK),
        .CE(\counterMEMout[3]_i_1_n_0 ),
        .D(plusOp__0[1]),
        .Q(\counterMEMout_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMout_reg[2] 
       (.C(CLK),
        .CE(\counterMEMout[3]_i_1_n_0 ),
        .D(plusOp__0[2]),
        .Q(\counterMEMout_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMout_reg[3] 
       (.C(CLK),
        .CE(\counterMEMout[3]_i_1_n_0 ),
        .D(plusOp__0[3]),
        .Q(\counterMEMout_reg[3]_0 [3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    done_OBUF_inst_i_1
       (.I0(done_OBUF_inst_i_2_n_0),
        .I1(\counterMEMin_reg[3]_0 [1]),
        .I2(\counterMEMin_reg[3]_0 [0]),
        .I3(counterMEMout),
        .I4(counterMEMin_reg),
        .I5(\FSM_onehot_currstate_reg_n_0_[8] ),
        .O(done_OBUF));
  LUT2 #(
    .INIT(4'hE)) 
    done_OBUF_inst_i_2
       (.I0(\counterMEMin_reg[3]_0 [3]),
        .I1(\counterMEMin_reg[3]_0 [2]),
        .O(done_OBUF_inst_i_2_n_0));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__0_i_1
       (.I0(mult1_res_64__1[16]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[16]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_10
       (.I0(mult1_res_64[9]),
        .I1(mult1_res_64_0[9]),
        .I2(mult1_res_64__0[9]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[9]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_11
       (.I0(mult1_res_64[8]),
        .I1(mult1_res_64_0[8]),
        .I2(mult1_res_64__0[8]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[8]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_12
       (.I0(mult1_res_64[7]),
        .I1(mult1_res_64_0[7]),
        .I2(mult1_res_64__0[7]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[7]));
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_13
       (.I0(mult1_res_64[6]),
        .I1(mult1_res_64_0[6]),
        .I2(mult1_res_64__0[6]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[6]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_14
       (.I0(mult1_res_64[5]),
        .I1(mult1_res_64_0[5]),
        .I2(mult1_res_64__0[5]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[5]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_15
       (.I0(mult1_res_64[4]),
        .I1(mult1_res_64_0[4]),
        .I2(mult1_res_64__0[4]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[4]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_16
       (.I0(mult1_res_64[3]),
        .I1(mult1_res_64_0[3]),
        .I2(mult1_res_64__0[3]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[3]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_17
       (.I0(mult1_res_64[2]),
        .I1(mult1_res_64_0[2]),
        .I2(mult1_res_64__0[2]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[2]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_18
       (.I0(mult1_res_64[1]),
        .I1(mult1_res_64_0[1]),
        .I2(mult1_res_64__0[1]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_19
       (.I0(mult1_res_64[0]),
        .I1(mult1_res_64_0[0]),
        .I2(mult1_res_64__0[0]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[0]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__0_i_2
       (.I0(mult1_res_64__1[15]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[15]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64__0_i_3
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[16]),
        .I2(mult1_res_64_0[16]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[16]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64__0_i_4
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[15]),
        .I2(mult1_res_64_0[15]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[15]));
  (* PHYS_OPT_MODIFIED = "PLACEMENT_OPT PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_5
       (.I0(mult1_res_64[14]),
        .I1(mult1_res_64_0[14]),
        .I2(mult1_res_64__0[14]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[14]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_6
       (.I0(mult1_res_64[13]),
        .I1(mult1_res_64_0[13]),
        .I2(mult1_res_64__0[13]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[13]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_7
       (.I0(mult1_res_64[12]),
        .I1(mult1_res_64_0[12]),
        .I2(mult1_res_64__0[12]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[12]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_8
       (.I0(mult1_res_64[11]),
        .I1(mult1_res_64_0[11]),
        .I2(mult1_res_64__0[11]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[11]));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT6 #(
    .INIT(64'h000000F0AAAAAACC)) 
    mult1_res_64__0_i_9
       (.I0(mult1_res_64[10]),
        .I1(mult1_res_64_0[10]),
        .I2(mult1_res_64__0[10]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[10]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_1
       (.I0(mult1_res_64__1[31]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[31]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_10
       (.I0(mult1_res_64__1[22]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[22]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_11
       (.I0(mult1_res_64__1[21]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[21]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_12
       (.I0(mult1_res_64__1[20]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[20]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_13
       (.I0(mult1_res_64__1[19]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[19]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_14
       (.I0(mult1_res_64__1[18]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[18]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_15
       (.I0(mult1_res_64__1[17]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[17]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_2
       (.I0(mult1_res_64__1[30]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[30]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_3
       (.I0(mult1_res_64__1[29]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[29]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_4
       (.I0(mult1_res_64__1[28]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[28]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_5
       (.I0(mult1_res_64__1[27]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[27]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_6
       (.I0(mult1_res_64__1[26]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[26]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_7
       (.I0(mult1_res_64__1[25]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[25]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_8
       (.I0(mult1_res_64__1[24]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[24]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    mult1_res_64__1_i_9
       (.I0(mult1_res_64__1[23]),
        .I1(mult1_res_64__0[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(mux4_sg[23]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_1
       (.I0(mult1_res_64__1[14]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[30]),
        .O(mux4_sg[14]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_10
       (.I0(mult1_res_64__1[5]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[21]),
        .O(mux4_sg[5]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_11
       (.I0(mult1_res_64__1[4]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[20]),
        .O(mux4_sg[4]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_12
       (.I0(mult1_res_64__1[3]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[19]),
        .O(mux4_sg[3]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_13
       (.I0(mult1_res_64__1[2]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[18]),
        .O(mux4_sg[2]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_14
       (.I0(mult1_res_64__1[1]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[17]),
        .O(mux4_sg[1]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_15
       (.I0(mult1_res_64__1[0]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[16]),
        .O(mux4_sg[0]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_16
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[31]),
        .I2(mult1_res_64_0[31]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[31]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_17
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[30]),
        .I2(mult1_res_64_0[30]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[30]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_18
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[29]),
        .I2(mult1_res_64_0[29]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[29]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_19
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[28]),
        .I2(mult1_res_64_0[28]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[28]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_2
       (.I0(mult1_res_64__1[13]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[29]),
        .O(mux4_sg[13]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_20
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[27]),
        .I2(mult1_res_64_0[27]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[27]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_21
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[26]),
        .I2(mult1_res_64_0[26]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[26]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_22
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[25]),
        .I2(mult1_res_64_0[25]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[25]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_23
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[24]),
        .I2(mult1_res_64_0[24]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[24]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_24
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[23]),
        .I2(mult1_res_64_0[23]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[23]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_25
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[22]),
        .I2(mult1_res_64_0[22]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[22]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_26
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[21]),
        .I2(mult1_res_64_0[21]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[21]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_27
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[20]),
        .I2(mult1_res_64_0[20]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[20]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_28
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[19]),
        .I2(mult1_res_64_0[19]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[19]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_29
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[18]),
        .I2(mult1_res_64_0[18]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[18]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_3
       (.I0(mult1_res_64__1[12]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[28]),
        .O(mux4_sg[12]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    mult1_res_64_i_30
       (.I0(mult1_res_64__0[15]),
        .I1(mult1_res_64[17]),
        .I2(mult1_res_64_0[17]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_0_out[17]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_4
       (.I0(mult1_res_64__1[11]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[27]),
        .O(mux4_sg[11]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_5
       (.I0(mult1_res_64__1[10]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[26]),
        .O(mux4_sg[10]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_6
       (.I0(mult1_res_64__1[9]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[25]),
        .O(mux4_sg[9]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_7
       (.I0(mult1_res_64__1[8]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[24]),
        .O(mux4_sg[8]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_8
       (.I0(mult1_res_64__1[7]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[23]),
        .O(mux4_sg[7]));
  LUT4 #(
    .INIT(16'hABA8)) 
    mult1_res_64_i_9
       (.I0(mult1_res_64__1[6]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(mult1_res_64__0[22]),
        .O(mux4_sg[6]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__0_i_10
       (.I0(Q[1]),
        .I1(P[8]),
        .I2(P[6]),
        .I3(DOADO[7]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [6]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__0_i_11
       (.I0(Q[1]),
        .I1(P[7]),
        .I2(P[5]),
        .I3(DOADO[6]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [5]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__0_i_12
       (.I0(Q[1]),
        .I1(P[6]),
        .I2(P[4]),
        .I3(DOADO[5]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [4]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__0_i_9
       (.I0(Q[1]),
        .I1(P[9]),
        .I2(P[7]),
        .I3(DOADO[8]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [7]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__1_i_10
       (.I0(Q[1]),
        .I1(P[12]),
        .I2(P[10]),
        .I3(DOADO[11]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [10]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__1_i_11
       (.I0(Q[1]),
        .I1(P[11]),
        .I2(P[9]),
        .I3(DOADO[10]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [9]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__1_i_12
       (.I0(Q[1]),
        .I1(P[10]),
        .I2(P[8]),
        .I3(DOADO[9]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [8]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__1_i_9
       (.I0(Q[1]),
        .I1(P[13]),
        .I2(P[11]),
        .I3(DOADO[12]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [11]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__2_i_10
       (.I0(Q[1]),
        .I1(P[17]),
        .I2(P[15]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[15]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__2_i_11
       (.I0(Q[1]),
        .I1(P[16]),
        .I2(P[14]),
        .I3(DOADO[15]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [14]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__2_i_12
       (.I0(Q[1]),
        .I1(P[15]),
        .I2(P[13]),
        .I3(DOADO[14]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [13]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__2_i_13
       (.I0(Q[1]),
        .I1(P[14]),
        .I2(P[12]),
        .I3(DOADO[13]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [12]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__2_i_5
       (.I0(mult1_res_64[15]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[15]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[15]),
        .O(\R3_reg[15] ));
  LUT5 #(
    .INIT(32'h002C0020)) 
    mux10_carry__2_i_9
       (.I0(mult1_res_64__0[15]),
        .I1(Q[0]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(Q[1]),
        .I4(DOADO[0]),
        .O(mux10_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__3_i_10
       (.I0(Q[1]),
        .I1(P[20]),
        .I2(P[18]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[18]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__3_i_11
       (.I0(Q[1]),
        .I1(P[19]),
        .I2(P[17]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[17]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__3_i_12
       (.I0(Q[1]),
        .I1(P[18]),
        .I2(P[16]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[16]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__3_i_5
       (.I0(mult1_res_64[19]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[19]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[19]),
        .O(\R3_reg[19] [3]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__3_i_6
       (.I0(mult1_res_64[18]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[18]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[18]),
        .O(\R3_reg[19] [2]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__3_i_7
       (.I0(mult1_res_64[17]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[17]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[17]),
        .O(\R3_reg[19] [1]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__3_i_8
       (.I0(mult1_res_64[16]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[16]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[16]),
        .O(\R3_reg[19] [0]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__3_i_9
       (.I0(Q[1]),
        .I1(P[21]),
        .I2(P[19]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[19]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__4_i_10
       (.I0(Q[1]),
        .I1(P[24]),
        .I2(P[22]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[22]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__4_i_11
       (.I0(Q[1]),
        .I1(P[23]),
        .I2(P[21]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[21]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__4_i_12
       (.I0(Q[1]),
        .I1(P[22]),
        .I2(P[20]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[20]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__4_i_5
       (.I0(mult1_res_64[23]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[23]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[23]),
        .O(\R3_reg[23] [3]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__4_i_6
       (.I0(mult1_res_64[22]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[22]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[22]),
        .O(\R3_reg[23] [2]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__4_i_7
       (.I0(mult1_res_64[21]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[21]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[21]),
        .O(\R3_reg[23] [1]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__4_i_8
       (.I0(mult1_res_64[20]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[20]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[20]),
        .O(\R3_reg[23] [0]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__4_i_9
       (.I0(Q[1]),
        .I1(P[25]),
        .I2(P[23]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[23]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__5_i_10
       (.I0(Q[1]),
        .I1(P[28]),
        .I2(P[26]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[26]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__5_i_11
       (.I0(Q[1]),
        .I1(P[27]),
        .I2(P[25]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[25]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__5_i_12
       (.I0(Q[1]),
        .I1(P[26]),
        .I2(P[24]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[24]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__5_i_5
       (.I0(mult1_res_64[27]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[27]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[27]),
        .O(\R3_reg[27] [3]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__5_i_6
       (.I0(mult1_res_64[26]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[26]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[26]),
        .O(\R3_reg[27] [2]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__5_i_7
       (.I0(mult1_res_64[25]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[25]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[25]),
        .O(\R3_reg[27] [1]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__5_i_8
       (.I0(mult1_res_64[24]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[24]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[24]),
        .O(\R3_reg[27] [0]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__5_i_9
       (.I0(Q[1]),
        .I1(P[29]),
        .I2(P[27]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[27]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__6_i_10
       (.I0(Q[1]),
        .I1(P[31]),
        .I2(P[29]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[29]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__6_i_11
       (.I0(Q[1]),
        .I1(P[30]),
        .I2(P[28]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[28]));
  LUT6 #(
    .INIT(64'h96969696969695A6)) 
    mux10_carry__6_i_4
       (.I0(A__0),
        .I1(Q[2]),
        .I2(P[31]),
        .I3(DOADO[16]),
        .I4(Q[1]),
        .I5(\FSM_onehot_currstate_reg_n_0_[4] ),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__6_i_5
       (.I0(mult1_res_64[30]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[30]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[30]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__6_i_6
       (.I0(mult1_res_64[29]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[29]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[29]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h00007C7FFFFF8380)) 
    mux10_carry__6_i_7
       (.I0(mult1_res_64[28]),
        .I1(en3_internal),
        .I2(en2_internal),
        .I3(mult1_res_64_0[28]),
        .I4(mux10_carry__2_i_9_n_0),
        .I5(p_0_out__0[28]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry__6_i_9
       (.I0(Q[1]),
        .I1(P[31]),
        .I2(P[30]),
        .I3(DOADO[16]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(p_0_out__0[30]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry_i_10
       (.I0(Q[1]),
        .I1(P[4]),
        .I2(P[2]),
        .I3(DOADO[3]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry_i_11
       (.I0(Q[1]),
        .I1(P[3]),
        .I2(P[1]),
        .I3(DOADO[2]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry_i_12
       (.I0(Q[1]),
        .I1(P[2]),
        .I2(P[0]),
        .I3(DOADO[1]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h27272727D8D8DD88)) 
    mux10_carry_i_9
       (.I0(Q[1]),
        .I1(P[5]),
        .I2(P[3]),
        .I3(DOADO[4]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(Q[2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_1 
       (.I0(C[3]),
        .I1(Q[1]),
        .I2(\ramb_bl.ramb36_sin_bl.ram36_bl [3]),
        .O(D[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_2 
       (.I0(C[2]),
        .I1(Q[1]),
        .I2(\ramb_bl.ramb36_sin_bl.ram36_bl [2]),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_3 
       (.I0(C[1]),
        .I1(Q[1]),
        .I2(\ramb_bl.ramb36_sin_bl.ram36_bl [1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_4 
       (.I0(C[0]),
        .I1(Q[1]),
        .I2(\ramb_bl.ramb36_sin_bl.ram36_bl [0]),
        .O(D[0]));
endmodule

module datapath
   (D,
    C,
    \FSM_onehot_currstate_reg[3] ,
    \R3_reg[31]_0 ,
    \R1_reg[31]_0 ,
    P,
    \R2_reg[31]_0 ,
    mux4_sg,
    p_0_out,
    Q,
    A,
    S,
    \R2_reg[7]_0 ,
    \R2_reg[11]_0 ,
    \R2_reg[15]_0 ,
    \R2_reg[19]_0 ,
    \R2_reg[23]_0 ,
    \R2_reg[27]_0 ,
    \R2_reg[31]_1 ,
    RSTP,
    en3_internal,
    \R3_reg[31]_1 ,
    CLK,
    E,
    CEP,
    DOADO,
    en2_internal);
  output [3:0]D;
  output [3:0]C;
  output [27:0]\FSM_onehot_currstate_reg[3] ;
  output [31:0]\R3_reg[31]_0 ;
  output [31:0]\R1_reg[31]_0 ;
  output [31:0]P;
  output [31:0]\R2_reg[31]_0 ;
  input [31:0]mux4_sg;
  input [31:0]p_0_out;
  input [2:0]Q;
  input [30:0]A;
  input [3:0]S;
  input [3:0]\R2_reg[7]_0 ;
  input [3:0]\R2_reg[11]_0 ;
  input [3:0]\R2_reg[15]_0 ;
  input [3:0]\R2_reg[19]_0 ;
  input [3:0]\R2_reg[23]_0 ;
  input [3:0]\R2_reg[27]_0 ;
  input [3:0]\R2_reg[31]_1 ;
  input RSTP;
  input en3_internal;
  input [3:0]\R3_reg[31]_1 ;
  input CLK;
  input [0:0]E;
  input CEP;
  input [31:0]DOADO;
  input en2_internal;

  wire [30:0]A;
  wire [3:0]C;
  wire CEP;
  wire CLK;
  wire [3:0]D;
  wire [31:0]DOADO;
  wire [0:0]E;
  wire [27:0]\FSM_onehot_currstate_reg[3] ;
  wire [31:0]P;
  wire [2:0]Q;
  wire [31:0]\R1_reg[31]_0 ;
  wire [3:0]\R2_reg[11]_0 ;
  wire [3:0]\R2_reg[15]_0 ;
  wire [3:0]\R2_reg[19]_0 ;
  wire [3:0]\R2_reg[23]_0 ;
  wire [3:0]\R2_reg[27]_0 ;
  wire [31:0]\R2_reg[31]_0 ;
  wire [3:0]\R2_reg[31]_1 ;
  wire [3:0]\R2_reg[7]_0 ;
  wire [31:0]\R3_reg[31]_0 ;
  wire [3:0]\R3_reg[31]_1 ;
  wire RSTP;
  wire [3:0]S;
  wire en2_internal;
  wire en3_internal;
  wire mult1_res_64__0_n_106;
  wire mult1_res_64__0_n_107;
  wire mult1_res_64__0_n_108;
  wire mult1_res_64__0_n_109;
  wire mult1_res_64__0_n_110;
  wire mult1_res_64__0_n_111;
  wire mult1_res_64__0_n_112;
  wire mult1_res_64__0_n_113;
  wire mult1_res_64__0_n_114;
  wire mult1_res_64__0_n_115;
  wire mult1_res_64__0_n_116;
  wire mult1_res_64__0_n_117;
  wire mult1_res_64__0_n_118;
  wire mult1_res_64__0_n_119;
  wire mult1_res_64__0_n_120;
  wire mult1_res_64__0_n_121;
  wire mult1_res_64__0_n_122;
  wire mult1_res_64__0_n_123;
  wire mult1_res_64__0_n_124;
  wire mult1_res_64__0_n_125;
  wire mult1_res_64__0_n_126;
  wire mult1_res_64__0_n_127;
  wire mult1_res_64__0_n_128;
  wire mult1_res_64__0_n_129;
  wire mult1_res_64__0_n_130;
  wire mult1_res_64__0_n_131;
  wire mult1_res_64__0_n_132;
  wire mult1_res_64__0_n_133;
  wire mult1_res_64__0_n_134;
  wire mult1_res_64__0_n_135;
  wire mult1_res_64__0_n_136;
  wire mult1_res_64__0_n_137;
  wire mult1_res_64__0_n_138;
  wire mult1_res_64__0_n_139;
  wire mult1_res_64__0_n_140;
  wire mult1_res_64__0_n_141;
  wire mult1_res_64__0_n_142;
  wire mult1_res_64__0_n_143;
  wire mult1_res_64__0_n_144;
  wire mult1_res_64__0_n_145;
  wire mult1_res_64__0_n_146;
  wire mult1_res_64__0_n_147;
  wire mult1_res_64__0_n_148;
  wire mult1_res_64__0_n_149;
  wire mult1_res_64__0_n_150;
  wire mult1_res_64__0_n_151;
  wire mult1_res_64__0_n_152;
  wire mult1_res_64__0_n_153;
  wire mult1_res_64__0_n_24;
  wire mult1_res_64__0_n_25;
  wire mult1_res_64__0_n_26;
  wire mult1_res_64__0_n_27;
  wire mult1_res_64__0_n_28;
  wire mult1_res_64__0_n_29;
  wire mult1_res_64__0_n_30;
  wire mult1_res_64__0_n_31;
  wire mult1_res_64__0_n_32;
  wire mult1_res_64__0_n_33;
  wire mult1_res_64__0_n_34;
  wire mult1_res_64__0_n_35;
  wire mult1_res_64__0_n_36;
  wire mult1_res_64__0_n_37;
  wire mult1_res_64__0_n_38;
  wire mult1_res_64__0_n_39;
  wire mult1_res_64__0_n_40;
  wire mult1_res_64__0_n_41;
  wire mult1_res_64__0_n_42;
  wire mult1_res_64__0_n_43;
  wire mult1_res_64__0_n_44;
  wire mult1_res_64__0_n_45;
  wire mult1_res_64__0_n_46;
  wire mult1_res_64__0_n_47;
  wire mult1_res_64__0_n_48;
  wire mult1_res_64__0_n_49;
  wire mult1_res_64__0_n_50;
  wire mult1_res_64__0_n_51;
  wire mult1_res_64__0_n_52;
  wire mult1_res_64__0_n_53;
  wire [27:16]mult1_res_64__2;
  wire mult1_res_64_carry__0_i_1_n_0;
  wire mult1_res_64_carry__0_i_2_n_0;
  wire mult1_res_64_carry__0_i_3_n_0;
  wire mult1_res_64_carry__0_i_4_n_0;
  wire mult1_res_64_carry__0_n_0;
  wire mult1_res_64_carry__1_i_1_n_0;
  wire mult1_res_64_carry__1_i_2_n_0;
  wire mult1_res_64_carry__1_i_3_n_0;
  wire mult1_res_64_carry__1_i_4_n_0;
  wire mult1_res_64_carry__1_n_0;
  wire mult1_res_64_carry__2_i_1_n_0;
  wire mult1_res_64_carry__2_i_2_n_0;
  wire mult1_res_64_carry__2_i_3_n_0;
  wire mult1_res_64_carry__2_i_4_n_0;
  wire mult1_res_64_carry_i_1_n_0;
  wire mult1_res_64_carry_i_2_n_0;
  wire mult1_res_64_carry_i_3_n_0;
  wire mult1_res_64_carry_n_0;
  wire mux10_carry__0_n_0;
  wire mux10_carry__0_n_4;
  wire mux10_carry__0_n_5;
  wire mux10_carry__0_n_6;
  wire mux10_carry__0_n_7;
  wire mux10_carry__1_n_0;
  wire mux10_carry__1_n_4;
  wire mux10_carry__1_n_5;
  wire mux10_carry__1_n_6;
  wire mux10_carry__1_n_7;
  wire mux10_carry__2_n_0;
  wire mux10_carry__2_n_4;
  wire mux10_carry__2_n_5;
  wire mux10_carry__2_n_6;
  wire mux10_carry__2_n_7;
  wire mux10_carry__3_n_0;
  wire mux10_carry__3_n_4;
  wire mux10_carry__3_n_5;
  wire mux10_carry__3_n_6;
  wire mux10_carry__3_n_7;
  wire mux10_carry__4_n_0;
  wire mux10_carry__4_n_4;
  wire mux10_carry__4_n_5;
  wire mux10_carry__4_n_6;
  wire mux10_carry__4_n_7;
  wire mux10_carry__5_n_0;
  wire mux10_carry__5_n_4;
  wire mux10_carry__5_n_5;
  wire mux10_carry__5_n_6;
  wire mux10_carry__5_n_7;
  wire mux10_carry_n_0;
  wire mux10_carry_n_4;
  wire mux10_carry_n_5;
  wire mux10_carry_n_6;
  wire mux10_carry_n_7;
  wire [31:0]mux4_sg;
  wire [31:17]p_0_in;
  wire [31:0]p_0_out;
  wire [31:0]p_1_in;
  wire NLW_R4_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_R4_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_R4_reg_OVERFLOW_UNCONNECTED;
  wire NLW_R4_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_R4_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_R4_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_R4_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_R4_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_R4_reg_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_R4_reg_P_UNCONNECTED;
  wire [47:0]NLW_R4_reg_PCOUT_UNCONNECTED;
  wire NLW_mult1_res_64_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult1_res_64_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult1_res_64_OVERFLOW_UNCONNECTED;
  wire NLW_mult1_res_64_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult1_res_64_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult1_res_64_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult1_res_64_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult1_res_64_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult1_res_64_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_mult1_res_64_P_UNCONNECTED;
  wire [47:0]NLW_mult1_res_64_PCOUT_UNCONNECTED;
  wire NLW_mult1_res_64__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult1_res_64__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult1_res_64__0_OVERFLOW_UNCONNECTED;
  wire NLW_mult1_res_64__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult1_res_64__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult1_res_64__0_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_mult1_res_64__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult1_res_64__0_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_mult1_res_64__0_P_UNCONNECTED;
  wire NLW_mult1_res_64__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult1_res_64__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult1_res_64__1_OVERFLOW_UNCONNECTED;
  wire NLW_mult1_res_64__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult1_res_64__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult1_res_64__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult1_res_64__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult1_res_64__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult1_res_64__1_CARRYOUT_UNCONNECTED;
  wire [47:15]NLW_mult1_res_64__1_P_UNCONNECTED;
  wire [47:0]NLW_mult1_res_64__1_PCOUT_UNCONNECTED;
  wire [2:0]NLW_mult1_res_64_carry_CO_UNCONNECTED;
  wire [2:0]NLW_mult1_res_64_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_mult1_res_64_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_mult1_res_64_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_mux10_carry_CO_UNCONNECTED;
  wire [2:0]NLW_mux10_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_mux10_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_mux10_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_mux10_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_mux10_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_mux10_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_mux10_carry__6_CO_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[0]),
        .Q(\R1_reg[31]_0 [0]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[10]),
        .Q(\R1_reg[31]_0 [10]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[11]),
        .Q(\R1_reg[31]_0 [11]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[12]),
        .Q(\R1_reg[31]_0 [12]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[13]),
        .Q(\R1_reg[31]_0 [13]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[14]),
        .Q(\R1_reg[31]_0 [14]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[15]),
        .Q(\R1_reg[31]_0 [15]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(mult1_res_64__2[16]),
        .Q(\R1_reg[31]_0 [16]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(mult1_res_64__2[17]),
        .Q(\R1_reg[31]_0 [17]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(mult1_res_64__2[18]),
        .Q(\R1_reg[31]_0 [18]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(mult1_res_64__2[19]),
        .Q(\R1_reg[31]_0 [19]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[1]),
        .Q(\R1_reg[31]_0 [1]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(mult1_res_64__2[20]),
        .Q(\R1_reg[31]_0 [20]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(mult1_res_64__2[21]),
        .Q(\R1_reg[31]_0 [21]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(mult1_res_64__2[22]),
        .Q(\R1_reg[31]_0 [22]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(mult1_res_64__2[23]),
        .Q(\R1_reg[31]_0 [23]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(mult1_res_64__2[24]),
        .Q(\R1_reg[31]_0 [24]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(mult1_res_64__2[25]),
        .Q(\R1_reg[31]_0 [25]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(mult1_res_64__2[26]),
        .Q(\R1_reg[31]_0 [26]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(mult1_res_64__2[27]),
        .Q(\R1_reg[31]_0 [27]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(C[0]),
        .Q(\R1_reg[31]_0 [28]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(C[1]),
        .Q(\R1_reg[31]_0 [29]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[2]),
        .Q(\R1_reg[31]_0 [2]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(C[2]),
        .Q(\R1_reg[31]_0 [30]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(C[3]),
        .Q(\R1_reg[31]_0 [31]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[3]),
        .Q(\R1_reg[31]_0 [3]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[4]),
        .Q(\R1_reg[31]_0 [4]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[5]),
        .Q(\R1_reg[31]_0 [5]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[6]),
        .Q(\R1_reg[31]_0 [6]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[7]),
        .Q(\R1_reg[31]_0 [7]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[8]),
        .Q(\R1_reg[31]_0 [8]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(p_1_in[9]),
        .Q(\R1_reg[31]_0 [9]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[0] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry_n_7),
        .Q(\R2_reg[31]_0 [0]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[10] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__1_n_5),
        .Q(\R2_reg[31]_0 [10]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[11] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__1_n_4),
        .Q(\R2_reg[31]_0 [11]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[12] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__2_n_7),
        .Q(\R2_reg[31]_0 [12]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[13] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__2_n_6),
        .Q(\R2_reg[31]_0 [13]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[14] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__2_n_5),
        .Q(\R2_reg[31]_0 [14]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[15] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__2_n_4),
        .Q(\R2_reg[31]_0 [15]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[16] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__3_n_7),
        .Q(\R2_reg[31]_0 [16]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[17] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__3_n_6),
        .Q(\R2_reg[31]_0 [17]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[18] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__3_n_5),
        .Q(\R2_reg[31]_0 [18]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[19] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__3_n_4),
        .Q(\R2_reg[31]_0 [19]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[1] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry_n_6),
        .Q(\R2_reg[31]_0 [1]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[20] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__4_n_7),
        .Q(\R2_reg[31]_0 [20]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[21] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__4_n_6),
        .Q(\R2_reg[31]_0 [21]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[22] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__4_n_5),
        .Q(\R2_reg[31]_0 [22]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[23] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__4_n_4),
        .Q(\R2_reg[31]_0 [23]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[24] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__5_n_7),
        .Q(\R2_reg[31]_0 [24]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[25] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__5_n_6),
        .Q(\R2_reg[31]_0 [25]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[26] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__5_n_5),
        .Q(\R2_reg[31]_0 [26]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[27] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__5_n_4),
        .Q(\R2_reg[31]_0 [27]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[28] 
       (.C(CLK),
        .CE(en2_internal),
        .D(D[0]),
        .Q(\R2_reg[31]_0 [28]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[29] 
       (.C(CLK),
        .CE(en2_internal),
        .D(D[1]),
        .Q(\R2_reg[31]_0 [29]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[2] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry_n_5),
        .Q(\R2_reg[31]_0 [2]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[30] 
       (.C(CLK),
        .CE(en2_internal),
        .D(D[2]),
        .Q(\R2_reg[31]_0 [30]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[31] 
       (.C(CLK),
        .CE(en2_internal),
        .D(D[3]),
        .Q(\R2_reg[31]_0 [31]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[3] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry_n_4),
        .Q(\R2_reg[31]_0 [3]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[4] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__0_n_7),
        .Q(\R2_reg[31]_0 [4]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[5] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__0_n_6),
        .Q(\R2_reg[31]_0 [5]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[6] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__0_n_5),
        .Q(\R2_reg[31]_0 [6]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[7] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__0_n_4),
        .Q(\R2_reg[31]_0 [7]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[8] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__1_n_7),
        .Q(\R2_reg[31]_0 [8]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[9] 
       (.C(CLK),
        .CE(en2_internal),
        .D(mux10_carry__1_n_6),
        .Q(\R2_reg[31]_0 [9]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[0] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [0]),
        .Q(\R3_reg[31]_0 [0]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[10] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [10]),
        .Q(\R3_reg[31]_0 [10]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[11] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [11]),
        .Q(\R3_reg[31]_0 [11]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[12] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [12]),
        .Q(\R3_reg[31]_0 [12]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[13] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [13]),
        .Q(\R3_reg[31]_0 [13]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[14] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [14]),
        .Q(\R3_reg[31]_0 [14]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[15] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [15]),
        .Q(\R3_reg[31]_0 [15]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[16] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [16]),
        .Q(\R3_reg[31]_0 [16]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[17] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [17]),
        .Q(\R3_reg[31]_0 [17]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[18] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [18]),
        .Q(\R3_reg[31]_0 [18]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[19] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [19]),
        .Q(\R3_reg[31]_0 [19]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[1] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [1]),
        .Q(\R3_reg[31]_0 [1]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[20] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [20]),
        .Q(\R3_reg[31]_0 [20]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[21] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [21]),
        .Q(\R3_reg[31]_0 [21]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[22] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [22]),
        .Q(\R3_reg[31]_0 [22]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[23] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [23]),
        .Q(\R3_reg[31]_0 [23]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[24] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [24]),
        .Q(\R3_reg[31]_0 [24]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[25] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [25]),
        .Q(\R3_reg[31]_0 [25]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[26] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [26]),
        .Q(\R3_reg[31]_0 [26]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[27] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [27]),
        .Q(\R3_reg[31]_0 [27]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[28] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\R3_reg[31]_1 [0]),
        .Q(\R3_reg[31]_0 [28]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[29] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\R3_reg[31]_1 [1]),
        .Q(\R3_reg[31]_0 [29]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[2] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [2]),
        .Q(\R3_reg[31]_0 [2]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[30] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\R3_reg[31]_1 [2]),
        .Q(\R3_reg[31]_0 [30]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[31] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\R3_reg[31]_1 [3]),
        .Q(\R3_reg[31]_0 [31]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[3] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [3]),
        .Q(\R3_reg[31]_0 [3]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[4] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [4]),
        .Q(\R3_reg[31]_0 [4]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[5] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [5]),
        .Q(\R3_reg[31]_0 [5]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[6] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [6]),
        .Q(\R3_reg[31]_0 [6]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[7] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [7]),
        .Q(\R3_reg[31]_0 [7]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[8] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [8]),
        .Q(\R3_reg[31]_0 [8]),
        .R(RSTP));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[9] 
       (.C(CLK),
        .CE(en3_internal),
        .D(\FSM_onehot_currstate_reg[3] [9]),
        .Q(\R3_reg[31]_0 [9]),
        .R(RSTP));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .IS_OPMODE_INVERTED(7'b0110000),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    R4_reg
       (.A({DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_R4_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({DOADO[31],DOADO[31],DOADO[31:16]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_R4_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,C,mult1_res_64__2,p_1_in[15:0]}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_R4_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_R4_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
        .CLK(CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_R4_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,Q[0],Q[0],1'b0,Q[0],1'b0,Q[0]}),
        .OVERFLOW(NLW_R4_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_R4_reg_P_UNCONNECTED[47:32],P}),
        .PATTERNBDETECT(NLW_R4_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_R4_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_R4_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTP),
        .UNDERFLOW(NLW_R4_reg_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult1_res_64
       (.A({p_0_out[31],p_0_out[31],p_0_out[31],p_0_out[31],p_0_out[31],p_0_out[31],p_0_out[31],p_0_out[31],p_0_out[31],p_0_out[31],p_0_out[31],p_0_out[31],p_0_out[31],p_0_out[31],p_0_out[31],p_0_out[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult1_res_64_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({mux4_sg[14],mux4_sg[14],mux4_sg[14],mux4_sg[14:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult1_res_64_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult1_res_64_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult1_res_64_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult1_res_64_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult1_res_64_OVERFLOW_UNCONNECTED),
        .P({NLW_mult1_res_64_P_UNCONNECTED[47:15],p_0_in}),
        .PATTERNBDETECT(NLW_mult1_res_64_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult1_res_64_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mult1_res_64_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult1_res_64_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult1_res_64__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_0_out[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({mult1_res_64__0_n_24,mult1_res_64__0_n_25,mult1_res_64__0_n_26,mult1_res_64__0_n_27,mult1_res_64__0_n_28,mult1_res_64__0_n_29,mult1_res_64__0_n_30,mult1_res_64__0_n_31,mult1_res_64__0_n_32,mult1_res_64__0_n_33,mult1_res_64__0_n_34,mult1_res_64__0_n_35,mult1_res_64__0_n_36,mult1_res_64__0_n_37,mult1_res_64__0_n_38,mult1_res_64__0_n_39,mult1_res_64__0_n_40,mult1_res_64__0_n_41,mult1_res_64__0_n_42,mult1_res_64__0_n_43,mult1_res_64__0_n_44,mult1_res_64__0_n_45,mult1_res_64__0_n_46,mult1_res_64__0_n_47,mult1_res_64__0_n_48,mult1_res_64__0_n_49,mult1_res_64__0_n_50,mult1_res_64__0_n_51,mult1_res_64__0_n_52,mult1_res_64__0_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,mux4_sg[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult1_res_64__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult1_res_64__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult1_res_64__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult1_res_64__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult1_res_64__0_OVERFLOW_UNCONNECTED),
        .P({NLW_mult1_res_64__0_P_UNCONNECTED[47:17],p_1_in[16:0]}),
        .PATTERNBDETECT(NLW_mult1_res_64__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult1_res_64__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({mult1_res_64__0_n_106,mult1_res_64__0_n_107,mult1_res_64__0_n_108,mult1_res_64__0_n_109,mult1_res_64__0_n_110,mult1_res_64__0_n_111,mult1_res_64__0_n_112,mult1_res_64__0_n_113,mult1_res_64__0_n_114,mult1_res_64__0_n_115,mult1_res_64__0_n_116,mult1_res_64__0_n_117,mult1_res_64__0_n_118,mult1_res_64__0_n_119,mult1_res_64__0_n_120,mult1_res_64__0_n_121,mult1_res_64__0_n_122,mult1_res_64__0_n_123,mult1_res_64__0_n_124,mult1_res_64__0_n_125,mult1_res_64__0_n_126,mult1_res_64__0_n_127,mult1_res_64__0_n_128,mult1_res_64__0_n_129,mult1_res_64__0_n_130,mult1_res_64__0_n_131,mult1_res_64__0_n_132,mult1_res_64__0_n_133,mult1_res_64__0_n_134,mult1_res_64__0_n_135,mult1_res_64__0_n_136,mult1_res_64__0_n_137,mult1_res_64__0_n_138,mult1_res_64__0_n_139,mult1_res_64__0_n_140,mult1_res_64__0_n_141,mult1_res_64__0_n_142,mult1_res_64__0_n_143,mult1_res_64__0_n_144,mult1_res_64__0_n_145,mult1_res_64__0_n_146,mult1_res_64__0_n_147,mult1_res_64__0_n_148,mult1_res_64__0_n_149,mult1_res_64__0_n_150,mult1_res_64__0_n_151,mult1_res_64__0_n_152,mult1_res_64__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult1_res_64__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult1_res_64__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({mult1_res_64__0_n_24,mult1_res_64__0_n_25,mult1_res_64__0_n_26,mult1_res_64__0_n_27,mult1_res_64__0_n_28,mult1_res_64__0_n_29,mult1_res_64__0_n_30,mult1_res_64__0_n_31,mult1_res_64__0_n_32,mult1_res_64__0_n_33,mult1_res_64__0_n_34,mult1_res_64__0_n_35,mult1_res_64__0_n_36,mult1_res_64__0_n_37,mult1_res_64__0_n_38,mult1_res_64__0_n_39,mult1_res_64__0_n_40,mult1_res_64__0_n_41,mult1_res_64__0_n_42,mult1_res_64__0_n_43,mult1_res_64__0_n_44,mult1_res_64__0_n_45,mult1_res_64__0_n_46,mult1_res_64__0_n_47,mult1_res_64__0_n_48,mult1_res_64__0_n_49,mult1_res_64__0_n_50,mult1_res_64__0_n_51,mult1_res_64__0_n_52,mult1_res_64__0_n_53}),
        .ACOUT(NLW_mult1_res_64__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({mux4_sg[31],mux4_sg[31],mux4_sg[31],mux4_sg[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult1_res_64__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult1_res_64__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult1_res_64__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult1_res_64__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult1_res_64__1_OVERFLOW_UNCONNECTED),
        .P({NLW_mult1_res_64__1_P_UNCONNECTED[47:15],p_1_in[31:17]}),
        .PATTERNBDETECT(NLW_mult1_res_64__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult1_res_64__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({mult1_res_64__0_n_106,mult1_res_64__0_n_107,mult1_res_64__0_n_108,mult1_res_64__0_n_109,mult1_res_64__0_n_110,mult1_res_64__0_n_111,mult1_res_64__0_n_112,mult1_res_64__0_n_113,mult1_res_64__0_n_114,mult1_res_64__0_n_115,mult1_res_64__0_n_116,mult1_res_64__0_n_117,mult1_res_64__0_n_118,mult1_res_64__0_n_119,mult1_res_64__0_n_120,mult1_res_64__0_n_121,mult1_res_64__0_n_122,mult1_res_64__0_n_123,mult1_res_64__0_n_124,mult1_res_64__0_n_125,mult1_res_64__0_n_126,mult1_res_64__0_n_127,mult1_res_64__0_n_128,mult1_res_64__0_n_129,mult1_res_64__0_n_130,mult1_res_64__0_n_131,mult1_res_64__0_n_132,mult1_res_64__0_n_133,mult1_res_64__0_n_134,mult1_res_64__0_n_135,mult1_res_64__0_n_136,mult1_res_64__0_n_137,mult1_res_64__0_n_138,mult1_res_64__0_n_139,mult1_res_64__0_n_140,mult1_res_64__0_n_141,mult1_res_64__0_n_142,mult1_res_64__0_n_143,mult1_res_64__0_n_144,mult1_res_64__0_n_145,mult1_res_64__0_n_146,mult1_res_64__0_n_147,mult1_res_64__0_n_148,mult1_res_64__0_n_149,mult1_res_64__0_n_150,mult1_res_64__0_n_151,mult1_res_64__0_n_152,mult1_res_64__0_n_153}),
        .PCOUT(NLW_mult1_res_64__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult1_res_64__1_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 mult1_res_64_carry
       (.CI(1'b0),
        .CO({mult1_res_64_carry_n_0,NLW_mult1_res_64_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({p_1_in[19:17],1'b0}),
        .O(mult1_res_64__2[19:16]),
        .S({mult1_res_64_carry_i_1_n_0,mult1_res_64_carry_i_2_n_0,mult1_res_64_carry_i_3_n_0,p_1_in[16]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mult1_res_64_carry__0
       (.CI(mult1_res_64_carry_n_0),
        .CO({mult1_res_64_carry__0_n_0,NLW_mult1_res_64_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(p_1_in[23:20]),
        .O(mult1_res_64__2[23:20]),
        .S({mult1_res_64_carry__0_i_1_n_0,mult1_res_64_carry__0_i_2_n_0,mult1_res_64_carry__0_i_3_n_0,mult1_res_64_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry__0_i_1
       (.I0(p_1_in[23]),
        .I1(p_0_in[23]),
        .O(mult1_res_64_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry__0_i_2
       (.I0(p_1_in[22]),
        .I1(p_0_in[22]),
        .O(mult1_res_64_carry__0_i_2_n_0));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry__0_i_3
       (.I0(p_1_in[21]),
        .I1(p_0_in[21]),
        .O(mult1_res_64_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry__0_i_4
       (.I0(p_1_in[20]),
        .I1(p_0_in[20]),
        .O(mult1_res_64_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mult1_res_64_carry__1
       (.CI(mult1_res_64_carry__0_n_0),
        .CO({mult1_res_64_carry__1_n_0,NLW_mult1_res_64_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(p_1_in[27:24]),
        .O(mult1_res_64__2[27:24]),
        .S({mult1_res_64_carry__1_i_1_n_0,mult1_res_64_carry__1_i_2_n_0,mult1_res_64_carry__1_i_3_n_0,mult1_res_64_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry__1_i_1
       (.I0(p_1_in[27]),
        .I1(p_0_in[27]),
        .O(mult1_res_64_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry__1_i_2
       (.I0(p_1_in[26]),
        .I1(p_0_in[26]),
        .O(mult1_res_64_carry__1_i_2_n_0));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry__1_i_3
       (.I0(p_1_in[25]),
        .I1(p_0_in[25]),
        .O(mult1_res_64_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry__1_i_4
       (.I0(p_1_in[24]),
        .I1(p_0_in[24]),
        .O(mult1_res_64_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mult1_res_64_carry__2
       (.CI(mult1_res_64_carry__1_n_0),
        .CO(NLW_mult1_res_64_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in[30:28]}),
        .O(C),
        .S({mult1_res_64_carry__2_i_1_n_0,mult1_res_64_carry__2_i_2_n_0,mult1_res_64_carry__2_i_3_n_0,mult1_res_64_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry__2_i_1
       (.I0(p_1_in[31]),
        .I1(p_0_in[31]),
        .O(mult1_res_64_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry__2_i_2
       (.I0(p_1_in[30]),
        .I1(p_0_in[30]),
        .O(mult1_res_64_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry__2_i_3
       (.I0(p_1_in[29]),
        .I1(p_0_in[29]),
        .O(mult1_res_64_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry__2_i_4
       (.I0(p_1_in[28]),
        .I1(p_0_in[28]),
        .O(mult1_res_64_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry_i_1
       (.I0(p_1_in[19]),
        .I1(p_0_in[19]),
        .O(mult1_res_64_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry_i_2
       (.I0(p_1_in[18]),
        .I1(p_0_in[18]),
        .O(mult1_res_64_carry_i_2_n_0));
  (* PHYS_OPT_MODIFIED = "PIN_SWAP" *) 
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry_i_3
       (.I0(p_1_in[17]),
        .I1(p_0_in[17]),
        .O(mult1_res_64_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry
       (.CI(1'b0),
        .CO({mux10_carry_n_0,NLW_mux10_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(Q[2]),
        .DI(A[3:0]),
        .O({mux10_carry_n_4,mux10_carry_n_5,mux10_carry_n_6,mux10_carry_n_7}),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__0
       (.CI(mux10_carry_n_0),
        .CO({mux10_carry__0_n_0,NLW_mux10_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O({mux10_carry__0_n_4,mux10_carry__0_n_5,mux10_carry__0_n_6,mux10_carry__0_n_7}),
        .S(\R2_reg[7]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__1
       (.CI(mux10_carry__0_n_0),
        .CO({mux10_carry__1_n_0,NLW_mux10_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O({mux10_carry__1_n_4,mux10_carry__1_n_5,mux10_carry__1_n_6,mux10_carry__1_n_7}),
        .S(\R2_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__2
       (.CI(mux10_carry__1_n_0),
        .CO({mux10_carry__2_n_0,NLW_mux10_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(A[15:12]),
        .O({mux10_carry__2_n_4,mux10_carry__2_n_5,mux10_carry__2_n_6,mux10_carry__2_n_7}),
        .S(\R2_reg[15]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__3
       (.CI(mux10_carry__2_n_0),
        .CO({mux10_carry__3_n_0,NLW_mux10_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(A[19:16]),
        .O({mux10_carry__3_n_4,mux10_carry__3_n_5,mux10_carry__3_n_6,mux10_carry__3_n_7}),
        .S(\R2_reg[19]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__4
       (.CI(mux10_carry__3_n_0),
        .CO({mux10_carry__4_n_0,NLW_mux10_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(A[23:20]),
        .O({mux10_carry__4_n_4,mux10_carry__4_n_5,mux10_carry__4_n_6,mux10_carry__4_n_7}),
        .S(\R2_reg[23]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__5
       (.CI(mux10_carry__4_n_0),
        .CO({mux10_carry__5_n_0,NLW_mux10_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(A[27:24]),
        .O({mux10_carry__5_n_4,mux10_carry__5_n_5,mux10_carry__5_n_6,mux10_carry__5_n_7}),
        .S(\R2_reg[27]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__6
       (.CI(mux10_carry__5_n_0),
        .CO(NLW_mux10_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,A[30:28]}),
        .O(D),
        .S(\R2_reg[31]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_10 
       (.I0(mult1_res_64__2[22]),
        .I1(Q[1]),
        .I2(mux10_carry__4_n_5),
        .O(\FSM_onehot_currstate_reg[3] [22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_11 
       (.I0(mult1_res_64__2[21]),
        .I1(Q[1]),
        .I2(mux10_carry__4_n_6),
        .O(\FSM_onehot_currstate_reg[3] [21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_12 
       (.I0(mult1_res_64__2[20]),
        .I1(Q[1]),
        .I2(mux10_carry__4_n_7),
        .O(\FSM_onehot_currstate_reg[3] [20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_13 
       (.I0(mult1_res_64__2[19]),
        .I1(Q[1]),
        .I2(mux10_carry__3_n_4),
        .O(\FSM_onehot_currstate_reg[3] [19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_14 
       (.I0(mult1_res_64__2[18]),
        .I1(Q[1]),
        .I2(mux10_carry__3_n_5),
        .O(\FSM_onehot_currstate_reg[3] [18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_15 
       (.I0(mult1_res_64__2[17]),
        .I1(Q[1]),
        .I2(mux10_carry__3_n_6),
        .O(\FSM_onehot_currstate_reg[3] [17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_16 
       (.I0(mult1_res_64__2[16]),
        .I1(Q[1]),
        .I2(mux10_carry__3_n_7),
        .O(\FSM_onehot_currstate_reg[3] [16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_17 
       (.I0(p_1_in[15]),
        .I1(Q[1]),
        .I2(mux10_carry__2_n_4),
        .O(\FSM_onehot_currstate_reg[3] [15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_18 
       (.I0(p_1_in[14]),
        .I1(Q[1]),
        .I2(mux10_carry__2_n_5),
        .O(\FSM_onehot_currstate_reg[3] [14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_19 
       (.I0(p_1_in[13]),
        .I1(Q[1]),
        .I2(mux10_carry__2_n_6),
        .O(\FSM_onehot_currstate_reg[3] [13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_20 
       (.I0(p_1_in[12]),
        .I1(Q[1]),
        .I2(mux10_carry__2_n_7),
        .O(\FSM_onehot_currstate_reg[3] [12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_21 
       (.I0(p_1_in[11]),
        .I1(Q[1]),
        .I2(mux10_carry__1_n_4),
        .O(\FSM_onehot_currstate_reg[3] [11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_22 
       (.I0(p_1_in[10]),
        .I1(Q[1]),
        .I2(mux10_carry__1_n_5),
        .O(\FSM_onehot_currstate_reg[3] [10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_23 
       (.I0(p_1_in[9]),
        .I1(Q[1]),
        .I2(mux10_carry__1_n_6),
        .O(\FSM_onehot_currstate_reg[3] [9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_24 
       (.I0(p_1_in[8]),
        .I1(Q[1]),
        .I2(mux10_carry__1_n_7),
        .O(\FSM_onehot_currstate_reg[3] [8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_25 
       (.I0(p_1_in[7]),
        .I1(Q[1]),
        .I2(mux10_carry__0_n_4),
        .O(\FSM_onehot_currstate_reg[3] [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_26 
       (.I0(p_1_in[6]),
        .I1(Q[1]),
        .I2(mux10_carry__0_n_5),
        .O(\FSM_onehot_currstate_reg[3] [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_27 
       (.I0(p_1_in[5]),
        .I1(Q[1]),
        .I2(mux10_carry__0_n_6),
        .O(\FSM_onehot_currstate_reg[3] [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_28 
       (.I0(p_1_in[4]),
        .I1(Q[1]),
        .I2(mux10_carry__0_n_7),
        .O(\FSM_onehot_currstate_reg[3] [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_29 
       (.I0(p_1_in[3]),
        .I1(Q[1]),
        .I2(mux10_carry_n_4),
        .O(\FSM_onehot_currstate_reg[3] [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_30 
       (.I0(p_1_in[2]),
        .I1(Q[1]),
        .I2(mux10_carry_n_5),
        .O(\FSM_onehot_currstate_reg[3] [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_31 
       (.I0(p_1_in[1]),
        .I1(Q[1]),
        .I2(mux10_carry_n_6),
        .O(\FSM_onehot_currstate_reg[3] [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_32 
       (.I0(p_1_in[0]),
        .I1(Q[1]),
        .I2(mux10_carry_n_7),
        .O(\FSM_onehot_currstate_reg[3] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_5 
       (.I0(mult1_res_64__2[27]),
        .I1(Q[1]),
        .I2(mux10_carry__5_n_4),
        .O(\FSM_onehot_currstate_reg[3] [27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_6 
       (.I0(mult1_res_64__2[26]),
        .I1(Q[1]),
        .I2(mux10_carry__5_n_5),
        .O(\FSM_onehot_currstate_reg[3] [26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_7 
       (.I0(mult1_res_64__2[25]),
        .I1(Q[1]),
        .I2(mux10_carry__5_n_6),
        .O(\FSM_onehot_currstate_reg[3] [25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_8 
       (.I0(mult1_res_64__2[24]),
        .I1(Q[1]),
        .I2(mux10_carry__5_n_7),
        .O(\FSM_onehot_currstate_reg[3] [24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_i_9 
       (.I0(mult1_res_64__2[23]),
        .I1(Q[1]),
        .I2(mux10_carry__4_n_4),
        .O(\FSM_onehot_currstate_reg[3] [23]));
endmodule

module memOUT
   (DOADO,
    CLK,
    \ramb_bl.ramb36_sin_bl.ram36_bl ,
    DIADI,
    Q,
    pwropt,
    pwropt_1);
  output [31:0]DOADO;
  input CLK;
  input [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl ;
  input [31:0]DIADI;
  input [0:0]Q;
  input pwropt;
  input pwropt_1;

  wire CLK;
  wire [31:0]DIADI;
  wire [31:0]DOADO;
  wire [0:0]Q;
  wire pwropt;
  wire pwropt_1;
  wire [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl ;

  unimacro_BRAM_SINGLE_MACRO MEM_out
       (.CLK(CLK),
        .DIADI(DIADI),
        .DOADO(DOADO),
        .Q(Q),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_0 (\ramb_bl.ramb36_sin_bl.ram36_bl ));
endmodule

module unimacro_BRAM_SINGLE_MACRO
   (DOADO,
    CLK,
    \ramb_bl.ramb36_sin_bl.ram36_bl_0 ,
    DIADI,
    Q,
    pwropt,
    pwropt_1);
  output [31:0]DOADO;
  input CLK;
  input [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  input [31:0]DIADI;
  input [0:0]Q;
  input pwropt;
  input pwropt_1;

  wire CLK;
  wire [31:0]DIADI;
  wire [31:0]DOADO;
  wire [0:0]Q;
  wire \inst_memOUT/MEM_out/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_6 ;
  wire pwropt;
  wire pwropt_1;
  wire [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  wire \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_7 ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED ;

  FDCE #(
    .INIT(1'b1)) 
    \inst_memOUT/MEM_out/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_gate_9_cooolDelFlop 
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(pwropt),
        .Q(\inst_memOUT/MEM_out/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_6 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(0)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl 
       (.ADDRARDADDR({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\ramb_bl.ramb36_sin_bl.ram36_bl_0 ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(1'b0),
        .DBITERR(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED ),
        .DIADI(DIADI),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_7 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED ),
        .WEA({Q,Q,Q,Q}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hfe)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_gate_10 
       (.I0(\inst_memOUT/MEM_out/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_6 ),
        .I1(Q),
        .I2(pwropt_1),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_7 ));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SINGLE_MACRO" *) 
module unimacro_BRAM_SINGLE_MACRO__parameterized0
   (\ramb_bl.ramb36_sin_bl.ram36_bl_0 ,
    A,
    A__0,
    S,
    \ramb_bl.ramb36_sin_bl.ram36_bl_1 ,
    \ramb_bl.ramb36_sin_bl.ram36_bl_2 ,
    \ramb_bl.ramb36_sin_bl.ram36_bl_3 ,
    CLK,
    addr,
    mux10_carry__6_i_4,
    mux10_carry__6_i_4_0,
    en2_internal,
    en3_internal,
    DOADO,
    \R2_reg[15] ,
    pwropt,
    pwropt_1,
    pwropt_2,
    pwropt_3);
  output [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  output [30:0]A;
  output [0:0]A__0;
  output [3:0]S;
  output [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl_1 ;
  output [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl_2 ;
  output [2:0]\ramb_bl.ramb36_sin_bl.ram36_bl_3 ;
  input CLK;
  input [3:0]addr;
  input [31:0]mux10_carry__6_i_4;
  input [31:0]mux10_carry__6_i_4_0;
  input en2_internal;
  input en3_internal;
  input [15:0]DOADO;
  input [14:0]\R2_reg[15] ;
  input pwropt;
  input pwropt_1;
  output pwropt_2;
  output pwropt_3;

  wire [30:0]A;
  wire [0:0]A__0;
  wire CLK;
  wire [15:0]DOADO;
  wire [14:0]\R2_reg[15] ;
  wire [3:0]S;
  wire [3:0]addr;
  wire en2_internal;
  wire en3_internal;
  wire \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_1 ;
  wire \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_2 ;
  wire [31:0]mux10_carry__6_i_4;
  wire [31:0]mux10_carry__6_i_4_0;
  wire pwropt;
  wire pwropt_1;
  wire [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  wire [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl_1 ;
  wire [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl_2 ;
  wire [2:0]\ramb_bl.ramb36_sin_bl.ram36_bl_3 ;
  wire \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_3 ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED ;

  assign pwropt_2 = \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_1 ;
  assign pwropt_3 = \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_2 ;
  FDCE #(
    .INIT(1'b1)) 
    \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_gate_1_cooolDelFlop 
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(pwropt),
        .Q(\inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_1 ));
  FDCE #(
    .INIT(1'b1)) 
    \inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_gate_2_cooolDelFlop 
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(pwropt_1),
        .Q(\inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_2 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry__0_i_1
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [7]),
        .I1(mux10_carry__6_i_4[7]),
        .I2(mux10_carry__6_i_4_0[7]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[7]),
        .O(A[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry__0_i_2
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [6]),
        .I1(mux10_carry__6_i_4[6]),
        .I2(mux10_carry__6_i_4_0[6]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[6]),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry__0_i_3
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [5]),
        .I1(mux10_carry__6_i_4[5]),
        .I2(mux10_carry__6_i_4_0[5]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[5]),
        .O(A[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry__0_i_4
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [4]),
        .I1(mux10_carry__6_i_4[4]),
        .I2(mux10_carry__6_i_4_0[4]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[4]),
        .O(A[4]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry__0_i_5
       (.I0(A[7]),
        .I1(\R2_reg[15] [7]),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry__0_i_6
       (.I0(A[6]),
        .I1(\R2_reg[15] [6]),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry__0_i_7
       (.I0(A[5]),
        .I1(\R2_reg[15] [5]),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry__0_i_8
       (.I0(A[4]),
        .I1(\R2_reg[15] [4]),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_1 [0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry__1_i_1
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [11]),
        .I1(mux10_carry__6_i_4[11]),
        .I2(mux10_carry__6_i_4_0[11]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[11]),
        .O(A[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry__1_i_2
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [10]),
        .I1(mux10_carry__6_i_4[10]),
        .I2(mux10_carry__6_i_4_0[10]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[10]),
        .O(A[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry__1_i_3
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [9]),
        .I1(mux10_carry__6_i_4[9]),
        .I2(mux10_carry__6_i_4_0[9]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[9]),
        .O(A[9]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry__1_i_4
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [8]),
        .I1(mux10_carry__6_i_4[8]),
        .I2(mux10_carry__6_i_4_0[8]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[8]),
        .O(A[8]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry__1_i_5
       (.I0(A[11]),
        .I1(\R2_reg[15] [11]),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry__1_i_6
       (.I0(A[10]),
        .I1(\R2_reg[15] [10]),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry__1_i_7
       (.I0(A[9]),
        .I1(\R2_reg[15] [9]),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry__1_i_8
       (.I0(A[8]),
        .I1(\R2_reg[15] [8]),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_2 [0]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__2_i_1
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[15]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[15]),
        .O(A[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry__2_i_2
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [14]),
        .I1(mux10_carry__6_i_4[14]),
        .I2(mux10_carry__6_i_4_0[14]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[14]),
        .O(A[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry__2_i_3
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [13]),
        .I1(mux10_carry__6_i_4[13]),
        .I2(mux10_carry__6_i_4_0[13]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[13]),
        .O(A[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry__2_i_4
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [12]),
        .I1(mux10_carry__6_i_4[12]),
        .I2(mux10_carry__6_i_4_0[12]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[12]),
        .O(A[12]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry__2_i_6
       (.I0(A[14]),
        .I1(\R2_reg[15] [14]),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_3 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry__2_i_7
       (.I0(A[13]),
        .I1(\R2_reg[15] [13]),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_3 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry__2_i_8
       (.I0(A[12]),
        .I1(\R2_reg[15] [12]),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_3 [0]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__3_i_1
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[19]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[19]),
        .O(A[19]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__3_i_2
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[18]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[18]),
        .O(A[18]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__3_i_3
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[17]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[17]),
        .O(A[17]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__3_i_4
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[16]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[16]),
        .O(A[16]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__4_i_1
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[23]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[23]),
        .O(A[23]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__4_i_2
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[22]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[22]),
        .O(A[22]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__4_i_3
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[21]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[21]),
        .O(A[21]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__4_i_4
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[20]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[20]),
        .O(A[20]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__5_i_1
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[27]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[27]),
        .O(A[27]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__5_i_2
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[26]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[26]),
        .O(A[26]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__5_i_3
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[25]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[25]),
        .O(A[25]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__5_i_4
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[24]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[24]),
        .O(A[24]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__6_i_1
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[30]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[30]),
        .O(A[30]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__6_i_2
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[29]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[29]),
        .O(A[29]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__6_i_3
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[28]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[28]),
        .O(A[28]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    mux10_carry__6_i_8
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [15]),
        .I1(DOADO[15]),
        .I2(mux10_carry__6_i_4_0[31]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(mux10_carry__6_i_4[31]),
        .O(A__0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry_i_1
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [3]),
        .I1(mux10_carry__6_i_4[3]),
        .I2(mux10_carry__6_i_4_0[3]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[3]),
        .O(A[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry_i_2
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [2]),
        .I1(mux10_carry__6_i_4[2]),
        .I2(mux10_carry__6_i_4_0[2]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[2]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry_i_3
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [1]),
        .I1(mux10_carry__6_i_4[1]),
        .I2(mux10_carry__6_i_4_0[1]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[1]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    mux10_carry_i_4
       (.I0(\ramb_bl.ramb36_sin_bl.ram36_bl_0 [0]),
        .I1(mux10_carry__6_i_4[0]),
        .I2(mux10_carry__6_i_4_0[0]),
        .I3(en2_internal),
        .I4(en3_internal),
        .I5(DOADO[0]),
        .O(A[0]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry_i_5
       (.I0(A[3]),
        .I1(\R2_reg[15] [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry_i_6
       (.I0(A[2]),
        .I1(\R2_reg[15] [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry_i_7
       (.I0(A[1]),
        .I1(\R2_reg[15] [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    mux10_carry_i_8
       (.I0(A[0]),
        .I1(\R2_reg[15] [0]),
        .O(S[0]));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hE5A722EEB4CD5DFABBBDA63665A5E2D55D1003A76B4062E0821A241621D9767E),
    .INIT_01(256'hFCDDDCB2AE020CA7F46F149ADDA9810F6AFD3E9C92D63E2BF085AF230F50FD28),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(0)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl 
       (.ADDRARDADDR({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(1'b0),
        .DBITERR(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\ramb_bl.ramb36_sin_bl.ram36_bl_0 ),
        .DOBDO(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_3 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'he)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_gate_3 
       (.I0(\inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_2 ),
        .I1(\inst_memIN/MEM_in0/ramb_bl.ramb36_sin_bl.ram36_bl_cooolgate_en_sig_1 ),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_3 ));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SINGLE_MACRO" *) 
module unimacro_BRAM_SINGLE_MACRO__parameterized1
   (DOADO,
    CLK,
    addr,
    pwropt,
    pwropt_1);
  output [31:0]DOADO;
  input CLK;
  input [3:0]addr;
  input pwropt;
  input pwropt_1;

  wire CLK;
  wire [31:0]DOADO;
  wire [3:0]addr;
  wire pwropt;
  wire pwropt_1;
  wire \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_4 ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h4A9C01667DAF0E9BF03A44321DD72242BAE958BC6DBF11EC170A4CD8C3C93156),
    .INIT_01(256'h90060BB7130E163AB0FF2F301A1D444B9E467DBA1E753BC2B3C25F027BA4027F),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(0)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl 
       (.ADDRARDADDR({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(1'b0),
        .DBITERR(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_4 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'he)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_gate_5 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_4 ));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SINGLE_MACRO" *) 
module unimacro_BRAM_SINGLE_MACRO__parameterized2
   (\ramb_bl.ramb36_sin_bl.ram36_bl_0 ,
    CLK,
    addr,
    pwropt,
    pwropt_1);
  output [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  input CLK;
  input [3:0]addr;
  input pwropt;
  input pwropt_1;

  wire CLK;
  wire [3:0]addr;
  wire pwropt;
  wire pwropt_1;
  wire [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  wire \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_5 ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hA1C855C8C04E53AD7250D50ADDB1F9AFF25C6F834B43448D288151B8D34D895F),
    .INIT_01(256'hCF38F3A4894C4C2C3B78EC9A977619A78002108459187D7D8E47052228307E38),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(0)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl 
       (.ADDRARDADDR({1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addr,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(1'b0),
        .DBITERR(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\ramb_bl.ramb36_sin_bl.ram36_bl_0 ),
        .DOBDO(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_5 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'he)) 
    \ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_gate_7 
       (.I0(pwropt_1),
        .I1(pwropt),
        .O(\ramb_bl.ramb36_sin_bl.ram36_bl_ENARDEN_cooolgate_en_sig_5 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Oct 11 15:26:02 2024
// Host        : Jaime running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/minde/Ambiente de Trabalho/Proj
//               SD/LAB/2/lab_2/lab_2.sim/sim_1/synth/timing/xsim/circuito_tb_time_synth.v}
// Design      : circuito
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module MemIN
   (Mux5_O_OBUF,
    DOADO,
    \ramb_bl.ramb36_sin_bl.ram36_bl ,
    \ramb_bl.ramb36_sin_bl.ram36_bl_0 ,
    \Mux5_O[31] ,
    \Mux5_O[31]_0 ,
    en2_OBUF,
    en3_OBUF,
    CLK,
    addr);
  output [31:0]Mux5_O_OBUF;
  output [31:0]DOADO;
  output [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl ;
  output [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  input [31:0]\Mux5_O[31] ;
  input [31:0]\Mux5_O[31]_0 ;
  input en2_OBUF;
  input en3_OBUF;
  input CLK;
  input [3:0]addr;

  wire CLK;
  wire [31:0]DOADO;
  wire [31:0]\Mux5_O[31] ;
  wire [31:0]\Mux5_O[31]_0 ;
  wire [31:0]Mux5_O_OBUF;
  wire [3:0]addr;
  wire en2_OBUF;
  wire en3_OBUF;
  wire [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl ;
  wire [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;

  unimacro_BRAM_SINGLE_MACRO__parameterized0 MEM_in0
       (.CLK(CLK),
        .DOADO(DOADO),
        .\Mux5_O[31] (\Mux5_O[31] ),
        .\Mux5_O[31]_0 (\Mux5_O[31]_0 ),
        .\Mux5_O[31]_1 (\ramb_bl.ramb36_sin_bl.ram36_bl [15:0]),
        .Mux5_O_OBUF(Mux5_O_OBUF),
        .addr(addr),
        .en2_OBUF(en2_OBUF),
        .en3_OBUF(en3_OBUF));
  unimacro_BRAM_SINGLE_MACRO__parameterized1 MEM_in1
       (.CLK(CLK),
        .addr(addr),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_0 (\ramb_bl.ramb36_sin_bl.ram36_bl ));
  unimacro_BRAM_SINGLE_MACRO__parameterized2 MEM_in2
       (.CLK(CLK),
        .addr(addr),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_0 (\ramb_bl.ramb36_sin_bl.ram36_bl_0 ));
endmodule

(* NotValidForBitStream *)
module circuito
   (clk,
    rst,
    we,
    done,
    addrMEMin,
    addrMEMout,
    dataOUT,
    ALU_sel,
    Reg1,
    Reg2,
    Reg3,
    Reg4,
    counter,
    sel1,
    sel2,
    sel4,
    sel3,
    sel5,
    sel6,
    en1,
    en2,
    en3,
    en4,
    Mux1_O,
    Mux2_O,
    Mux3_O,
    Mux4_O,
    Mux5_O,
    Mux6_O,
    Mult1_O,
    Mult2_O,
    ALU_O,
    Det_out,
    A,
    B,
    C,
    D,
    E,
    F);
  input clk;
  input rst;
  output we;
  output done;
  output [9:0]addrMEMin;
  output [9:0]addrMEMout;
  output [31:0]dataOUT;
  output ALU_sel;
  output [31:0]Reg1;
  output [31:0]Reg2;
  output [31:0]Reg3;
  output [31:0]Reg4;
  output [4:0]counter;
  output sel1;
  output sel2;
  output sel4;
  output [1:0]sel3;
  output [1:0]sel5;
  output [1:0]sel6;
  output en1;
  output en2;
  output en3;
  output en4;
  output [31:0]Mux1_O;
  output [31:0]Mux2_O;
  output [31:0]Mux3_O;
  output [31:0]Mux4_O;
  output [31:0]Mux5_O;
  output [31:0]Mux6_O;
  output [31:0]Mult1_O;
  output [31:0]Mult2_O;
  output [31:0]ALU_O;
  output [31:0]Det_out;
  output [15:0]A;
  output [15:0]B;
  output [15:0]C;
  output [15:0]D;
  output [15:0]E;
  output [15:0]F;

  wire [15:0]A;
  wire [31:0]ALU_O;
  wire [31:0]ALU_O_OBUF;
  wire ALU_sel;
  wire ALU_sel_OBUF;
  wire [15:0]A_OBUF;
  wire [15:0]B;
  wire [15:0]B_OBUF;
  wire [15:0]C;
  wire [15:0]C_OBUF;
  wire [15:0]D;
  wire [15:0]D_OBUF;
  wire [31:0]Det_out;
  wire [31:0]Det_out_OBUF;
  wire [15:0]E;
  wire [15:0]E_OBUF;
  wire [15:0]F;
  wire [15:0]F_OBUF;
  wire [31:0]Mult1_O;
  wire [31:0]Mult1_O_OBUF;
  wire [31:0]Mult2_O;
  wire [31:0]Mult2_O_OBUF;
  wire [31:0]Mux1_O;
  wire [31:0]Mux2_O;
  wire [31:0]Mux2_O_OBUF;
  wire [31:0]Mux3_O;
  wire [31:0]Mux3_O_OBUF;
  wire [31:0]Mux4_O;
  wire [31:0]Mux4_O_OBUF;
  wire [31:0]Mux5_O;
  wire [31:0]Mux5_O_OBUF;
  wire [31:0]Mux6_O;
  wire [31:0]Mux6_O_OBUF;
  wire [31:0]Reg1;
  wire [31:0]Reg1_OBUF;
  wire [31:0]Reg2;
  wire [31:0]Reg2_OBUF;
  wire [31:0]Reg3;
  wire [31:0]Reg3_OBUF;
  wire [31:0]Reg4;
  wire [31:0]Reg4_OBUF;
  wire [9:0]addrMEMin;
  wire [9:0]addrMEMout;
  wire [3:0]addrMEMout_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [4:0]counter;
  wire [4:0]counter_OBUF;
  wire [31:0]dataOUT;
  wire [31:0]dataOUT_OBUF;
  wire done;
  wire done_OBUF;
  wire en1;
  wire en1_OBUF;
  wire en2;
  wire en2_OBUF;
  wire en3;
  wire en3_OBUF;
  wire en4;
  wire en4_OBUF;
  wire inst_control_n_120;
  wire inst_control_n_121;
  wire inst_control_n_122;
  wire inst_control_n_123;
  wire inst_control_n_124;
  wire inst_control_n_125;
  wire inst_control_n_126;
  wire inst_control_n_127;
  wire inst_control_n_128;
  wire inst_control_n_129;
  wire inst_control_n_130;
  wire inst_control_n_131;
  wire inst_control_n_132;
  wire inst_control_n_133;
  wire inst_control_n_134;
  wire inst_control_n_135;
  wire inst_control_n_136;
  wire inst_control_n_137;
  wire inst_control_n_138;
  wire inst_control_n_139;
  wire inst_control_n_140;
  wire inst_control_n_141;
  wire inst_control_n_142;
  wire inst_control_n_143;
  wire inst_control_n_144;
  wire inst_control_n_145;
  wire inst_control_n_146;
  wire inst_control_n_147;
  wire inst_control_n_148;
  wire inst_control_n_149;
  wire inst_control_n_150;
  wire inst_control_n_151;
  wire rst;
  wire rst_IBUF;
  wire sel1;
  wire sel2;
  wire [1:0]sel3;
  wire [1:0]sel3_OBUF;
  wire sel4;
  wire sel4_OBUF;
  wire [1:0]sel5;
  wire [1:0]sel6;
  wire [1:0]sel6_OBUF;
  wire we;

initial begin
 $sdf_annotate("circuito_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF \ALU_O_OBUF[0]_inst 
       (.I(ALU_O_OBUF[0]),
        .O(ALU_O[0]));
  OBUF \ALU_O_OBUF[10]_inst 
       (.I(ALU_O_OBUF[10]),
        .O(ALU_O[10]));
  OBUF \ALU_O_OBUF[11]_inst 
       (.I(ALU_O_OBUF[11]),
        .O(ALU_O[11]));
  OBUF \ALU_O_OBUF[12]_inst 
       (.I(ALU_O_OBUF[12]),
        .O(ALU_O[12]));
  OBUF \ALU_O_OBUF[13]_inst 
       (.I(ALU_O_OBUF[13]),
        .O(ALU_O[13]));
  OBUF \ALU_O_OBUF[14]_inst 
       (.I(ALU_O_OBUF[14]),
        .O(ALU_O[14]));
  OBUF \ALU_O_OBUF[15]_inst 
       (.I(ALU_O_OBUF[15]),
        .O(ALU_O[15]));
  OBUF \ALU_O_OBUF[16]_inst 
       (.I(ALU_O_OBUF[16]),
        .O(ALU_O[16]));
  OBUF \ALU_O_OBUF[17]_inst 
       (.I(ALU_O_OBUF[17]),
        .O(ALU_O[17]));
  OBUF \ALU_O_OBUF[18]_inst 
       (.I(ALU_O_OBUF[18]),
        .O(ALU_O[18]));
  OBUF \ALU_O_OBUF[19]_inst 
       (.I(ALU_O_OBUF[19]),
        .O(ALU_O[19]));
  OBUF \ALU_O_OBUF[1]_inst 
       (.I(ALU_O_OBUF[1]),
        .O(ALU_O[1]));
  OBUF \ALU_O_OBUF[20]_inst 
       (.I(ALU_O_OBUF[20]),
        .O(ALU_O[20]));
  OBUF \ALU_O_OBUF[21]_inst 
       (.I(ALU_O_OBUF[21]),
        .O(ALU_O[21]));
  OBUF \ALU_O_OBUF[22]_inst 
       (.I(ALU_O_OBUF[22]),
        .O(ALU_O[22]));
  OBUF \ALU_O_OBUF[23]_inst 
       (.I(ALU_O_OBUF[23]),
        .O(ALU_O[23]));
  OBUF \ALU_O_OBUF[24]_inst 
       (.I(ALU_O_OBUF[24]),
        .O(ALU_O[24]));
  OBUF \ALU_O_OBUF[25]_inst 
       (.I(ALU_O_OBUF[25]),
        .O(ALU_O[25]));
  OBUF \ALU_O_OBUF[26]_inst 
       (.I(ALU_O_OBUF[26]),
        .O(ALU_O[26]));
  OBUF \ALU_O_OBUF[27]_inst 
       (.I(ALU_O_OBUF[27]),
        .O(ALU_O[27]));
  OBUF \ALU_O_OBUF[28]_inst 
       (.I(ALU_O_OBUF[28]),
        .O(ALU_O[28]));
  OBUF \ALU_O_OBUF[29]_inst 
       (.I(ALU_O_OBUF[29]),
        .O(ALU_O[29]));
  OBUF \ALU_O_OBUF[2]_inst 
       (.I(ALU_O_OBUF[2]),
        .O(ALU_O[2]));
  OBUF \ALU_O_OBUF[30]_inst 
       (.I(ALU_O_OBUF[30]),
        .O(ALU_O[30]));
  OBUF \ALU_O_OBUF[31]_inst 
       (.I(ALU_O_OBUF[31]),
        .O(ALU_O[31]));
  OBUF \ALU_O_OBUF[3]_inst 
       (.I(ALU_O_OBUF[3]),
        .O(ALU_O[3]));
  OBUF \ALU_O_OBUF[4]_inst 
       (.I(ALU_O_OBUF[4]),
        .O(ALU_O[4]));
  OBUF \ALU_O_OBUF[5]_inst 
       (.I(ALU_O_OBUF[5]),
        .O(ALU_O[5]));
  OBUF \ALU_O_OBUF[6]_inst 
       (.I(ALU_O_OBUF[6]),
        .O(ALU_O[6]));
  OBUF \ALU_O_OBUF[7]_inst 
       (.I(ALU_O_OBUF[7]),
        .O(ALU_O[7]));
  OBUF \ALU_O_OBUF[8]_inst 
       (.I(ALU_O_OBUF[8]),
        .O(ALU_O[8]));
  OBUF \ALU_O_OBUF[9]_inst 
       (.I(ALU_O_OBUF[9]),
        .O(ALU_O[9]));
  OBUF ALU_sel_OBUF_inst
       (.I(ALU_sel_OBUF),
        .O(ALU_sel));
  OBUF \A_OBUF[0]_inst 
       (.I(A_OBUF[0]),
        .O(A[0]));
  OBUF \A_OBUF[10]_inst 
       (.I(A_OBUF[10]),
        .O(A[10]));
  OBUF \A_OBUF[11]_inst 
       (.I(A_OBUF[11]),
        .O(A[11]));
  OBUF \A_OBUF[12]_inst 
       (.I(A_OBUF[12]),
        .O(A[12]));
  OBUF \A_OBUF[13]_inst 
       (.I(A_OBUF[13]),
        .O(A[13]));
  OBUF \A_OBUF[14]_inst 
       (.I(A_OBUF[14]),
        .O(A[14]));
  OBUF \A_OBUF[15]_inst 
       (.I(A_OBUF[15]),
        .O(A[15]));
  OBUF \A_OBUF[1]_inst 
       (.I(A_OBUF[1]),
        .O(A[1]));
  OBUF \A_OBUF[2]_inst 
       (.I(A_OBUF[2]),
        .O(A[2]));
  OBUF \A_OBUF[3]_inst 
       (.I(A_OBUF[3]),
        .O(A[3]));
  OBUF \A_OBUF[4]_inst 
       (.I(A_OBUF[4]),
        .O(A[4]));
  OBUF \A_OBUF[5]_inst 
       (.I(A_OBUF[5]),
        .O(A[5]));
  OBUF \A_OBUF[6]_inst 
       (.I(A_OBUF[6]),
        .O(A[6]));
  OBUF \A_OBUF[7]_inst 
       (.I(A_OBUF[7]),
        .O(A[7]));
  OBUF \A_OBUF[8]_inst 
       (.I(A_OBUF[8]),
        .O(A[8]));
  OBUF \A_OBUF[9]_inst 
       (.I(A_OBUF[9]),
        .O(A[9]));
  OBUF \B_OBUF[0]_inst 
       (.I(B_OBUF[0]),
        .O(B[0]));
  OBUF \B_OBUF[10]_inst 
       (.I(B_OBUF[10]),
        .O(B[10]));
  OBUF \B_OBUF[11]_inst 
       (.I(B_OBUF[11]),
        .O(B[11]));
  OBUF \B_OBUF[12]_inst 
       (.I(B_OBUF[12]),
        .O(B[12]));
  OBUF \B_OBUF[13]_inst 
       (.I(B_OBUF[13]),
        .O(B[13]));
  OBUF \B_OBUF[14]_inst 
       (.I(B_OBUF[14]),
        .O(B[14]));
  OBUF \B_OBUF[15]_inst 
       (.I(B_OBUF[15]),
        .O(B[15]));
  OBUF \B_OBUF[1]_inst 
       (.I(B_OBUF[1]),
        .O(B[1]));
  OBUF \B_OBUF[2]_inst 
       (.I(B_OBUF[2]),
        .O(B[2]));
  OBUF \B_OBUF[3]_inst 
       (.I(B_OBUF[3]),
        .O(B[3]));
  OBUF \B_OBUF[4]_inst 
       (.I(B_OBUF[4]),
        .O(B[4]));
  OBUF \B_OBUF[5]_inst 
       (.I(B_OBUF[5]),
        .O(B[5]));
  OBUF \B_OBUF[6]_inst 
       (.I(B_OBUF[6]),
        .O(B[6]));
  OBUF \B_OBUF[7]_inst 
       (.I(B_OBUF[7]),
        .O(B[7]));
  OBUF \B_OBUF[8]_inst 
       (.I(B_OBUF[8]),
        .O(B[8]));
  OBUF \B_OBUF[9]_inst 
       (.I(B_OBUF[9]),
        .O(B[9]));
  OBUF \C_OBUF[0]_inst 
       (.I(C_OBUF[0]),
        .O(C[0]));
  OBUF \C_OBUF[10]_inst 
       (.I(C_OBUF[10]),
        .O(C[10]));
  OBUF \C_OBUF[11]_inst 
       (.I(C_OBUF[11]),
        .O(C[11]));
  OBUF \C_OBUF[12]_inst 
       (.I(C_OBUF[12]),
        .O(C[12]));
  OBUF \C_OBUF[13]_inst 
       (.I(C_OBUF[13]),
        .O(C[13]));
  OBUF \C_OBUF[14]_inst 
       (.I(C_OBUF[14]),
        .O(C[14]));
  OBUF \C_OBUF[15]_inst 
       (.I(C_OBUF[15]),
        .O(C[15]));
  OBUF \C_OBUF[1]_inst 
       (.I(C_OBUF[1]),
        .O(C[1]));
  OBUF \C_OBUF[2]_inst 
       (.I(C_OBUF[2]),
        .O(C[2]));
  OBUF \C_OBUF[3]_inst 
       (.I(C_OBUF[3]),
        .O(C[3]));
  OBUF \C_OBUF[4]_inst 
       (.I(C_OBUF[4]),
        .O(C[4]));
  OBUF \C_OBUF[5]_inst 
       (.I(C_OBUF[5]),
        .O(C[5]));
  OBUF \C_OBUF[6]_inst 
       (.I(C_OBUF[6]),
        .O(C[6]));
  OBUF \C_OBUF[7]_inst 
       (.I(C_OBUF[7]),
        .O(C[7]));
  OBUF \C_OBUF[8]_inst 
       (.I(C_OBUF[8]),
        .O(C[8]));
  OBUF \C_OBUF[9]_inst 
       (.I(C_OBUF[9]),
        .O(C[9]));
  OBUF \D_OBUF[0]_inst 
       (.I(D_OBUF[0]),
        .O(D[0]));
  OBUF \D_OBUF[10]_inst 
       (.I(D_OBUF[10]),
        .O(D[10]));
  OBUF \D_OBUF[11]_inst 
       (.I(D_OBUF[11]),
        .O(D[11]));
  OBUF \D_OBUF[12]_inst 
       (.I(D_OBUF[12]),
        .O(D[12]));
  OBUF \D_OBUF[13]_inst 
       (.I(D_OBUF[13]),
        .O(D[13]));
  OBUF \D_OBUF[14]_inst 
       (.I(D_OBUF[14]),
        .O(D[14]));
  OBUF \D_OBUF[15]_inst 
       (.I(D_OBUF[15]),
        .O(D[15]));
  OBUF \D_OBUF[1]_inst 
       (.I(D_OBUF[1]),
        .O(D[1]));
  OBUF \D_OBUF[2]_inst 
       (.I(D_OBUF[2]),
        .O(D[2]));
  OBUF \D_OBUF[3]_inst 
       (.I(D_OBUF[3]),
        .O(D[3]));
  OBUF \D_OBUF[4]_inst 
       (.I(D_OBUF[4]),
        .O(D[4]));
  OBUF \D_OBUF[5]_inst 
       (.I(D_OBUF[5]),
        .O(D[5]));
  OBUF \D_OBUF[6]_inst 
       (.I(D_OBUF[6]),
        .O(D[6]));
  OBUF \D_OBUF[7]_inst 
       (.I(D_OBUF[7]),
        .O(D[7]));
  OBUF \D_OBUF[8]_inst 
       (.I(D_OBUF[8]),
        .O(D[8]));
  OBUF \D_OBUF[9]_inst 
       (.I(D_OBUF[9]),
        .O(D[9]));
  OBUF \Det_out_OBUF[0]_inst 
       (.I(Det_out_OBUF[0]),
        .O(Det_out[0]));
  OBUF \Det_out_OBUF[10]_inst 
       (.I(Det_out_OBUF[10]),
        .O(Det_out[10]));
  OBUF \Det_out_OBUF[11]_inst 
       (.I(Det_out_OBUF[11]),
        .O(Det_out[11]));
  OBUF \Det_out_OBUF[12]_inst 
       (.I(Det_out_OBUF[12]),
        .O(Det_out[12]));
  OBUF \Det_out_OBUF[13]_inst 
       (.I(Det_out_OBUF[13]),
        .O(Det_out[13]));
  OBUF \Det_out_OBUF[14]_inst 
       (.I(Det_out_OBUF[14]),
        .O(Det_out[14]));
  OBUF \Det_out_OBUF[15]_inst 
       (.I(Det_out_OBUF[15]),
        .O(Det_out[15]));
  OBUF \Det_out_OBUF[16]_inst 
       (.I(Det_out_OBUF[16]),
        .O(Det_out[16]));
  OBUF \Det_out_OBUF[17]_inst 
       (.I(Det_out_OBUF[17]),
        .O(Det_out[17]));
  OBUF \Det_out_OBUF[18]_inst 
       (.I(Det_out_OBUF[18]),
        .O(Det_out[18]));
  OBUF \Det_out_OBUF[19]_inst 
       (.I(Det_out_OBUF[19]),
        .O(Det_out[19]));
  OBUF \Det_out_OBUF[1]_inst 
       (.I(Det_out_OBUF[1]),
        .O(Det_out[1]));
  OBUF \Det_out_OBUF[20]_inst 
       (.I(Det_out_OBUF[20]),
        .O(Det_out[20]));
  OBUF \Det_out_OBUF[21]_inst 
       (.I(Det_out_OBUF[21]),
        .O(Det_out[21]));
  OBUF \Det_out_OBUF[22]_inst 
       (.I(Det_out_OBUF[22]),
        .O(Det_out[22]));
  OBUF \Det_out_OBUF[23]_inst 
       (.I(Det_out_OBUF[23]),
        .O(Det_out[23]));
  OBUF \Det_out_OBUF[24]_inst 
       (.I(Det_out_OBUF[24]),
        .O(Det_out[24]));
  OBUF \Det_out_OBUF[25]_inst 
       (.I(Det_out_OBUF[25]),
        .O(Det_out[25]));
  OBUF \Det_out_OBUF[26]_inst 
       (.I(Det_out_OBUF[26]),
        .O(Det_out[26]));
  OBUF \Det_out_OBUF[27]_inst 
       (.I(Det_out_OBUF[27]),
        .O(Det_out[27]));
  OBUF \Det_out_OBUF[28]_inst 
       (.I(Det_out_OBUF[28]),
        .O(Det_out[28]));
  OBUF \Det_out_OBUF[29]_inst 
       (.I(Det_out_OBUF[29]),
        .O(Det_out[29]));
  OBUF \Det_out_OBUF[2]_inst 
       (.I(Det_out_OBUF[2]),
        .O(Det_out[2]));
  OBUF \Det_out_OBUF[30]_inst 
       (.I(Det_out_OBUF[30]),
        .O(Det_out[30]));
  OBUF \Det_out_OBUF[31]_inst 
       (.I(Det_out_OBUF[31]),
        .O(Det_out[31]));
  OBUF \Det_out_OBUF[3]_inst 
       (.I(Det_out_OBUF[3]),
        .O(Det_out[3]));
  OBUF \Det_out_OBUF[4]_inst 
       (.I(Det_out_OBUF[4]),
        .O(Det_out[4]));
  OBUF \Det_out_OBUF[5]_inst 
       (.I(Det_out_OBUF[5]),
        .O(Det_out[5]));
  OBUF \Det_out_OBUF[6]_inst 
       (.I(Det_out_OBUF[6]),
        .O(Det_out[6]));
  OBUF \Det_out_OBUF[7]_inst 
       (.I(Det_out_OBUF[7]),
        .O(Det_out[7]));
  OBUF \Det_out_OBUF[8]_inst 
       (.I(Det_out_OBUF[8]),
        .O(Det_out[8]));
  OBUF \Det_out_OBUF[9]_inst 
       (.I(Det_out_OBUF[9]),
        .O(Det_out[9]));
  OBUF \E_OBUF[0]_inst 
       (.I(E_OBUF[0]),
        .O(E[0]));
  OBUF \E_OBUF[10]_inst 
       (.I(E_OBUF[10]),
        .O(E[10]));
  OBUF \E_OBUF[11]_inst 
       (.I(E_OBUF[11]),
        .O(E[11]));
  OBUF \E_OBUF[12]_inst 
       (.I(E_OBUF[12]),
        .O(E[12]));
  OBUF \E_OBUF[13]_inst 
       (.I(E_OBUF[13]),
        .O(E[13]));
  OBUF \E_OBUF[14]_inst 
       (.I(E_OBUF[14]),
        .O(E[14]));
  OBUF \E_OBUF[15]_inst 
       (.I(E_OBUF[15]),
        .O(E[15]));
  OBUF \E_OBUF[1]_inst 
       (.I(E_OBUF[1]),
        .O(E[1]));
  OBUF \E_OBUF[2]_inst 
       (.I(E_OBUF[2]),
        .O(E[2]));
  OBUF \E_OBUF[3]_inst 
       (.I(E_OBUF[3]),
        .O(E[3]));
  OBUF \E_OBUF[4]_inst 
       (.I(E_OBUF[4]),
        .O(E[4]));
  OBUF \E_OBUF[5]_inst 
       (.I(E_OBUF[5]),
        .O(E[5]));
  OBUF \E_OBUF[6]_inst 
       (.I(E_OBUF[6]),
        .O(E[6]));
  OBUF \E_OBUF[7]_inst 
       (.I(E_OBUF[7]),
        .O(E[7]));
  OBUF \E_OBUF[8]_inst 
       (.I(E_OBUF[8]),
        .O(E[8]));
  OBUF \E_OBUF[9]_inst 
       (.I(E_OBUF[9]),
        .O(E[9]));
  OBUF \F_OBUF[0]_inst 
       (.I(F_OBUF[0]),
        .O(F[0]));
  OBUF \F_OBUF[10]_inst 
       (.I(F_OBUF[10]),
        .O(F[10]));
  OBUF \F_OBUF[11]_inst 
       (.I(F_OBUF[11]),
        .O(F[11]));
  OBUF \F_OBUF[12]_inst 
       (.I(F_OBUF[12]),
        .O(F[12]));
  OBUF \F_OBUF[13]_inst 
       (.I(F_OBUF[13]),
        .O(F[13]));
  OBUF \F_OBUF[14]_inst 
       (.I(F_OBUF[14]),
        .O(F[14]));
  OBUF \F_OBUF[15]_inst 
       (.I(F_OBUF[15]),
        .O(F[15]));
  OBUF \F_OBUF[1]_inst 
       (.I(F_OBUF[1]),
        .O(F[1]));
  OBUF \F_OBUF[2]_inst 
       (.I(F_OBUF[2]),
        .O(F[2]));
  OBUF \F_OBUF[3]_inst 
       (.I(F_OBUF[3]),
        .O(F[3]));
  OBUF \F_OBUF[4]_inst 
       (.I(F_OBUF[4]),
        .O(F[4]));
  OBUF \F_OBUF[5]_inst 
       (.I(F_OBUF[5]),
        .O(F[5]));
  OBUF \F_OBUF[6]_inst 
       (.I(F_OBUF[6]),
        .O(F[6]));
  OBUF \F_OBUF[7]_inst 
       (.I(F_OBUF[7]),
        .O(F[7]));
  OBUF \F_OBUF[8]_inst 
       (.I(F_OBUF[8]),
        .O(F[8]));
  OBUF \F_OBUF[9]_inst 
       (.I(F_OBUF[9]),
        .O(F[9]));
  OBUF \Mult1_O_OBUF[0]_inst 
       (.I(Mult1_O_OBUF[0]),
        .O(Mult1_O[0]));
  OBUF \Mult1_O_OBUF[10]_inst 
       (.I(Mult1_O_OBUF[10]),
        .O(Mult1_O[10]));
  OBUF \Mult1_O_OBUF[11]_inst 
       (.I(Mult1_O_OBUF[11]),
        .O(Mult1_O[11]));
  OBUF \Mult1_O_OBUF[12]_inst 
       (.I(Mult1_O_OBUF[12]),
        .O(Mult1_O[12]));
  OBUF \Mult1_O_OBUF[13]_inst 
       (.I(Mult1_O_OBUF[13]),
        .O(Mult1_O[13]));
  OBUF \Mult1_O_OBUF[14]_inst 
       (.I(Mult1_O_OBUF[14]),
        .O(Mult1_O[14]));
  OBUF \Mult1_O_OBUF[15]_inst 
       (.I(Mult1_O_OBUF[15]),
        .O(Mult1_O[15]));
  OBUF \Mult1_O_OBUF[16]_inst 
       (.I(Mult1_O_OBUF[16]),
        .O(Mult1_O[16]));
  OBUF \Mult1_O_OBUF[17]_inst 
       (.I(Mult1_O_OBUF[17]),
        .O(Mult1_O[17]));
  OBUF \Mult1_O_OBUF[18]_inst 
       (.I(Mult1_O_OBUF[18]),
        .O(Mult1_O[18]));
  OBUF \Mult1_O_OBUF[19]_inst 
       (.I(Mult1_O_OBUF[19]),
        .O(Mult1_O[19]));
  OBUF \Mult1_O_OBUF[1]_inst 
       (.I(Mult1_O_OBUF[1]),
        .O(Mult1_O[1]));
  OBUF \Mult1_O_OBUF[20]_inst 
       (.I(Mult1_O_OBUF[20]),
        .O(Mult1_O[20]));
  OBUF \Mult1_O_OBUF[21]_inst 
       (.I(Mult1_O_OBUF[21]),
        .O(Mult1_O[21]));
  OBUF \Mult1_O_OBUF[22]_inst 
       (.I(Mult1_O_OBUF[22]),
        .O(Mult1_O[22]));
  OBUF \Mult1_O_OBUF[23]_inst 
       (.I(Mult1_O_OBUF[23]),
        .O(Mult1_O[23]));
  OBUF \Mult1_O_OBUF[24]_inst 
       (.I(Mult1_O_OBUF[24]),
        .O(Mult1_O[24]));
  OBUF \Mult1_O_OBUF[25]_inst 
       (.I(Mult1_O_OBUF[25]),
        .O(Mult1_O[25]));
  OBUF \Mult1_O_OBUF[26]_inst 
       (.I(Mult1_O_OBUF[26]),
        .O(Mult1_O[26]));
  OBUF \Mult1_O_OBUF[27]_inst 
       (.I(Mult1_O_OBUF[27]),
        .O(Mult1_O[27]));
  OBUF \Mult1_O_OBUF[28]_inst 
       (.I(Mult1_O_OBUF[28]),
        .O(Mult1_O[28]));
  OBUF \Mult1_O_OBUF[29]_inst 
       (.I(Mult1_O_OBUF[29]),
        .O(Mult1_O[29]));
  OBUF \Mult1_O_OBUF[2]_inst 
       (.I(Mult1_O_OBUF[2]),
        .O(Mult1_O[2]));
  OBUF \Mult1_O_OBUF[30]_inst 
       (.I(Mult1_O_OBUF[30]),
        .O(Mult1_O[30]));
  OBUF \Mult1_O_OBUF[31]_inst 
       (.I(Mult1_O_OBUF[31]),
        .O(Mult1_O[31]));
  OBUF \Mult1_O_OBUF[3]_inst 
       (.I(Mult1_O_OBUF[3]),
        .O(Mult1_O[3]));
  OBUF \Mult1_O_OBUF[4]_inst 
       (.I(Mult1_O_OBUF[4]),
        .O(Mult1_O[4]));
  OBUF \Mult1_O_OBUF[5]_inst 
       (.I(Mult1_O_OBUF[5]),
        .O(Mult1_O[5]));
  OBUF \Mult1_O_OBUF[6]_inst 
       (.I(Mult1_O_OBUF[6]),
        .O(Mult1_O[6]));
  OBUF \Mult1_O_OBUF[7]_inst 
       (.I(Mult1_O_OBUF[7]),
        .O(Mult1_O[7]));
  OBUF \Mult1_O_OBUF[8]_inst 
       (.I(Mult1_O_OBUF[8]),
        .O(Mult1_O[8]));
  OBUF \Mult1_O_OBUF[9]_inst 
       (.I(Mult1_O_OBUF[9]),
        .O(Mult1_O[9]));
  OBUF \Mult2_O_OBUF[0]_inst 
       (.I(Mult2_O_OBUF[0]),
        .O(Mult2_O[0]));
  OBUF \Mult2_O_OBUF[10]_inst 
       (.I(Mult2_O_OBUF[10]),
        .O(Mult2_O[10]));
  OBUF \Mult2_O_OBUF[11]_inst 
       (.I(Mult2_O_OBUF[11]),
        .O(Mult2_O[11]));
  OBUF \Mult2_O_OBUF[12]_inst 
       (.I(Mult2_O_OBUF[12]),
        .O(Mult2_O[12]));
  OBUF \Mult2_O_OBUF[13]_inst 
       (.I(Mult2_O_OBUF[13]),
        .O(Mult2_O[13]));
  OBUF \Mult2_O_OBUF[14]_inst 
       (.I(Mult2_O_OBUF[14]),
        .O(Mult2_O[14]));
  OBUF \Mult2_O_OBUF[15]_inst 
       (.I(Mult2_O_OBUF[15]),
        .O(Mult2_O[15]));
  OBUF \Mult2_O_OBUF[16]_inst 
       (.I(Mult2_O_OBUF[16]),
        .O(Mult2_O[16]));
  OBUF \Mult2_O_OBUF[17]_inst 
       (.I(Mult2_O_OBUF[17]),
        .O(Mult2_O[17]));
  OBUF \Mult2_O_OBUF[18]_inst 
       (.I(Mult2_O_OBUF[18]),
        .O(Mult2_O[18]));
  OBUF \Mult2_O_OBUF[19]_inst 
       (.I(Mult2_O_OBUF[19]),
        .O(Mult2_O[19]));
  OBUF \Mult2_O_OBUF[1]_inst 
       (.I(Mult2_O_OBUF[1]),
        .O(Mult2_O[1]));
  OBUF \Mult2_O_OBUF[20]_inst 
       (.I(Mult2_O_OBUF[20]),
        .O(Mult2_O[20]));
  OBUF \Mult2_O_OBUF[21]_inst 
       (.I(Mult2_O_OBUF[21]),
        .O(Mult2_O[21]));
  OBUF \Mult2_O_OBUF[22]_inst 
       (.I(Mult2_O_OBUF[22]),
        .O(Mult2_O[22]));
  OBUF \Mult2_O_OBUF[23]_inst 
       (.I(Mult2_O_OBUF[23]),
        .O(Mult2_O[23]));
  OBUF \Mult2_O_OBUF[24]_inst 
       (.I(Mult2_O_OBUF[24]),
        .O(Mult2_O[24]));
  OBUF \Mult2_O_OBUF[25]_inst 
       (.I(Mult2_O_OBUF[25]),
        .O(Mult2_O[25]));
  OBUF \Mult2_O_OBUF[26]_inst 
       (.I(Mult2_O_OBUF[26]),
        .O(Mult2_O[26]));
  OBUF \Mult2_O_OBUF[27]_inst 
       (.I(Mult2_O_OBUF[27]),
        .O(Mult2_O[27]));
  OBUF \Mult2_O_OBUF[28]_inst 
       (.I(Mult2_O_OBUF[28]),
        .O(Mult2_O[28]));
  OBUF \Mult2_O_OBUF[29]_inst 
       (.I(Mult2_O_OBUF[29]),
        .O(Mult2_O[29]));
  OBUF \Mult2_O_OBUF[2]_inst 
       (.I(Mult2_O_OBUF[2]),
        .O(Mult2_O[2]));
  OBUF \Mult2_O_OBUF[30]_inst 
       (.I(Mult2_O_OBUF[30]),
        .O(Mult2_O[30]));
  OBUF \Mult2_O_OBUF[31]_inst 
       (.I(Mult2_O_OBUF[31]),
        .O(Mult2_O[31]));
  OBUF \Mult2_O_OBUF[3]_inst 
       (.I(Mult2_O_OBUF[3]),
        .O(Mult2_O[3]));
  OBUF \Mult2_O_OBUF[4]_inst 
       (.I(Mult2_O_OBUF[4]),
        .O(Mult2_O[4]));
  OBUF \Mult2_O_OBUF[5]_inst 
       (.I(Mult2_O_OBUF[5]),
        .O(Mult2_O[5]));
  OBUF \Mult2_O_OBUF[6]_inst 
       (.I(Mult2_O_OBUF[6]),
        .O(Mult2_O[6]));
  OBUF \Mult2_O_OBUF[7]_inst 
       (.I(Mult2_O_OBUF[7]),
        .O(Mult2_O[7]));
  OBUF \Mult2_O_OBUF[8]_inst 
       (.I(Mult2_O_OBUF[8]),
        .O(Mult2_O[8]));
  OBUF \Mult2_O_OBUF[9]_inst 
       (.I(Mult2_O_OBUF[9]),
        .O(Mult2_O[9]));
  OBUF \Mux1_O_OBUF[0]_inst 
       (.I(Det_out_OBUF[0]),
        .O(Mux1_O[0]));
  OBUF \Mux1_O_OBUF[10]_inst 
       (.I(Det_out_OBUF[10]),
        .O(Mux1_O[10]));
  OBUF \Mux1_O_OBUF[11]_inst 
       (.I(Det_out_OBUF[11]),
        .O(Mux1_O[11]));
  OBUF \Mux1_O_OBUF[12]_inst 
       (.I(Det_out_OBUF[12]),
        .O(Mux1_O[12]));
  OBUF \Mux1_O_OBUF[13]_inst 
       (.I(Det_out_OBUF[13]),
        .O(Mux1_O[13]));
  OBUF \Mux1_O_OBUF[14]_inst 
       (.I(Det_out_OBUF[14]),
        .O(Mux1_O[14]));
  OBUF \Mux1_O_OBUF[15]_inst 
       (.I(Det_out_OBUF[15]),
        .O(Mux1_O[15]));
  OBUF \Mux1_O_OBUF[16]_inst 
       (.I(Det_out_OBUF[16]),
        .O(Mux1_O[16]));
  OBUF \Mux1_O_OBUF[17]_inst 
       (.I(Det_out_OBUF[17]),
        .O(Mux1_O[17]));
  OBUF \Mux1_O_OBUF[18]_inst 
       (.I(Det_out_OBUF[18]),
        .O(Mux1_O[18]));
  OBUF \Mux1_O_OBUF[19]_inst 
       (.I(Det_out_OBUF[19]),
        .O(Mux1_O[19]));
  OBUF \Mux1_O_OBUF[1]_inst 
       (.I(Det_out_OBUF[1]),
        .O(Mux1_O[1]));
  OBUF \Mux1_O_OBUF[20]_inst 
       (.I(Det_out_OBUF[20]),
        .O(Mux1_O[20]));
  OBUF \Mux1_O_OBUF[21]_inst 
       (.I(Det_out_OBUF[21]),
        .O(Mux1_O[21]));
  OBUF \Mux1_O_OBUF[22]_inst 
       (.I(Det_out_OBUF[22]),
        .O(Mux1_O[22]));
  OBUF \Mux1_O_OBUF[23]_inst 
       (.I(Det_out_OBUF[23]),
        .O(Mux1_O[23]));
  OBUF \Mux1_O_OBUF[24]_inst 
       (.I(Det_out_OBUF[24]),
        .O(Mux1_O[24]));
  OBUF \Mux1_O_OBUF[25]_inst 
       (.I(Det_out_OBUF[25]),
        .O(Mux1_O[25]));
  OBUF \Mux1_O_OBUF[26]_inst 
       (.I(Det_out_OBUF[26]),
        .O(Mux1_O[26]));
  OBUF \Mux1_O_OBUF[27]_inst 
       (.I(Det_out_OBUF[27]),
        .O(Mux1_O[27]));
  OBUF \Mux1_O_OBUF[28]_inst 
       (.I(Det_out_OBUF[28]),
        .O(Mux1_O[28]));
  OBUF \Mux1_O_OBUF[29]_inst 
       (.I(Det_out_OBUF[29]),
        .O(Mux1_O[29]));
  OBUF \Mux1_O_OBUF[2]_inst 
       (.I(Det_out_OBUF[2]),
        .O(Mux1_O[2]));
  OBUF \Mux1_O_OBUF[30]_inst 
       (.I(Det_out_OBUF[30]),
        .O(Mux1_O[30]));
  OBUF \Mux1_O_OBUF[31]_inst 
       (.I(Det_out_OBUF[31]),
        .O(Mux1_O[31]));
  OBUF \Mux1_O_OBUF[3]_inst 
       (.I(Det_out_OBUF[3]),
        .O(Mux1_O[3]));
  OBUF \Mux1_O_OBUF[4]_inst 
       (.I(Det_out_OBUF[4]),
        .O(Mux1_O[4]));
  OBUF \Mux1_O_OBUF[5]_inst 
       (.I(Det_out_OBUF[5]),
        .O(Mux1_O[5]));
  OBUF \Mux1_O_OBUF[6]_inst 
       (.I(Det_out_OBUF[6]),
        .O(Mux1_O[6]));
  OBUF \Mux1_O_OBUF[7]_inst 
       (.I(Det_out_OBUF[7]),
        .O(Mux1_O[7]));
  OBUF \Mux1_O_OBUF[8]_inst 
       (.I(Det_out_OBUF[8]),
        .O(Mux1_O[8]));
  OBUF \Mux1_O_OBUF[9]_inst 
       (.I(Det_out_OBUF[9]),
        .O(Mux1_O[9]));
  OBUF \Mux2_O_OBUF[0]_inst 
       (.I(Mux2_O_OBUF[0]),
        .O(Mux2_O[0]));
  OBUF \Mux2_O_OBUF[10]_inst 
       (.I(Mux2_O_OBUF[10]),
        .O(Mux2_O[10]));
  OBUF \Mux2_O_OBUF[11]_inst 
       (.I(Mux2_O_OBUF[11]),
        .O(Mux2_O[11]));
  OBUF \Mux2_O_OBUF[12]_inst 
       (.I(Mux2_O_OBUF[12]),
        .O(Mux2_O[12]));
  OBUF \Mux2_O_OBUF[13]_inst 
       (.I(Mux2_O_OBUF[13]),
        .O(Mux2_O[13]));
  OBUF \Mux2_O_OBUF[14]_inst 
       (.I(Mux2_O_OBUF[14]),
        .O(Mux2_O[14]));
  OBUF \Mux2_O_OBUF[15]_inst 
       (.I(Mux2_O_OBUF[15]),
        .O(Mux2_O[15]));
  OBUF \Mux2_O_OBUF[16]_inst 
       (.I(Mux2_O_OBUF[16]),
        .O(Mux2_O[16]));
  OBUF \Mux2_O_OBUF[17]_inst 
       (.I(Mux2_O_OBUF[17]),
        .O(Mux2_O[17]));
  OBUF \Mux2_O_OBUF[18]_inst 
       (.I(Mux2_O_OBUF[18]),
        .O(Mux2_O[18]));
  OBUF \Mux2_O_OBUF[19]_inst 
       (.I(Mux2_O_OBUF[19]),
        .O(Mux2_O[19]));
  OBUF \Mux2_O_OBUF[1]_inst 
       (.I(Mux2_O_OBUF[1]),
        .O(Mux2_O[1]));
  OBUF \Mux2_O_OBUF[20]_inst 
       (.I(Mux2_O_OBUF[20]),
        .O(Mux2_O[20]));
  OBUF \Mux2_O_OBUF[21]_inst 
       (.I(Mux2_O_OBUF[21]),
        .O(Mux2_O[21]));
  OBUF \Mux2_O_OBUF[22]_inst 
       (.I(Mux2_O_OBUF[22]),
        .O(Mux2_O[22]));
  OBUF \Mux2_O_OBUF[23]_inst 
       (.I(Mux2_O_OBUF[23]),
        .O(Mux2_O[23]));
  OBUF \Mux2_O_OBUF[24]_inst 
       (.I(Mux2_O_OBUF[24]),
        .O(Mux2_O[24]));
  OBUF \Mux2_O_OBUF[25]_inst 
       (.I(Mux2_O_OBUF[25]),
        .O(Mux2_O[25]));
  OBUF \Mux2_O_OBUF[26]_inst 
       (.I(Mux2_O_OBUF[26]),
        .O(Mux2_O[26]));
  OBUF \Mux2_O_OBUF[27]_inst 
       (.I(Mux2_O_OBUF[27]),
        .O(Mux2_O[27]));
  OBUF \Mux2_O_OBUF[28]_inst 
       (.I(Mux2_O_OBUF[28]),
        .O(Mux2_O[28]));
  OBUF \Mux2_O_OBUF[29]_inst 
       (.I(Mux2_O_OBUF[29]),
        .O(Mux2_O[29]));
  OBUF \Mux2_O_OBUF[2]_inst 
       (.I(Mux2_O_OBUF[2]),
        .O(Mux2_O[2]));
  OBUF \Mux2_O_OBUF[30]_inst 
       (.I(Mux2_O_OBUF[30]),
        .O(Mux2_O[30]));
  OBUF \Mux2_O_OBUF[31]_inst 
       (.I(Mux2_O_OBUF[31]),
        .O(Mux2_O[31]));
  OBUF \Mux2_O_OBUF[3]_inst 
       (.I(Mux2_O_OBUF[3]),
        .O(Mux2_O[3]));
  OBUF \Mux2_O_OBUF[4]_inst 
       (.I(Mux2_O_OBUF[4]),
        .O(Mux2_O[4]));
  OBUF \Mux2_O_OBUF[5]_inst 
       (.I(Mux2_O_OBUF[5]),
        .O(Mux2_O[5]));
  OBUF \Mux2_O_OBUF[6]_inst 
       (.I(Mux2_O_OBUF[6]),
        .O(Mux2_O[6]));
  OBUF \Mux2_O_OBUF[7]_inst 
       (.I(Mux2_O_OBUF[7]),
        .O(Mux2_O[7]));
  OBUF \Mux2_O_OBUF[8]_inst 
       (.I(Mux2_O_OBUF[8]),
        .O(Mux2_O[8]));
  OBUF \Mux2_O_OBUF[9]_inst 
       (.I(Mux2_O_OBUF[9]),
        .O(Mux2_O[9]));
  OBUF \Mux3_O_OBUF[0]_inst 
       (.I(Mux3_O_OBUF[0]),
        .O(Mux3_O[0]));
  OBUF \Mux3_O_OBUF[10]_inst 
       (.I(Mux3_O_OBUF[10]),
        .O(Mux3_O[10]));
  OBUF \Mux3_O_OBUF[11]_inst 
       (.I(Mux3_O_OBUF[11]),
        .O(Mux3_O[11]));
  OBUF \Mux3_O_OBUF[12]_inst 
       (.I(Mux3_O_OBUF[12]),
        .O(Mux3_O[12]));
  OBUF \Mux3_O_OBUF[13]_inst 
       (.I(Mux3_O_OBUF[13]),
        .O(Mux3_O[13]));
  OBUF \Mux3_O_OBUF[14]_inst 
       (.I(Mux3_O_OBUF[14]),
        .O(Mux3_O[14]));
  OBUF \Mux3_O_OBUF[15]_inst 
       (.I(Mux3_O_OBUF[15]),
        .O(Mux3_O[15]));
  OBUF \Mux3_O_OBUF[16]_inst 
       (.I(Mux3_O_OBUF[16]),
        .O(Mux3_O[16]));
  OBUF \Mux3_O_OBUF[17]_inst 
       (.I(Mux3_O_OBUF[17]),
        .O(Mux3_O[17]));
  OBUF \Mux3_O_OBUF[18]_inst 
       (.I(Mux3_O_OBUF[18]),
        .O(Mux3_O[18]));
  OBUF \Mux3_O_OBUF[19]_inst 
       (.I(Mux3_O_OBUF[19]),
        .O(Mux3_O[19]));
  OBUF \Mux3_O_OBUF[1]_inst 
       (.I(Mux3_O_OBUF[1]),
        .O(Mux3_O[1]));
  OBUF \Mux3_O_OBUF[20]_inst 
       (.I(Mux3_O_OBUF[20]),
        .O(Mux3_O[20]));
  OBUF \Mux3_O_OBUF[21]_inst 
       (.I(Mux3_O_OBUF[21]),
        .O(Mux3_O[21]));
  OBUF \Mux3_O_OBUF[22]_inst 
       (.I(Mux3_O_OBUF[22]),
        .O(Mux3_O[22]));
  OBUF \Mux3_O_OBUF[23]_inst 
       (.I(Mux3_O_OBUF[23]),
        .O(Mux3_O[23]));
  OBUF \Mux3_O_OBUF[24]_inst 
       (.I(Mux3_O_OBUF[24]),
        .O(Mux3_O[24]));
  OBUF \Mux3_O_OBUF[25]_inst 
       (.I(Mux3_O_OBUF[25]),
        .O(Mux3_O[25]));
  OBUF \Mux3_O_OBUF[26]_inst 
       (.I(Mux3_O_OBUF[26]),
        .O(Mux3_O[26]));
  OBUF \Mux3_O_OBUF[27]_inst 
       (.I(Mux3_O_OBUF[27]),
        .O(Mux3_O[27]));
  OBUF \Mux3_O_OBUF[28]_inst 
       (.I(Mux3_O_OBUF[28]),
        .O(Mux3_O[28]));
  OBUF \Mux3_O_OBUF[29]_inst 
       (.I(Mux3_O_OBUF[29]),
        .O(Mux3_O[29]));
  OBUF \Mux3_O_OBUF[2]_inst 
       (.I(Mux3_O_OBUF[2]),
        .O(Mux3_O[2]));
  OBUF \Mux3_O_OBUF[30]_inst 
       (.I(Mux3_O_OBUF[30]),
        .O(Mux3_O[30]));
  OBUF \Mux3_O_OBUF[31]_inst 
       (.I(Mux3_O_OBUF[31]),
        .O(Mux3_O[31]));
  OBUF \Mux3_O_OBUF[3]_inst 
       (.I(Mux3_O_OBUF[3]),
        .O(Mux3_O[3]));
  OBUF \Mux3_O_OBUF[4]_inst 
       (.I(Mux3_O_OBUF[4]),
        .O(Mux3_O[4]));
  OBUF \Mux3_O_OBUF[5]_inst 
       (.I(Mux3_O_OBUF[5]),
        .O(Mux3_O[5]));
  OBUF \Mux3_O_OBUF[6]_inst 
       (.I(Mux3_O_OBUF[6]),
        .O(Mux3_O[6]));
  OBUF \Mux3_O_OBUF[7]_inst 
       (.I(Mux3_O_OBUF[7]),
        .O(Mux3_O[7]));
  OBUF \Mux3_O_OBUF[8]_inst 
       (.I(Mux3_O_OBUF[8]),
        .O(Mux3_O[8]));
  OBUF \Mux3_O_OBUF[9]_inst 
       (.I(Mux3_O_OBUF[9]),
        .O(Mux3_O[9]));
  OBUF \Mux4_O_OBUF[0]_inst 
       (.I(Mux4_O_OBUF[0]),
        .O(Mux4_O[0]));
  OBUF \Mux4_O_OBUF[10]_inst 
       (.I(Mux4_O_OBUF[10]),
        .O(Mux4_O[10]));
  OBUF \Mux4_O_OBUF[11]_inst 
       (.I(Mux4_O_OBUF[11]),
        .O(Mux4_O[11]));
  OBUF \Mux4_O_OBUF[12]_inst 
       (.I(Mux4_O_OBUF[12]),
        .O(Mux4_O[12]));
  OBUF \Mux4_O_OBUF[13]_inst 
       (.I(Mux4_O_OBUF[13]),
        .O(Mux4_O[13]));
  OBUF \Mux4_O_OBUF[14]_inst 
       (.I(Mux4_O_OBUF[14]),
        .O(Mux4_O[14]));
  OBUF \Mux4_O_OBUF[15]_inst 
       (.I(Mux4_O_OBUF[15]),
        .O(Mux4_O[15]));
  OBUF \Mux4_O_OBUF[16]_inst 
       (.I(Mux4_O_OBUF[16]),
        .O(Mux4_O[16]));
  OBUF \Mux4_O_OBUF[17]_inst 
       (.I(Mux4_O_OBUF[17]),
        .O(Mux4_O[17]));
  OBUF \Mux4_O_OBUF[18]_inst 
       (.I(Mux4_O_OBUF[18]),
        .O(Mux4_O[18]));
  OBUF \Mux4_O_OBUF[19]_inst 
       (.I(Mux4_O_OBUF[19]),
        .O(Mux4_O[19]));
  OBUF \Mux4_O_OBUF[1]_inst 
       (.I(Mux4_O_OBUF[1]),
        .O(Mux4_O[1]));
  OBUF \Mux4_O_OBUF[20]_inst 
       (.I(Mux4_O_OBUF[20]),
        .O(Mux4_O[20]));
  OBUF \Mux4_O_OBUF[21]_inst 
       (.I(Mux4_O_OBUF[21]),
        .O(Mux4_O[21]));
  OBUF \Mux4_O_OBUF[22]_inst 
       (.I(Mux4_O_OBUF[22]),
        .O(Mux4_O[22]));
  OBUF \Mux4_O_OBUF[23]_inst 
       (.I(Mux4_O_OBUF[23]),
        .O(Mux4_O[23]));
  OBUF \Mux4_O_OBUF[24]_inst 
       (.I(Mux4_O_OBUF[24]),
        .O(Mux4_O[24]));
  OBUF \Mux4_O_OBUF[25]_inst 
       (.I(Mux4_O_OBUF[25]),
        .O(Mux4_O[25]));
  OBUF \Mux4_O_OBUF[26]_inst 
       (.I(Mux4_O_OBUF[26]),
        .O(Mux4_O[26]));
  OBUF \Mux4_O_OBUF[27]_inst 
       (.I(Mux4_O_OBUF[27]),
        .O(Mux4_O[27]));
  OBUF \Mux4_O_OBUF[28]_inst 
       (.I(Mux4_O_OBUF[28]),
        .O(Mux4_O[28]));
  OBUF \Mux4_O_OBUF[29]_inst 
       (.I(Mux4_O_OBUF[29]),
        .O(Mux4_O[29]));
  OBUF \Mux4_O_OBUF[2]_inst 
       (.I(Mux4_O_OBUF[2]),
        .O(Mux4_O[2]));
  OBUF \Mux4_O_OBUF[30]_inst 
       (.I(Mux4_O_OBUF[30]),
        .O(Mux4_O[30]));
  OBUF \Mux4_O_OBUF[31]_inst 
       (.I(Mux4_O_OBUF[31]),
        .O(Mux4_O[31]));
  OBUF \Mux4_O_OBUF[3]_inst 
       (.I(Mux4_O_OBUF[3]),
        .O(Mux4_O[3]));
  OBUF \Mux4_O_OBUF[4]_inst 
       (.I(Mux4_O_OBUF[4]),
        .O(Mux4_O[4]));
  OBUF \Mux4_O_OBUF[5]_inst 
       (.I(Mux4_O_OBUF[5]),
        .O(Mux4_O[5]));
  OBUF \Mux4_O_OBUF[6]_inst 
       (.I(Mux4_O_OBUF[6]),
        .O(Mux4_O[6]));
  OBUF \Mux4_O_OBUF[7]_inst 
       (.I(Mux4_O_OBUF[7]),
        .O(Mux4_O[7]));
  OBUF \Mux4_O_OBUF[8]_inst 
       (.I(Mux4_O_OBUF[8]),
        .O(Mux4_O[8]));
  OBUF \Mux4_O_OBUF[9]_inst 
       (.I(Mux4_O_OBUF[9]),
        .O(Mux4_O[9]));
  OBUF \Mux5_O_OBUF[0]_inst 
       (.I(Mux5_O_OBUF[0]),
        .O(Mux5_O[0]));
  OBUF \Mux5_O_OBUF[10]_inst 
       (.I(Mux5_O_OBUF[10]),
        .O(Mux5_O[10]));
  OBUF \Mux5_O_OBUF[11]_inst 
       (.I(Mux5_O_OBUF[11]),
        .O(Mux5_O[11]));
  OBUF \Mux5_O_OBUF[12]_inst 
       (.I(Mux5_O_OBUF[12]),
        .O(Mux5_O[12]));
  OBUF \Mux5_O_OBUF[13]_inst 
       (.I(Mux5_O_OBUF[13]),
        .O(Mux5_O[13]));
  OBUF \Mux5_O_OBUF[14]_inst 
       (.I(Mux5_O_OBUF[14]),
        .O(Mux5_O[14]));
  OBUF \Mux5_O_OBUF[15]_inst 
       (.I(Mux5_O_OBUF[15]),
        .O(Mux5_O[15]));
  OBUF \Mux5_O_OBUF[16]_inst 
       (.I(Mux5_O_OBUF[16]),
        .O(Mux5_O[16]));
  OBUF \Mux5_O_OBUF[17]_inst 
       (.I(Mux5_O_OBUF[17]),
        .O(Mux5_O[17]));
  OBUF \Mux5_O_OBUF[18]_inst 
       (.I(Mux5_O_OBUF[18]),
        .O(Mux5_O[18]));
  OBUF \Mux5_O_OBUF[19]_inst 
       (.I(Mux5_O_OBUF[19]),
        .O(Mux5_O[19]));
  OBUF \Mux5_O_OBUF[1]_inst 
       (.I(Mux5_O_OBUF[1]),
        .O(Mux5_O[1]));
  OBUF \Mux5_O_OBUF[20]_inst 
       (.I(Mux5_O_OBUF[20]),
        .O(Mux5_O[20]));
  OBUF \Mux5_O_OBUF[21]_inst 
       (.I(Mux5_O_OBUF[21]),
        .O(Mux5_O[21]));
  OBUF \Mux5_O_OBUF[22]_inst 
       (.I(Mux5_O_OBUF[22]),
        .O(Mux5_O[22]));
  OBUF \Mux5_O_OBUF[23]_inst 
       (.I(Mux5_O_OBUF[23]),
        .O(Mux5_O[23]));
  OBUF \Mux5_O_OBUF[24]_inst 
       (.I(Mux5_O_OBUF[24]),
        .O(Mux5_O[24]));
  OBUF \Mux5_O_OBUF[25]_inst 
       (.I(Mux5_O_OBUF[25]),
        .O(Mux5_O[25]));
  OBUF \Mux5_O_OBUF[26]_inst 
       (.I(Mux5_O_OBUF[26]),
        .O(Mux5_O[26]));
  OBUF \Mux5_O_OBUF[27]_inst 
       (.I(Mux5_O_OBUF[27]),
        .O(Mux5_O[27]));
  OBUF \Mux5_O_OBUF[28]_inst 
       (.I(Mux5_O_OBUF[28]),
        .O(Mux5_O[28]));
  OBUF \Mux5_O_OBUF[29]_inst 
       (.I(Mux5_O_OBUF[29]),
        .O(Mux5_O[29]));
  OBUF \Mux5_O_OBUF[2]_inst 
       (.I(Mux5_O_OBUF[2]),
        .O(Mux5_O[2]));
  OBUF \Mux5_O_OBUF[30]_inst 
       (.I(Mux5_O_OBUF[30]),
        .O(Mux5_O[30]));
  OBUF \Mux5_O_OBUF[31]_inst 
       (.I(Mux5_O_OBUF[31]),
        .O(Mux5_O[31]));
  OBUF \Mux5_O_OBUF[3]_inst 
       (.I(Mux5_O_OBUF[3]),
        .O(Mux5_O[3]));
  OBUF \Mux5_O_OBUF[4]_inst 
       (.I(Mux5_O_OBUF[4]),
        .O(Mux5_O[4]));
  OBUF \Mux5_O_OBUF[5]_inst 
       (.I(Mux5_O_OBUF[5]),
        .O(Mux5_O[5]));
  OBUF \Mux5_O_OBUF[6]_inst 
       (.I(Mux5_O_OBUF[6]),
        .O(Mux5_O[6]));
  OBUF \Mux5_O_OBUF[7]_inst 
       (.I(Mux5_O_OBUF[7]),
        .O(Mux5_O[7]));
  OBUF \Mux5_O_OBUF[8]_inst 
       (.I(Mux5_O_OBUF[8]),
        .O(Mux5_O[8]));
  OBUF \Mux5_O_OBUF[9]_inst 
       (.I(Mux5_O_OBUF[9]),
        .O(Mux5_O[9]));
  OBUF \Mux6_O_OBUF[0]_inst 
       (.I(Mux6_O_OBUF[0]),
        .O(Mux6_O[0]));
  OBUF \Mux6_O_OBUF[10]_inst 
       (.I(Mux6_O_OBUF[10]),
        .O(Mux6_O[10]));
  OBUF \Mux6_O_OBUF[11]_inst 
       (.I(Mux6_O_OBUF[11]),
        .O(Mux6_O[11]));
  OBUF \Mux6_O_OBUF[12]_inst 
       (.I(Mux6_O_OBUF[12]),
        .O(Mux6_O[12]));
  OBUF \Mux6_O_OBUF[13]_inst 
       (.I(Mux6_O_OBUF[13]),
        .O(Mux6_O[13]));
  OBUF \Mux6_O_OBUF[14]_inst 
       (.I(Mux6_O_OBUF[14]),
        .O(Mux6_O[14]));
  OBUF \Mux6_O_OBUF[15]_inst 
       (.I(Mux6_O_OBUF[15]),
        .O(Mux6_O[15]));
  OBUF \Mux6_O_OBUF[16]_inst 
       (.I(Mux6_O_OBUF[16]),
        .O(Mux6_O[16]));
  OBUF \Mux6_O_OBUF[17]_inst 
       (.I(Mux6_O_OBUF[17]),
        .O(Mux6_O[17]));
  OBUF \Mux6_O_OBUF[18]_inst 
       (.I(Mux6_O_OBUF[18]),
        .O(Mux6_O[18]));
  OBUF \Mux6_O_OBUF[19]_inst 
       (.I(Mux6_O_OBUF[19]),
        .O(Mux6_O[19]));
  OBUF \Mux6_O_OBUF[1]_inst 
       (.I(Mux6_O_OBUF[1]),
        .O(Mux6_O[1]));
  OBUF \Mux6_O_OBUF[20]_inst 
       (.I(Mux6_O_OBUF[20]),
        .O(Mux6_O[20]));
  OBUF \Mux6_O_OBUF[21]_inst 
       (.I(Mux6_O_OBUF[21]),
        .O(Mux6_O[21]));
  OBUF \Mux6_O_OBUF[22]_inst 
       (.I(Mux6_O_OBUF[22]),
        .O(Mux6_O[22]));
  OBUF \Mux6_O_OBUF[23]_inst 
       (.I(Mux6_O_OBUF[23]),
        .O(Mux6_O[23]));
  OBUF \Mux6_O_OBUF[24]_inst 
       (.I(Mux6_O_OBUF[24]),
        .O(Mux6_O[24]));
  OBUF \Mux6_O_OBUF[25]_inst 
       (.I(Mux6_O_OBUF[25]),
        .O(Mux6_O[25]));
  OBUF \Mux6_O_OBUF[26]_inst 
       (.I(Mux6_O_OBUF[26]),
        .O(Mux6_O[26]));
  OBUF \Mux6_O_OBUF[27]_inst 
       (.I(Mux6_O_OBUF[27]),
        .O(Mux6_O[27]));
  OBUF \Mux6_O_OBUF[28]_inst 
       (.I(Mux6_O_OBUF[28]),
        .O(Mux6_O[28]));
  OBUF \Mux6_O_OBUF[29]_inst 
       (.I(Mux6_O_OBUF[29]),
        .O(Mux6_O[29]));
  OBUF \Mux6_O_OBUF[2]_inst 
       (.I(Mux6_O_OBUF[2]),
        .O(Mux6_O[2]));
  OBUF \Mux6_O_OBUF[30]_inst 
       (.I(Mux6_O_OBUF[30]),
        .O(Mux6_O[30]));
  OBUF \Mux6_O_OBUF[31]_inst 
       (.I(Mux6_O_OBUF[31]),
        .O(Mux6_O[31]));
  OBUF \Mux6_O_OBUF[3]_inst 
       (.I(Mux6_O_OBUF[3]),
        .O(Mux6_O[3]));
  OBUF \Mux6_O_OBUF[4]_inst 
       (.I(Mux6_O_OBUF[4]),
        .O(Mux6_O[4]));
  OBUF \Mux6_O_OBUF[5]_inst 
       (.I(Mux6_O_OBUF[5]),
        .O(Mux6_O[5]));
  OBUF \Mux6_O_OBUF[6]_inst 
       (.I(Mux6_O_OBUF[6]),
        .O(Mux6_O[6]));
  OBUF \Mux6_O_OBUF[7]_inst 
       (.I(Mux6_O_OBUF[7]),
        .O(Mux6_O[7]));
  OBUF \Mux6_O_OBUF[8]_inst 
       (.I(Mux6_O_OBUF[8]),
        .O(Mux6_O[8]));
  OBUF \Mux6_O_OBUF[9]_inst 
       (.I(Mux6_O_OBUF[9]),
        .O(Mux6_O[9]));
  OBUF \Reg1_OBUF[0]_inst 
       (.I(Reg1_OBUF[0]),
        .O(Reg1[0]));
  OBUF \Reg1_OBUF[10]_inst 
       (.I(Reg1_OBUF[10]),
        .O(Reg1[10]));
  OBUF \Reg1_OBUF[11]_inst 
       (.I(Reg1_OBUF[11]),
        .O(Reg1[11]));
  OBUF \Reg1_OBUF[12]_inst 
       (.I(Reg1_OBUF[12]),
        .O(Reg1[12]));
  OBUF \Reg1_OBUF[13]_inst 
       (.I(Reg1_OBUF[13]),
        .O(Reg1[13]));
  OBUF \Reg1_OBUF[14]_inst 
       (.I(Reg1_OBUF[14]),
        .O(Reg1[14]));
  OBUF \Reg1_OBUF[15]_inst 
       (.I(Reg1_OBUF[15]),
        .O(Reg1[15]));
  OBUF \Reg1_OBUF[16]_inst 
       (.I(Reg1_OBUF[16]),
        .O(Reg1[16]));
  OBUF \Reg1_OBUF[17]_inst 
       (.I(Reg1_OBUF[17]),
        .O(Reg1[17]));
  OBUF \Reg1_OBUF[18]_inst 
       (.I(Reg1_OBUF[18]),
        .O(Reg1[18]));
  OBUF \Reg1_OBUF[19]_inst 
       (.I(Reg1_OBUF[19]),
        .O(Reg1[19]));
  OBUF \Reg1_OBUF[1]_inst 
       (.I(Reg1_OBUF[1]),
        .O(Reg1[1]));
  OBUF \Reg1_OBUF[20]_inst 
       (.I(Reg1_OBUF[20]),
        .O(Reg1[20]));
  OBUF \Reg1_OBUF[21]_inst 
       (.I(Reg1_OBUF[21]),
        .O(Reg1[21]));
  OBUF \Reg1_OBUF[22]_inst 
       (.I(Reg1_OBUF[22]),
        .O(Reg1[22]));
  OBUF \Reg1_OBUF[23]_inst 
       (.I(Reg1_OBUF[23]),
        .O(Reg1[23]));
  OBUF \Reg1_OBUF[24]_inst 
       (.I(Reg1_OBUF[24]),
        .O(Reg1[24]));
  OBUF \Reg1_OBUF[25]_inst 
       (.I(Reg1_OBUF[25]),
        .O(Reg1[25]));
  OBUF \Reg1_OBUF[26]_inst 
       (.I(Reg1_OBUF[26]),
        .O(Reg1[26]));
  OBUF \Reg1_OBUF[27]_inst 
       (.I(Reg1_OBUF[27]),
        .O(Reg1[27]));
  OBUF \Reg1_OBUF[28]_inst 
       (.I(Reg1_OBUF[28]),
        .O(Reg1[28]));
  OBUF \Reg1_OBUF[29]_inst 
       (.I(Reg1_OBUF[29]),
        .O(Reg1[29]));
  OBUF \Reg1_OBUF[2]_inst 
       (.I(Reg1_OBUF[2]),
        .O(Reg1[2]));
  OBUF \Reg1_OBUF[30]_inst 
       (.I(Reg1_OBUF[30]),
        .O(Reg1[30]));
  OBUF \Reg1_OBUF[31]_inst 
       (.I(Reg1_OBUF[31]),
        .O(Reg1[31]));
  OBUF \Reg1_OBUF[3]_inst 
       (.I(Reg1_OBUF[3]),
        .O(Reg1[3]));
  OBUF \Reg1_OBUF[4]_inst 
       (.I(Reg1_OBUF[4]),
        .O(Reg1[4]));
  OBUF \Reg1_OBUF[5]_inst 
       (.I(Reg1_OBUF[5]),
        .O(Reg1[5]));
  OBUF \Reg1_OBUF[6]_inst 
       (.I(Reg1_OBUF[6]),
        .O(Reg1[6]));
  OBUF \Reg1_OBUF[7]_inst 
       (.I(Reg1_OBUF[7]),
        .O(Reg1[7]));
  OBUF \Reg1_OBUF[8]_inst 
       (.I(Reg1_OBUF[8]),
        .O(Reg1[8]));
  OBUF \Reg1_OBUF[9]_inst 
       (.I(Reg1_OBUF[9]),
        .O(Reg1[9]));
  OBUF \Reg2_OBUF[0]_inst 
       (.I(Reg2_OBUF[0]),
        .O(Reg2[0]));
  OBUF \Reg2_OBUF[10]_inst 
       (.I(Reg2_OBUF[10]),
        .O(Reg2[10]));
  OBUF \Reg2_OBUF[11]_inst 
       (.I(Reg2_OBUF[11]),
        .O(Reg2[11]));
  OBUF \Reg2_OBUF[12]_inst 
       (.I(Reg2_OBUF[12]),
        .O(Reg2[12]));
  OBUF \Reg2_OBUF[13]_inst 
       (.I(Reg2_OBUF[13]),
        .O(Reg2[13]));
  OBUF \Reg2_OBUF[14]_inst 
       (.I(Reg2_OBUF[14]),
        .O(Reg2[14]));
  OBUF \Reg2_OBUF[15]_inst 
       (.I(Reg2_OBUF[15]),
        .O(Reg2[15]));
  OBUF \Reg2_OBUF[16]_inst 
       (.I(Reg2_OBUF[16]),
        .O(Reg2[16]));
  OBUF \Reg2_OBUF[17]_inst 
       (.I(Reg2_OBUF[17]),
        .O(Reg2[17]));
  OBUF \Reg2_OBUF[18]_inst 
       (.I(Reg2_OBUF[18]),
        .O(Reg2[18]));
  OBUF \Reg2_OBUF[19]_inst 
       (.I(Reg2_OBUF[19]),
        .O(Reg2[19]));
  OBUF \Reg2_OBUF[1]_inst 
       (.I(Reg2_OBUF[1]),
        .O(Reg2[1]));
  OBUF \Reg2_OBUF[20]_inst 
       (.I(Reg2_OBUF[20]),
        .O(Reg2[20]));
  OBUF \Reg2_OBUF[21]_inst 
       (.I(Reg2_OBUF[21]),
        .O(Reg2[21]));
  OBUF \Reg2_OBUF[22]_inst 
       (.I(Reg2_OBUF[22]),
        .O(Reg2[22]));
  OBUF \Reg2_OBUF[23]_inst 
       (.I(Reg2_OBUF[23]),
        .O(Reg2[23]));
  OBUF \Reg2_OBUF[24]_inst 
       (.I(Reg2_OBUF[24]),
        .O(Reg2[24]));
  OBUF \Reg2_OBUF[25]_inst 
       (.I(Reg2_OBUF[25]),
        .O(Reg2[25]));
  OBUF \Reg2_OBUF[26]_inst 
       (.I(Reg2_OBUF[26]),
        .O(Reg2[26]));
  OBUF \Reg2_OBUF[27]_inst 
       (.I(Reg2_OBUF[27]),
        .O(Reg2[27]));
  OBUF \Reg2_OBUF[28]_inst 
       (.I(Reg2_OBUF[28]),
        .O(Reg2[28]));
  OBUF \Reg2_OBUF[29]_inst 
       (.I(Reg2_OBUF[29]),
        .O(Reg2[29]));
  OBUF \Reg2_OBUF[2]_inst 
       (.I(Reg2_OBUF[2]),
        .O(Reg2[2]));
  OBUF \Reg2_OBUF[30]_inst 
       (.I(Reg2_OBUF[30]),
        .O(Reg2[30]));
  OBUF \Reg2_OBUF[31]_inst 
       (.I(Reg2_OBUF[31]),
        .O(Reg2[31]));
  OBUF \Reg2_OBUF[3]_inst 
       (.I(Reg2_OBUF[3]),
        .O(Reg2[3]));
  OBUF \Reg2_OBUF[4]_inst 
       (.I(Reg2_OBUF[4]),
        .O(Reg2[4]));
  OBUF \Reg2_OBUF[5]_inst 
       (.I(Reg2_OBUF[5]),
        .O(Reg2[5]));
  OBUF \Reg2_OBUF[6]_inst 
       (.I(Reg2_OBUF[6]),
        .O(Reg2[6]));
  OBUF \Reg2_OBUF[7]_inst 
       (.I(Reg2_OBUF[7]),
        .O(Reg2[7]));
  OBUF \Reg2_OBUF[8]_inst 
       (.I(Reg2_OBUF[8]),
        .O(Reg2[8]));
  OBUF \Reg2_OBUF[9]_inst 
       (.I(Reg2_OBUF[9]),
        .O(Reg2[9]));
  OBUF \Reg3_OBUF[0]_inst 
       (.I(Reg3_OBUF[0]),
        .O(Reg3[0]));
  OBUF \Reg3_OBUF[10]_inst 
       (.I(Reg3_OBUF[10]),
        .O(Reg3[10]));
  OBUF \Reg3_OBUF[11]_inst 
       (.I(Reg3_OBUF[11]),
        .O(Reg3[11]));
  OBUF \Reg3_OBUF[12]_inst 
       (.I(Reg3_OBUF[12]),
        .O(Reg3[12]));
  OBUF \Reg3_OBUF[13]_inst 
       (.I(Reg3_OBUF[13]),
        .O(Reg3[13]));
  OBUF \Reg3_OBUF[14]_inst 
       (.I(Reg3_OBUF[14]),
        .O(Reg3[14]));
  OBUF \Reg3_OBUF[15]_inst 
       (.I(Reg3_OBUF[15]),
        .O(Reg3[15]));
  OBUF \Reg3_OBUF[16]_inst 
       (.I(Reg3_OBUF[16]),
        .O(Reg3[16]));
  OBUF \Reg3_OBUF[17]_inst 
       (.I(Reg3_OBUF[17]),
        .O(Reg3[17]));
  OBUF \Reg3_OBUF[18]_inst 
       (.I(Reg3_OBUF[18]),
        .O(Reg3[18]));
  OBUF \Reg3_OBUF[19]_inst 
       (.I(Reg3_OBUF[19]),
        .O(Reg3[19]));
  OBUF \Reg3_OBUF[1]_inst 
       (.I(Reg3_OBUF[1]),
        .O(Reg3[1]));
  OBUF \Reg3_OBUF[20]_inst 
       (.I(Reg3_OBUF[20]),
        .O(Reg3[20]));
  OBUF \Reg3_OBUF[21]_inst 
       (.I(Reg3_OBUF[21]),
        .O(Reg3[21]));
  OBUF \Reg3_OBUF[22]_inst 
       (.I(Reg3_OBUF[22]),
        .O(Reg3[22]));
  OBUF \Reg3_OBUF[23]_inst 
       (.I(Reg3_OBUF[23]),
        .O(Reg3[23]));
  OBUF \Reg3_OBUF[24]_inst 
       (.I(Reg3_OBUF[24]),
        .O(Reg3[24]));
  OBUF \Reg3_OBUF[25]_inst 
       (.I(Reg3_OBUF[25]),
        .O(Reg3[25]));
  OBUF \Reg3_OBUF[26]_inst 
       (.I(Reg3_OBUF[26]),
        .O(Reg3[26]));
  OBUF \Reg3_OBUF[27]_inst 
       (.I(Reg3_OBUF[27]),
        .O(Reg3[27]));
  OBUF \Reg3_OBUF[28]_inst 
       (.I(Reg3_OBUF[28]),
        .O(Reg3[28]));
  OBUF \Reg3_OBUF[29]_inst 
       (.I(Reg3_OBUF[29]),
        .O(Reg3[29]));
  OBUF \Reg3_OBUF[2]_inst 
       (.I(Reg3_OBUF[2]),
        .O(Reg3[2]));
  OBUF \Reg3_OBUF[30]_inst 
       (.I(Reg3_OBUF[30]),
        .O(Reg3[30]));
  OBUF \Reg3_OBUF[31]_inst 
       (.I(Reg3_OBUF[31]),
        .O(Reg3[31]));
  OBUF \Reg3_OBUF[3]_inst 
       (.I(Reg3_OBUF[3]),
        .O(Reg3[3]));
  OBUF \Reg3_OBUF[4]_inst 
       (.I(Reg3_OBUF[4]),
        .O(Reg3[4]));
  OBUF \Reg3_OBUF[5]_inst 
       (.I(Reg3_OBUF[5]),
        .O(Reg3[5]));
  OBUF \Reg3_OBUF[6]_inst 
       (.I(Reg3_OBUF[6]),
        .O(Reg3[6]));
  OBUF \Reg3_OBUF[7]_inst 
       (.I(Reg3_OBUF[7]),
        .O(Reg3[7]));
  OBUF \Reg3_OBUF[8]_inst 
       (.I(Reg3_OBUF[8]),
        .O(Reg3[8]));
  OBUF \Reg3_OBUF[9]_inst 
       (.I(Reg3_OBUF[9]),
        .O(Reg3[9]));
  OBUF \Reg4_OBUF[0]_inst 
       (.I(Reg4_OBUF[0]),
        .O(Reg4[0]));
  OBUF \Reg4_OBUF[10]_inst 
       (.I(Reg4_OBUF[10]),
        .O(Reg4[10]));
  OBUF \Reg4_OBUF[11]_inst 
       (.I(Reg4_OBUF[11]),
        .O(Reg4[11]));
  OBUF \Reg4_OBUF[12]_inst 
       (.I(Reg4_OBUF[12]),
        .O(Reg4[12]));
  OBUF \Reg4_OBUF[13]_inst 
       (.I(Reg4_OBUF[13]),
        .O(Reg4[13]));
  OBUF \Reg4_OBUF[14]_inst 
       (.I(Reg4_OBUF[14]),
        .O(Reg4[14]));
  OBUF \Reg4_OBUF[15]_inst 
       (.I(Reg4_OBUF[15]),
        .O(Reg4[15]));
  OBUF \Reg4_OBUF[16]_inst 
       (.I(Reg4_OBUF[16]),
        .O(Reg4[16]));
  OBUF \Reg4_OBUF[17]_inst 
       (.I(Reg4_OBUF[17]),
        .O(Reg4[17]));
  OBUF \Reg4_OBUF[18]_inst 
       (.I(Reg4_OBUF[18]),
        .O(Reg4[18]));
  OBUF \Reg4_OBUF[19]_inst 
       (.I(Reg4_OBUF[19]),
        .O(Reg4[19]));
  OBUF \Reg4_OBUF[1]_inst 
       (.I(Reg4_OBUF[1]),
        .O(Reg4[1]));
  OBUF \Reg4_OBUF[20]_inst 
       (.I(Reg4_OBUF[20]),
        .O(Reg4[20]));
  OBUF \Reg4_OBUF[21]_inst 
       (.I(Reg4_OBUF[21]),
        .O(Reg4[21]));
  OBUF \Reg4_OBUF[22]_inst 
       (.I(Reg4_OBUF[22]),
        .O(Reg4[22]));
  OBUF \Reg4_OBUF[23]_inst 
       (.I(Reg4_OBUF[23]),
        .O(Reg4[23]));
  OBUF \Reg4_OBUF[24]_inst 
       (.I(Reg4_OBUF[24]),
        .O(Reg4[24]));
  OBUF \Reg4_OBUF[25]_inst 
       (.I(Reg4_OBUF[25]),
        .O(Reg4[25]));
  OBUF \Reg4_OBUF[26]_inst 
       (.I(Reg4_OBUF[26]),
        .O(Reg4[26]));
  OBUF \Reg4_OBUF[27]_inst 
       (.I(Reg4_OBUF[27]),
        .O(Reg4[27]));
  OBUF \Reg4_OBUF[28]_inst 
       (.I(Reg4_OBUF[28]),
        .O(Reg4[28]));
  OBUF \Reg4_OBUF[29]_inst 
       (.I(Reg4_OBUF[29]),
        .O(Reg4[29]));
  OBUF \Reg4_OBUF[2]_inst 
       (.I(Reg4_OBUF[2]),
        .O(Reg4[2]));
  OBUF \Reg4_OBUF[30]_inst 
       (.I(Reg4_OBUF[30]),
        .O(Reg4[30]));
  OBUF \Reg4_OBUF[31]_inst 
       (.I(Reg4_OBUF[31]),
        .O(Reg4[31]));
  OBUF \Reg4_OBUF[3]_inst 
       (.I(Reg4_OBUF[3]),
        .O(Reg4[3]));
  OBUF \Reg4_OBUF[4]_inst 
       (.I(Reg4_OBUF[4]),
        .O(Reg4[4]));
  OBUF \Reg4_OBUF[5]_inst 
       (.I(Reg4_OBUF[5]),
        .O(Reg4[5]));
  OBUF \Reg4_OBUF[6]_inst 
       (.I(Reg4_OBUF[6]),
        .O(Reg4[6]));
  OBUF \Reg4_OBUF[7]_inst 
       (.I(Reg4_OBUF[7]),
        .O(Reg4[7]));
  OBUF \Reg4_OBUF[8]_inst 
       (.I(Reg4_OBUF[8]),
        .O(Reg4[8]));
  OBUF \Reg4_OBUF[9]_inst 
       (.I(Reg4_OBUF[9]),
        .O(Reg4[9]));
  OBUF \addrMEMin_OBUF[0]_inst 
       (.I(counter_OBUF[0]),
        .O(addrMEMin[0]));
  OBUF \addrMEMin_OBUF[1]_inst 
       (.I(counter_OBUF[1]),
        .O(addrMEMin[1]));
  OBUF \addrMEMin_OBUF[2]_inst 
       (.I(counter_OBUF[2]),
        .O(addrMEMin[2]));
  OBUF \addrMEMin_OBUF[3]_inst 
       (.I(counter_OBUF[3]),
        .O(addrMEMin[3]));
  OBUF \addrMEMin_OBUF[4]_inst 
       (.I(1'b0),
        .O(addrMEMin[4]));
  OBUF \addrMEMin_OBUF[5]_inst 
       (.I(1'b0),
        .O(addrMEMin[5]));
  OBUF \addrMEMin_OBUF[6]_inst 
       (.I(1'b0),
        .O(addrMEMin[6]));
  OBUF \addrMEMin_OBUF[7]_inst 
       (.I(1'b0),
        .O(addrMEMin[7]));
  OBUF \addrMEMin_OBUF[8]_inst 
       (.I(1'b0),
        .O(addrMEMin[8]));
  OBUF \addrMEMin_OBUF[9]_inst 
       (.I(1'b0),
        .O(addrMEMin[9]));
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
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \counter_OBUF[0]_inst 
       (.I(counter_OBUF[0]),
        .O(counter[0]));
  OBUF \counter_OBUF[1]_inst 
       (.I(counter_OBUF[1]),
        .O(counter[1]));
  OBUF \counter_OBUF[2]_inst 
       (.I(counter_OBUF[2]),
        .O(counter[2]));
  OBUF \counter_OBUF[3]_inst 
       (.I(counter_OBUF[3]),
        .O(counter[3]));
  OBUF \counter_OBUF[4]_inst 
       (.I(counter_OBUF[4]),
        .O(counter[4]));
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
  OBUF en1_OBUF_inst
       (.I(en1_OBUF),
        .O(en1));
  OBUF en2_OBUF_inst
       (.I(en2_OBUF),
        .O(en2));
  OBUF en3_OBUF_inst
       (.I(en3_OBUF),
        .O(en3));
  OBUF en4_OBUF_inst
       (.I(en4_OBUF),
        .O(en4));
  control inst_control
       (.CLK(clk_IBUF_BUFG),
        .D(D_OBUF),
        .DOADO({B_OBUF,A_OBUF}),
        .E(en4_OBUF),
        .\FSM_onehot_currstate_reg[2]_0 (en1_OBUF),
        .\FSM_onehot_currstate_reg[3]_0 (Det_out_OBUF[31:28]),
        .\FSM_onehot_currstate_reg[6]_0 ({inst_control_n_124,inst_control_n_125,inst_control_n_126,inst_control_n_127}),
        .\FSM_onehot_currstate_reg[6]_1 ({inst_control_n_128,inst_control_n_129,inst_control_n_130,inst_control_n_131}),
        .\FSM_onehot_currstate_reg[6]_2 ({inst_control_n_132,inst_control_n_133,inst_control_n_134,inst_control_n_135}),
        .\FSM_onehot_currstate_reg[6]_3 ({inst_control_n_136,inst_control_n_137,inst_control_n_138,inst_control_n_139}),
        .\FSM_onehot_currstate_reg[6]_4 ({inst_control_n_140,inst_control_n_141,inst_control_n_142,inst_control_n_143}),
        .\FSM_onehot_currstate_reg[6]_5 ({inst_control_n_144,inst_control_n_145,inst_control_n_146,inst_control_n_147}),
        .\FSM_onehot_currstate_reg[6]_6 ({inst_control_n_148,inst_control_n_149,inst_control_n_150,inst_control_n_151}),
        .Mux3_O_OBUF(Mux3_O_OBUF),
        .Mux4_O_OBUF(Mux4_O_OBUF),
        .Mux5_O_OBUF(Mux5_O_OBUF),
        .Mux6_O_OBUF(Mux6_O_OBUF),
        .O(Mult1_O_OBUF[31:28]),
        .Q({ALU_sel_OBUF,sel6_OBUF[1],sel3_OBUF[1]}),
        .\R2_reg[31] (Reg4_OBUF),
        .S({inst_control_n_120,inst_control_n_121,inst_control_n_122,inst_control_n_123}),
        .SR(rst_IBUF),
        .\counterMEMin_reg[4]_0 (counter_OBUF),
        .\counterMEMout_reg[3]_0 (addrMEMout_OBUF),
        .done_OBUF(done_OBUF),
        .en2_OBUF(en2_OBUF),
        .en3_OBUF(en3_OBUF),
        .mult1_res_64(Reg3_OBUF),
        .mult1_res_64_0(Reg1_OBUF),
        .mult1_res_64__1(Reg2_OBUF),
        .\ramb_bl.ramb36_sin_bl.ram36_bl (ALU_O_OBUF[31:28]),
        .sel3_OBUF(sel3_OBUF[0]),
        .sel4_OBUF(sel4_OBUF),
        .sel6_OBUF(sel6_OBUF[0]));
  datapath inst_datapath
       (.CLK(clk_IBUF_BUFG),
        .D(ALU_O_OBUF),
        .DOADO({F_OBUF,E_OBUF}),
        .E(en1_OBUF),
        .\FSM_onehot_currstate_reg[3] (Det_out_OBUF[27:0]),
        .Mult1_O_OBUF(Mult1_O_OBUF),
        .Mux3_O_OBUF(Mux3_O_OBUF),
        .Mux4_O_OBUF(Mux4_O_OBUF),
        .Mux5_O_OBUF(Mux5_O_OBUF[30:0]),
        .P(Mult2_O_OBUF),
        .Q({ALU_sel_OBUF,sel6_OBUF[1],sel3_OBUF[1]}),
        .\R1_reg[31]_0 (Reg1_OBUF),
        .\R2_reg[11]_0 ({inst_control_n_132,inst_control_n_133,inst_control_n_134,inst_control_n_135}),
        .\R2_reg[15]_0 ({inst_control_n_136,inst_control_n_137,inst_control_n_138,inst_control_n_139}),
        .\R2_reg[19]_0 ({inst_control_n_140,inst_control_n_141,inst_control_n_142,inst_control_n_143}),
        .\R2_reg[23]_0 ({inst_control_n_144,inst_control_n_145,inst_control_n_146,inst_control_n_147}),
        .\R2_reg[27]_0 ({inst_control_n_148,inst_control_n_149,inst_control_n_150,inst_control_n_151}),
        .\R2_reg[31]_0 (Reg2_OBUF),
        .\R2_reg[3]_0 ({inst_control_n_124,inst_control_n_125,inst_control_n_126,inst_control_n_127}),
        .\R2_reg[7]_0 ({inst_control_n_128,inst_control_n_129,inst_control_n_130,inst_control_n_131}),
        .\R3_reg[31]_0 (Reg3_OBUF),
        .\R3_reg[31]_1 (Det_out_OBUF[31:28]),
        .\R4_reg[31]_0 (Reg4_OBUF),
        .\R4_reg[31]_1 (en4_OBUF),
        .S({inst_control_n_120,inst_control_n_121,inst_control_n_122,inst_control_n_123}),
        .SR(rst_IBUF),
        .en2_OBUF(en2_OBUF),
        .en3_OBUF(en3_OBUF),
        .mult2_res_0(Mux2_O_OBUF));
  MemIN inst_memIN
       (.CLK(clk_IBUF_BUFG),
        .DOADO({B_OBUF,A_OBUF}),
        .\Mux5_O[31] (Reg3_OBUF),
        .\Mux5_O[31]_0 (Reg1_OBUF),
        .Mux5_O_OBUF(Mux5_O_OBUF),
        .addr(counter_OBUF[3:0]),
        .en2_OBUF(en2_OBUF),
        .en3_OBUF(en3_OBUF),
        .\ramb_bl.ramb36_sin_bl.ram36_bl ({D_OBUF,C_OBUF}),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_0 ({F_OBUF,E_OBUF}));
  memOUT inst_memOUT
       (.CLK(clk_IBUF_BUFG),
        .DOADO(dataOUT_OBUF),
        .Det_out_OBUF(Det_out_OBUF),
        .Q(ALU_sel_OBUF),
        .\ramb_bl.ramb36_sin_bl.ram36_bl (addrMEMout_OBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF sel1_OBUF_inst
       (.I(sel6_OBUF[1]),
        .O(sel1));
  OBUF sel2_OBUF_inst
       (.I(sel3_OBUF[1]),
        .O(sel2));
  OBUF \sel3_OBUF[0]_inst 
       (.I(sel3_OBUF[0]),
        .O(sel3[0]));
  OBUF \sel3_OBUF[1]_inst 
       (.I(sel3_OBUF[1]),
        .O(sel3[1]));
  OBUF sel4_OBUF_inst
       (.I(sel4_OBUF),
        .O(sel4));
  OBUF \sel5_OBUF[0]_inst 
       (.I(en3_OBUF),
        .O(sel5[0]));
  OBUF \sel5_OBUF[1]_inst 
       (.I(en2_OBUF),
        .O(sel5[1]));
  OBUF \sel6_OBUF[0]_inst 
       (.I(sel6_OBUF[0]),
        .O(sel6[0]));
  OBUF \sel6_OBUF[1]_inst 
       (.I(sel6_OBUF[1]),
        .O(sel6[1]));
  OBUF we_OBUF_inst
       (.I(ALU_sel_OBUF),
        .O(we));
endmodule

module control
   (E,
    Q,
    \FSM_onehot_currstate_reg[2]_0 ,
    Mux6_O_OBUF,
    sel6_OBUF,
    Mux3_O_OBUF,
    sel3_OBUF,
    Mux4_O_OBUF,
    sel4_OBUF,
    \counterMEMin_reg[4]_0 ,
    \counterMEMout_reg[3]_0 ,
    en2_OBUF,
    en3_OBUF,
    done_OBUF,
    \FSM_onehot_currstate_reg[3]_0 ,
    S,
    \FSM_onehot_currstate_reg[6]_0 ,
    \FSM_onehot_currstate_reg[6]_1 ,
    \FSM_onehot_currstate_reg[6]_2 ,
    \FSM_onehot_currstate_reg[6]_3 ,
    \FSM_onehot_currstate_reg[6]_4 ,
    \FSM_onehot_currstate_reg[6]_5 ,
    \FSM_onehot_currstate_reg[6]_6 ,
    D,
    \R2_reg[31] ,
    DOADO,
    mult1_res_64,
    mult1_res_64_0,
    mult1_res_64__1,
    SR,
    O,
    \ramb_bl.ramb36_sin_bl.ram36_bl ,
    Mux5_O_OBUF,
    CLK);
  output [0:0]E;
  output [2:0]Q;
  output [0:0]\FSM_onehot_currstate_reg[2]_0 ;
  output [31:0]Mux6_O_OBUF;
  output [0:0]sel6_OBUF;
  output [31:0]Mux3_O_OBUF;
  output [0:0]sel3_OBUF;
  output [31:0]Mux4_O_OBUF;
  output sel4_OBUF;
  output [4:0]\counterMEMin_reg[4]_0 ;
  output [3:0]\counterMEMout_reg[3]_0 ;
  output en2_OBUF;
  output en3_OBUF;
  output done_OBUF;
  output [3:0]\FSM_onehot_currstate_reg[3]_0 ;
  output [3:0]S;
  output [3:0]\FSM_onehot_currstate_reg[6]_0 ;
  output [3:0]\FSM_onehot_currstate_reg[6]_1 ;
  output [3:0]\FSM_onehot_currstate_reg[6]_2 ;
  output [3:0]\FSM_onehot_currstate_reg[6]_3 ;
  output [3:0]\FSM_onehot_currstate_reg[6]_4 ;
  output [3:0]\FSM_onehot_currstate_reg[6]_5 ;
  output [3:0]\FSM_onehot_currstate_reg[6]_6 ;
  input [15:0]D;
  input [31:0]\R2_reg[31] ;
  input [31:0]DOADO;
  input [31:0]mult1_res_64;
  input [31:0]mult1_res_64_0;
  input [31:0]mult1_res_64__1;
  input [0:0]SR;
  input [3:0]O;
  input [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl ;
  input [31:0]Mux5_O_OBUF;
  input CLK;

  wire CLK;
  wire [15:0]D;
  wire [31:0]DOADO;
  wire [0:0]E;
  wire \FSM_onehot_currstate[2]_i_1_n_0 ;
  wire \FSM_onehot_currstate[2]_i_2_n_0 ;
  wire \FSM_onehot_currstate[8]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_currstate_reg[2]_0 ;
  wire [3:0]\FSM_onehot_currstate_reg[3]_0 ;
  wire [3:0]\FSM_onehot_currstate_reg[6]_0 ;
  wire [3:0]\FSM_onehot_currstate_reg[6]_1 ;
  wire [3:0]\FSM_onehot_currstate_reg[6]_2 ;
  wire [3:0]\FSM_onehot_currstate_reg[6]_3 ;
  wire [3:0]\FSM_onehot_currstate_reg[6]_4 ;
  wire [3:0]\FSM_onehot_currstate_reg[6]_5 ;
  wire [3:0]\FSM_onehot_currstate_reg[6]_6 ;
  wire \FSM_onehot_currstate_reg_n_0_[1] ;
  wire \FSM_onehot_currstate_reg_n_0_[4] ;
  wire \FSM_onehot_currstate_reg_n_0_[5] ;
  wire \FSM_onehot_currstate_reg_n_0_[8] ;
  wire [31:0]Mux3_O_OBUF;
  wire [31:0]Mux4_O_OBUF;
  wire [31:0]Mux5_O_OBUF;
  wire [31:0]Mux6_O_OBUF;
  wire [3:0]O;
  wire [2:0]Q;
  wire [31:0]\R2_reg[31] ;
  wire [3:0]S;
  wire [0:0]SR;
  wire [4:0]\counterMEMin_reg[4]_0 ;
  wire counterMEMout;
  wire \counterMEMout[3]_i_1_n_0 ;
  wire [3:0]\counterMEMout_reg[3]_0 ;
  wire done_OBUF;
  wire done_OBUF_inst_i_2_n_0;
  wire en2_OBUF;
  wire en3_OBUF;
  wire [31:0]mult1_res_64;
  wire [31:0]mult1_res_64_0;
  wire [31:0]mult1_res_64__1;
  wire [4:0]plusOp;
  wire [3:0]plusOp__0;
  wire [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl ;
  wire [0:0]sel3_OBUF;
  wire sel4_OBUF;
  wire [0:0]sel6_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \FSM_onehot_currstate[2]_i_1 
       (.I0(\counterMEMin_reg[4]_0 [2]),
        .I1(\counterMEMin_reg[4]_0 [3]),
        .I2(\FSM_onehot_currstate[2]_i_2_n_0 ),
        .I3(counterMEMout),
        .I4(\FSM_onehot_currstate_reg_n_0_[1] ),
        .O(\FSM_onehot_currstate[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_onehot_currstate[2]_i_2 
       (.I0(\counterMEMin_reg[4]_0 [4]),
        .I1(\counterMEMin_reg[4]_0 [0]),
        .I2(\counterMEMin_reg[4]_0 [1]),
        .O(\FSM_onehot_currstate[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \FSM_onehot_currstate[8]_i_1 
       (.I0(\counterMEMin_reg[4]_0 [4]),
        .I1(\counterMEMin_reg[4]_0 [0]),
        .I2(\counterMEMin_reg[4]_0 [1]),
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
        .S(SR));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_currstate[2]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Q[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\FSM_onehot_currstate_reg_n_0_[4] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_currstate_reg_n_0_[4] ),
        .Q(\FSM_onehot_currstate_reg_n_0_[5] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_currstate_reg_n_0_[5] ),
        .Q(Q[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[2]),
        .Q(counterMEMout),
        .R(SR));
  (* FSM_ENCODED_STATES = "cycle2:000001000,cycle3:000010000,cycle1:000000100,s_start:000000010,s_idle:000000001,s_done:100000000,cycle5:001000000,s_store:010000000,cycle4:000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_currstate[8]_i_1_n_0 ),
        .Q(\FSM_onehot_currstate_reg_n_0_[8] ),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[28]_inst_i_1 
       (.I0(O[0]),
        .I1(Q[1]),
        .I2(\ramb_bl.ramb36_sin_bl.ram36_bl [0]),
        .O(\FSM_onehot_currstate_reg[3]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[29]_inst_i_1 
       (.I0(O[1]),
        .I1(Q[1]),
        .I2(\ramb_bl.ramb36_sin_bl.ram36_bl [1]),
        .O(\FSM_onehot_currstate_reg[3]_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[30]_inst_i_1 
       (.I0(O[2]),
        .I1(Q[1]),
        .I2(\ramb_bl.ramb36_sin_bl.ram36_bl [2]),
        .O(\FSM_onehot_currstate_reg[3]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[31]_inst_i_1 
       (.I0(O[3]),
        .I1(Q[1]),
        .I2(\ramb_bl.ramb36_sin_bl.ram36_bl [3]),
        .O(\FSM_onehot_currstate_reg[3]_0 [3]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[0]_inst_i_1 
       (.I0(mult1_res_64[0]),
        .I1(mult1_res_64_0[0]),
        .I2(DOADO[0]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[0]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[10]_inst_i_1 
       (.I0(mult1_res_64[10]),
        .I1(mult1_res_64_0[10]),
        .I2(DOADO[10]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[10]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[11]_inst_i_1 
       (.I0(mult1_res_64[11]),
        .I1(mult1_res_64_0[11]),
        .I2(DOADO[11]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[11]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[12]_inst_i_1 
       (.I0(mult1_res_64[12]),
        .I1(mult1_res_64_0[12]),
        .I2(DOADO[12]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[12]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[13]_inst_i_1 
       (.I0(mult1_res_64[13]),
        .I1(mult1_res_64_0[13]),
        .I2(DOADO[13]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[13]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[14]_inst_i_1 
       (.I0(mult1_res_64[14]),
        .I1(mult1_res_64_0[14]),
        .I2(DOADO[14]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[14]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[15]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[15]),
        .I2(mult1_res_64_0[15]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[15]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[16]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[16]),
        .I2(mult1_res_64_0[16]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[16]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[17]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[17]),
        .I2(mult1_res_64_0[17]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[17]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[18]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[18]),
        .I2(mult1_res_64_0[18]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[18]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[19]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[19]),
        .I2(mult1_res_64_0[19]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[19]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[1]_inst_i_1 
       (.I0(mult1_res_64[1]),
        .I1(mult1_res_64_0[1]),
        .I2(DOADO[1]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[1]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[20]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[20]),
        .I2(mult1_res_64_0[20]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[20]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[21]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[21]),
        .I2(mult1_res_64_0[21]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[21]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[22]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[22]),
        .I2(mult1_res_64_0[22]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[22]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[23]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[23]),
        .I2(mult1_res_64_0[23]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[23]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[24]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[24]),
        .I2(mult1_res_64_0[24]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[24]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[25]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[25]),
        .I2(mult1_res_64_0[25]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[25]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[26]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[26]),
        .I2(mult1_res_64_0[26]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[26]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[27]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[27]),
        .I2(mult1_res_64_0[27]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[27]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[28]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[28]),
        .I2(mult1_res_64_0[28]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[28]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[29]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[29]),
        .I2(mult1_res_64_0[29]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[29]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[2]_inst_i_1 
       (.I0(mult1_res_64[2]),
        .I1(mult1_res_64_0[2]),
        .I2(DOADO[2]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[2]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[30]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[30]),
        .I2(mult1_res_64_0[30]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[30]));
  LUT6 #(
    .INIT(64'h000000AACCCCCCF0)) 
    \Mux3_O_OBUF[31]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(mult1_res_64[31]),
        .I2(mult1_res_64_0[31]),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(Mux3_O_OBUF[31]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[3]_inst_i_1 
       (.I0(mult1_res_64[3]),
        .I1(mult1_res_64_0[3]),
        .I2(DOADO[3]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[3]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[4]_inst_i_1 
       (.I0(mult1_res_64[4]),
        .I1(mult1_res_64_0[4]),
        .I2(DOADO[4]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[4]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[5]_inst_i_1 
       (.I0(mult1_res_64[5]),
        .I1(mult1_res_64_0[5]),
        .I2(DOADO[5]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[5]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[6]_inst_i_1 
       (.I0(mult1_res_64[6]),
        .I1(mult1_res_64_0[6]),
        .I2(DOADO[6]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[6]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[7]_inst_i_1 
       (.I0(mult1_res_64[7]),
        .I1(mult1_res_64_0[7]),
        .I2(DOADO[7]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[7]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[8]_inst_i_1 
       (.I0(mult1_res_64[8]),
        .I1(mult1_res_64_0[8]),
        .I2(DOADO[8]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[8]));
  LUT6 #(
    .INIT(64'h00AA00AA00AAF0CC)) 
    \Mux3_O_OBUF[9]_inst_i_1 
       (.I0(mult1_res_64[9]),
        .I1(mult1_res_64_0[9]),
        .I2(DOADO[9]),
        .I3(Q[0]),
        .I4(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I5(Q[1]),
        .O(Mux3_O_OBUF[9]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[0]_inst_i_1 
       (.I0(mult1_res_64__1[0]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[16]),
        .O(Mux4_O_OBUF[0]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[10]_inst_i_1 
       (.I0(mult1_res_64__1[10]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[26]),
        .O(Mux4_O_OBUF[10]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[11]_inst_i_1 
       (.I0(mult1_res_64__1[11]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[27]),
        .O(Mux4_O_OBUF[11]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[12]_inst_i_1 
       (.I0(mult1_res_64__1[12]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[28]),
        .O(Mux4_O_OBUF[12]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[13]_inst_i_1 
       (.I0(mult1_res_64__1[13]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[29]),
        .O(Mux4_O_OBUF[13]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[14]_inst_i_1 
       (.I0(mult1_res_64__1[14]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[30]),
        .O(Mux4_O_OBUF[14]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[15]_inst_i_1 
       (.I0(mult1_res_64__1[15]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[15]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[16]_inst_i_1 
       (.I0(mult1_res_64__1[16]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[16]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[17]_inst_i_1 
       (.I0(mult1_res_64__1[17]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[17]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[18]_inst_i_1 
       (.I0(mult1_res_64__1[18]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[18]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[19]_inst_i_1 
       (.I0(mult1_res_64__1[19]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[19]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[1]_inst_i_1 
       (.I0(mult1_res_64__1[1]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[17]),
        .O(Mux4_O_OBUF[1]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[20]_inst_i_1 
       (.I0(mult1_res_64__1[20]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[20]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[21]_inst_i_1 
       (.I0(mult1_res_64__1[21]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[21]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[22]_inst_i_1 
       (.I0(mult1_res_64__1[22]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[22]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[23]_inst_i_1 
       (.I0(mult1_res_64__1[23]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[23]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[24]_inst_i_1 
       (.I0(mult1_res_64__1[24]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[24]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[25]_inst_i_1 
       (.I0(mult1_res_64__1[25]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[25]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[26]_inst_i_1 
       (.I0(mult1_res_64__1[26]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[26]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[27]_inst_i_1 
       (.I0(mult1_res_64__1[27]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[27]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[28]_inst_i_1 
       (.I0(mult1_res_64__1[28]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[28]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[29]_inst_i_1 
       (.I0(mult1_res_64__1[29]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[29]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[2]_inst_i_1 
       (.I0(mult1_res_64__1[2]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[18]),
        .O(Mux4_O_OBUF[2]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[30]_inst_i_1 
       (.I0(mult1_res_64__1[30]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[30]));
  LUT4 #(
    .INIT(16'hAAAC)) 
    \Mux4_O_OBUF[31]_inst_i_1 
       (.I0(mult1_res_64__1[31]),
        .I1(DOADO[31]),
        .I2(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I3(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(Mux4_O_OBUF[31]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[3]_inst_i_1 
       (.I0(mult1_res_64__1[3]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[19]),
        .O(Mux4_O_OBUF[3]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[4]_inst_i_1 
       (.I0(mult1_res_64__1[4]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[20]),
        .O(Mux4_O_OBUF[4]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[5]_inst_i_1 
       (.I0(mult1_res_64__1[5]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[21]),
        .O(Mux4_O_OBUF[5]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[6]_inst_i_1 
       (.I0(mult1_res_64__1[6]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[22]),
        .O(Mux4_O_OBUF[6]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[7]_inst_i_1 
       (.I0(mult1_res_64__1[7]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[23]),
        .O(Mux4_O_OBUF[7]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[8]_inst_i_1 
       (.I0(mult1_res_64__1[8]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[24]),
        .O(Mux4_O_OBUF[8]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \Mux4_O_OBUF[9]_inst_i_1 
       (.I0(mult1_res_64__1[9]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(\FSM_onehot_currstate_reg_n_0_[5] ),
        .I3(DOADO[25]),
        .O(Mux4_O_OBUF[9]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[0]_inst_i_1 
       (.I0(D[0]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [0]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [2]),
        .O(Mux6_O_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[10]_inst_i_1 
       (.I0(D[10]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [10]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [12]),
        .O(Mux6_O_OBUF[10]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[11]_inst_i_1 
       (.I0(D[11]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [11]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [13]),
        .O(Mux6_O_OBUF[11]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[12]_inst_i_1 
       (.I0(D[12]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [12]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [14]),
        .O(Mux6_O_OBUF[12]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[13]_inst_i_1 
       (.I0(D[13]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [13]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [15]),
        .O(Mux6_O_OBUF[13]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[14]_inst_i_1 
       (.I0(D[14]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [14]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [16]),
        .O(Mux6_O_OBUF[14]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[15]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [15]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [17]),
        .O(Mux6_O_OBUF[15]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[16]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [16]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [18]),
        .O(Mux6_O_OBUF[16]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[17]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [17]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [19]),
        .O(Mux6_O_OBUF[17]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[18]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [18]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [20]),
        .O(Mux6_O_OBUF[18]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[19]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [19]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [21]),
        .O(Mux6_O_OBUF[19]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[1]_inst_i_1 
       (.I0(D[1]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [1]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [3]),
        .O(Mux6_O_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[20]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [20]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [22]),
        .O(Mux6_O_OBUF[20]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[21]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [21]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [23]),
        .O(Mux6_O_OBUF[21]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[22]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [22]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [24]),
        .O(Mux6_O_OBUF[22]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[23]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [23]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [25]),
        .O(Mux6_O_OBUF[23]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[24]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [24]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [26]),
        .O(Mux6_O_OBUF[24]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[25]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [25]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [27]),
        .O(Mux6_O_OBUF[25]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[26]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [26]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [28]),
        .O(Mux6_O_OBUF[26]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[27]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [27]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [29]),
        .O(Mux6_O_OBUF[27]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[28]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [28]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [30]),
        .O(Mux6_O_OBUF[28]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[29]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [29]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [31]),
        .O(Mux6_O_OBUF[29]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[2]_inst_i_1 
       (.I0(D[2]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [2]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [4]),
        .O(Mux6_O_OBUF[2]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[30]_inst_i_1 
       (.I0(D[15]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [30]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [31]),
        .O(Mux6_O_OBUF[30]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \Mux6_O_OBUF[31]_inst_i_1 
       (.I0(\R2_reg[31] [31]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I4(D[15]),
        .O(Mux6_O_OBUF[31]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[3]_inst_i_1 
       (.I0(D[3]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [3]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [5]),
        .O(Mux6_O_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[4]_inst_i_1 
       (.I0(D[4]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [4]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [6]),
        .O(Mux6_O_OBUF[4]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[5]_inst_i_1 
       (.I0(D[5]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [5]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [7]),
        .O(Mux6_O_OBUF[5]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[6]_inst_i_1 
       (.I0(D[6]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [6]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [8]),
        .O(Mux6_O_OBUF[6]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[7]_inst_i_1 
       (.I0(D[7]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [7]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [9]),
        .O(Mux6_O_OBUF[7]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[8]_inst_i_1 
       (.I0(D[8]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [8]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [10]),
        .O(Mux6_O_OBUF[8]));
  LUT6 #(
    .INIT(64'hFFFFFE020000FE02)) 
    \Mux6_O_OBUF[9]_inst_i_1 
       (.I0(D[9]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\R2_reg[31] [9]),
        .I4(Q[1]),
        .I5(\R2_reg[31] [11]),
        .O(Mux6_O_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counterMEMin[0]_i_1 
       (.I0(\counterMEMin_reg[4]_0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counterMEMin[1]_i_1 
       (.I0(\counterMEMin_reg[4]_0 [0]),
        .I1(\counterMEMin_reg[4]_0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counterMEMin[2]_i_1 
       (.I0(\counterMEMin_reg[4]_0 [0]),
        .I1(\counterMEMin_reg[4]_0 [1]),
        .I2(\counterMEMin_reg[4]_0 [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counterMEMin[3]_i_1 
       (.I0(\counterMEMin_reg[4]_0 [1]),
        .I1(\counterMEMin_reg[4]_0 [0]),
        .I2(\counterMEMin_reg[4]_0 [2]),
        .I3(\counterMEMin_reg[4]_0 [3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counterMEMin[4]_i_1 
       (.I0(\counterMEMin_reg[4]_0 [2]),
        .I1(\counterMEMin_reg[4]_0 [0]),
        .I2(\counterMEMin_reg[4]_0 [1]),
        .I3(\counterMEMin_reg[4]_0 [3]),
        .I4(\counterMEMin_reg[4]_0 [4]),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMin_reg[0] 
       (.C(CLK),
        .CE(Q[2]),
        .D(plusOp[0]),
        .Q(\counterMEMin_reg[4]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMin_reg[1] 
       (.C(CLK),
        .CE(Q[2]),
        .D(plusOp[1]),
        .Q(\counterMEMin_reg[4]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMin_reg[2] 
       (.C(CLK),
        .CE(Q[2]),
        .D(plusOp[2]),
        .Q(\counterMEMin_reg[4]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMin_reg[3] 
       (.C(CLK),
        .CE(Q[2]),
        .D(plusOp[3]),
        .Q(\counterMEMin_reg[4]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counterMEMin_reg[4] 
       (.C(CLK),
        .CE(Q[2]),
        .D(plusOp[4]),
        .Q(\counterMEMin_reg[4]_0 [4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counterMEMout[0]_i_1 
       (.I0(\counterMEMout_reg[3]_0 [0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
        .I1(SR),
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
        .I1(\counterMEMin_reg[4]_0 [1]),
        .I2(\counterMEMin_reg[4]_0 [0]),
        .I3(counterMEMout),
        .I4(\counterMEMin_reg[4]_0 [4]),
        .I5(\FSM_onehot_currstate_reg_n_0_[8] ),
        .O(done_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    done_OBUF_inst_i_2
       (.I0(\counterMEMin_reg[4]_0 [3]),
        .I1(\counterMEMin_reg[4]_0 [2]),
        .O(done_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    en1_OBUF_inst_i_1
       (.I0(Q[0]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .O(\FSM_onehot_currstate_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    en4_OBUF_inst_i_1
       (.I0(Q[0]),
        .I1(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(E));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__0_i_1
       (.I0(Mux5_O_OBUF[7]),
        .I1(Mux6_O_OBUF[7]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_1 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__0_i_2
       (.I0(Mux5_O_OBUF[6]),
        .I1(Mux6_O_OBUF[6]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_1 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__0_i_3
       (.I0(Mux5_O_OBUF[5]),
        .I1(Mux6_O_OBUF[5]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_1 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__0_i_4
       (.I0(Mux5_O_OBUF[4]),
        .I1(Mux6_O_OBUF[4]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_1 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__1_i_1
       (.I0(Mux5_O_OBUF[11]),
        .I1(Mux6_O_OBUF[11]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_2 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__1_i_2
       (.I0(Mux5_O_OBUF[10]),
        .I1(Mux6_O_OBUF[10]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_2 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__1_i_3
       (.I0(Mux5_O_OBUF[9]),
        .I1(Mux6_O_OBUF[9]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_2 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__1_i_4
       (.I0(Mux5_O_OBUF[8]),
        .I1(Mux6_O_OBUF[8]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_2 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__2_i_1
       (.I0(Mux5_O_OBUF[15]),
        .I1(Mux6_O_OBUF[15]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_3 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__2_i_2
       (.I0(Mux5_O_OBUF[14]),
        .I1(Mux6_O_OBUF[14]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_3 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__2_i_3
       (.I0(Mux5_O_OBUF[13]),
        .I1(Mux6_O_OBUF[13]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_3 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__2_i_4
       (.I0(Mux5_O_OBUF[12]),
        .I1(Mux6_O_OBUF[12]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_3 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__3_i_1
       (.I0(Mux5_O_OBUF[19]),
        .I1(Mux6_O_OBUF[19]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_4 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__3_i_2
       (.I0(Mux5_O_OBUF[18]),
        .I1(Mux6_O_OBUF[18]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_4 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__3_i_3
       (.I0(Mux5_O_OBUF[17]),
        .I1(Mux6_O_OBUF[17]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_4 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__3_i_4
       (.I0(Mux5_O_OBUF[16]),
        .I1(Mux6_O_OBUF[16]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_4 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__4_i_1
       (.I0(Mux5_O_OBUF[23]),
        .I1(Mux6_O_OBUF[23]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_5 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__4_i_2
       (.I0(Mux5_O_OBUF[22]),
        .I1(Mux6_O_OBUF[22]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_5 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__4_i_3
       (.I0(Mux5_O_OBUF[21]),
        .I1(Mux6_O_OBUF[21]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_5 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__4_i_4
       (.I0(Mux5_O_OBUF[20]),
        .I1(Mux6_O_OBUF[20]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_5 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__5_i_1
       (.I0(Mux5_O_OBUF[27]),
        .I1(Mux6_O_OBUF[27]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_6 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__5_i_2
       (.I0(Mux5_O_OBUF[26]),
        .I1(Mux6_O_OBUF[26]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_6 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__5_i_3
       (.I0(Mux5_O_OBUF[25]),
        .I1(Mux6_O_OBUF[25]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_6 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__5_i_4
       (.I0(Mux5_O_OBUF[24]),
        .I1(Mux6_O_OBUF[24]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_6 [0]));
  LUT6 #(
    .INIT(64'h996699659966996A)) 
    mux10_carry__6_i_1
       (.I0(Mux5_O_OBUF[31]),
        .I1(\R2_reg[31] [31]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I5(D[15]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__6_i_2
       (.I0(Mux5_O_OBUF[30]),
        .I1(Q[2]),
        .I2(Mux6_O_OBUF[30]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__6_i_3
       (.I0(Mux5_O_OBUF[29]),
        .I1(Mux6_O_OBUF[29]),
        .I2(Q[2]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry__6_i_4
       (.I0(Mux5_O_OBUF[28]),
        .I1(Mux6_O_OBUF[28]),
        .I2(Q[2]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry_i_1
       (.I0(Mux5_O_OBUF[3]),
        .I1(Mux6_O_OBUF[3]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_0 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry_i_2
       (.I0(Mux5_O_OBUF[2]),
        .I1(Mux6_O_OBUF[2]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_0 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry_i_3
       (.I0(Mux5_O_OBUF[1]),
        .I1(Mux6_O_OBUF[1]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_0 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    mux10_carry_i_4
       (.I0(Mux5_O_OBUF[0]),
        .I1(Mux6_O_OBUF[0]),
        .I2(Q[2]),
        .O(\FSM_onehot_currstate_reg[6]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sel3_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(sel3_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sel4_OBUF_inst_i_1
       (.I0(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I1(\FSM_onehot_currstate_reg_n_0_[5] ),
        .O(sel4_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sel5_OBUF[0]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(en3_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sel5_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_currstate_reg_n_0_[4] ),
        .O(en2_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sel6_OBUF[0]_inst_i_1 
       (.I0(\FSM_onehot_currstate_reg_n_0_[4] ),
        .I1(Q[2]),
        .O(sel6_OBUF));
endmodule

module datapath
   (P,
    Mult1_O_OBUF,
    D,
    mult2_res_0,
    \FSM_onehot_currstate_reg[3] ,
    \R1_reg[31]_0 ,
    \R4_reg[31]_0 ,
    \R2_reg[31]_0 ,
    \R3_reg[31]_0 ,
    DOADO,
    Mux4_O_OBUF,
    Mux3_O_OBUF,
    Q,
    Mux5_O_OBUF,
    \R2_reg[3]_0 ,
    \R2_reg[7]_0 ,
    \R2_reg[11]_0 ,
    \R2_reg[15]_0 ,
    \R2_reg[19]_0 ,
    \R2_reg[23]_0 ,
    \R2_reg[27]_0 ,
    S,
    SR,
    E,
    CLK,
    \R4_reg[31]_1 ,
    en2_OBUF,
    en3_OBUF,
    \R3_reg[31]_1 );
  output [31:0]P;
  output [31:0]Mult1_O_OBUF;
  output [31:0]D;
  output [31:0]mult2_res_0;
  output [27:0]\FSM_onehot_currstate_reg[3] ;
  output [31:0]\R1_reg[31]_0 ;
  output [31:0]\R4_reg[31]_0 ;
  output [31:0]\R2_reg[31]_0 ;
  output [31:0]\R3_reg[31]_0 ;
  input [31:0]DOADO;
  input [31:0]Mux4_O_OBUF;
  input [31:0]Mux3_O_OBUF;
  input [2:0]Q;
  input [30:0]Mux5_O_OBUF;
  input [3:0]\R2_reg[3]_0 ;
  input [3:0]\R2_reg[7]_0 ;
  input [3:0]\R2_reg[11]_0 ;
  input [3:0]\R2_reg[15]_0 ;
  input [3:0]\R2_reg[19]_0 ;
  input [3:0]\R2_reg[23]_0 ;
  input [3:0]\R2_reg[27]_0 ;
  input [3:0]S;
  input [0:0]SR;
  input [0:0]E;
  input CLK;
  input [0:0]\R4_reg[31]_1 ;
  input en2_OBUF;
  input en3_OBUF;
  input [3:0]\R3_reg[31]_1 ;

  wire CLK;
  wire [31:0]D;
  wire [31:0]DOADO;
  wire [0:0]E;
  wire [27:0]\FSM_onehot_currstate_reg[3] ;
  wire [31:0]Mult1_O_OBUF;
  wire [31:0]Mux3_O_OBUF;
  wire [31:0]Mux4_O_OBUF;
  wire [30:0]Mux5_O_OBUF;
  wire [31:0]P;
  wire [2:0]Q;
  wire [31:0]\R1_reg[31]_0 ;
  wire [3:0]\R2_reg[11]_0 ;
  wire [3:0]\R2_reg[15]_0 ;
  wire [3:0]\R2_reg[19]_0 ;
  wire [3:0]\R2_reg[23]_0 ;
  wire [3:0]\R2_reg[27]_0 ;
  wire [31:0]\R2_reg[31]_0 ;
  wire [3:0]\R2_reg[3]_0 ;
  wire [3:0]\R2_reg[7]_0 ;
  wire [31:0]\R3_reg[31]_0 ;
  wire [3:0]\R3_reg[31]_1 ;
  wire [31:0]\R4_reg[31]_0 ;
  wire [0:0]\R4_reg[31]_1 ;
  wire [3:0]S;
  wire [0:0]SR;
  wire en2_OBUF;
  wire en3_OBUF;
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
  wire mult1_res_64__0_n_58;
  wire mult1_res_64__0_n_59;
  wire mult1_res_64__0_n_60;
  wire mult1_res_64__0_n_61;
  wire mult1_res_64__0_n_62;
  wire mult1_res_64__0_n_63;
  wire mult1_res_64__0_n_64;
  wire mult1_res_64__0_n_65;
  wire mult1_res_64__0_n_66;
  wire mult1_res_64__0_n_67;
  wire mult1_res_64__0_n_68;
  wire mult1_res_64__0_n_69;
  wire mult1_res_64__0_n_70;
  wire mult1_res_64__0_n_71;
  wire mult1_res_64__0_n_72;
  wire mult1_res_64__0_n_73;
  wire mult1_res_64__0_n_74;
  wire mult1_res_64__0_n_75;
  wire mult1_res_64__0_n_76;
  wire mult1_res_64__0_n_77;
  wire mult1_res_64__0_n_78;
  wire mult1_res_64__0_n_79;
  wire mult1_res_64__0_n_80;
  wire mult1_res_64__0_n_81;
  wire mult1_res_64__0_n_82;
  wire mult1_res_64__0_n_83;
  wire mult1_res_64__0_n_84;
  wire mult1_res_64__0_n_85;
  wire mult1_res_64__0_n_86;
  wire mult1_res_64__0_n_87;
  wire mult1_res_64__0_n_88;
  wire mult1_res_64_carry__0_i_1_n_0;
  wire mult1_res_64_carry__0_i_2_n_0;
  wire mult1_res_64_carry__0_i_3_n_0;
  wire mult1_res_64_carry__0_i_4_n_0;
  wire mult1_res_64_carry__0_n_0;
  wire mult1_res_64_carry__0_n_1;
  wire mult1_res_64_carry__0_n_2;
  wire mult1_res_64_carry__0_n_3;
  wire mult1_res_64_carry__1_i_1_n_0;
  wire mult1_res_64_carry__1_i_2_n_0;
  wire mult1_res_64_carry__1_i_3_n_0;
  wire mult1_res_64_carry__1_i_4_n_0;
  wire mult1_res_64_carry__1_n_0;
  wire mult1_res_64_carry__1_n_1;
  wire mult1_res_64_carry__1_n_2;
  wire mult1_res_64_carry__1_n_3;
  wire mult1_res_64_carry__2_i_1_n_0;
  wire mult1_res_64_carry__2_i_2_n_0;
  wire mult1_res_64_carry__2_i_3_n_0;
  wire mult1_res_64_carry__2_i_4_n_0;
  wire mult1_res_64_carry__2_n_1;
  wire mult1_res_64_carry__2_n_2;
  wire mult1_res_64_carry__2_n_3;
  wire mult1_res_64_carry_i_1_n_0;
  wire mult1_res_64_carry_i_2_n_0;
  wire mult1_res_64_carry_i_3_n_0;
  wire mult1_res_64_carry_n_0;
  wire mult1_res_64_carry_n_1;
  wire mult1_res_64_carry_n_2;
  wire mult1_res_64_carry_n_3;
  wire [31:0]mult2_res_0;
  wire mux10_carry__0_n_0;
  wire mux10_carry__0_n_1;
  wire mux10_carry__0_n_2;
  wire mux10_carry__0_n_3;
  wire mux10_carry__1_n_0;
  wire mux10_carry__1_n_1;
  wire mux10_carry__1_n_2;
  wire mux10_carry__1_n_3;
  wire mux10_carry__2_n_0;
  wire mux10_carry__2_n_1;
  wire mux10_carry__2_n_2;
  wire mux10_carry__2_n_3;
  wire mux10_carry__3_n_0;
  wire mux10_carry__3_n_1;
  wire mux10_carry__3_n_2;
  wire mux10_carry__3_n_3;
  wire mux10_carry__4_n_0;
  wire mux10_carry__4_n_1;
  wire mux10_carry__4_n_2;
  wire mux10_carry__4_n_3;
  wire mux10_carry__5_n_0;
  wire mux10_carry__5_n_1;
  wire mux10_carry__5_n_2;
  wire mux10_carry__5_n_3;
  wire mux10_carry__6_n_1;
  wire mux10_carry__6_n_2;
  wire mux10_carry__6_n_3;
  wire mux10_carry_n_0;
  wire mux10_carry_n_1;
  wire mux10_carry_n_2;
  wire mux10_carry_n_3;
  wire [31:17]p_0_in;
  wire [31:16]p_1_in;
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
  wire [29:0]NLW_mult1_res_64__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult1_res_64__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult1_res_64__0_CARRYOUT_UNCONNECTED;
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
  wire [3:3]NLW_mult1_res_64_carry__2_CO_UNCONNECTED;
  wire NLW_mult2_res_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult2_res_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult2_res_OVERFLOW_UNCONNECTED;
  wire NLW_mult2_res_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult2_res_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult2_res_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult2_res_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult2_res_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult2_res_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_mult2_res_P_UNCONNECTED;
  wire [47:0]NLW_mult2_res_PCOUT_UNCONNECTED;
  wire [3:3]NLW_mux10_carry__6_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[0]_inst_i_1 
       (.I0(Mult1_O_OBUF[0]),
        .I1(Q[1]),
        .I2(D[0]),
        .O(\FSM_onehot_currstate_reg[3] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[10]_inst_i_1 
       (.I0(Mult1_O_OBUF[10]),
        .I1(Q[1]),
        .I2(D[10]),
        .O(\FSM_onehot_currstate_reg[3] [10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[11]_inst_i_1 
       (.I0(Mult1_O_OBUF[11]),
        .I1(Q[1]),
        .I2(D[11]),
        .O(\FSM_onehot_currstate_reg[3] [11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[12]_inst_i_1 
       (.I0(Mult1_O_OBUF[12]),
        .I1(Q[1]),
        .I2(D[12]),
        .O(\FSM_onehot_currstate_reg[3] [12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[13]_inst_i_1 
       (.I0(Mult1_O_OBUF[13]),
        .I1(Q[1]),
        .I2(D[13]),
        .O(\FSM_onehot_currstate_reg[3] [13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[14]_inst_i_1 
       (.I0(Mult1_O_OBUF[14]),
        .I1(Q[1]),
        .I2(D[14]),
        .O(\FSM_onehot_currstate_reg[3] [14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[15]_inst_i_1 
       (.I0(Mult1_O_OBUF[15]),
        .I1(Q[1]),
        .I2(D[15]),
        .O(\FSM_onehot_currstate_reg[3] [15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[16]_inst_i_1 
       (.I0(Mult1_O_OBUF[16]),
        .I1(Q[1]),
        .I2(D[16]),
        .O(\FSM_onehot_currstate_reg[3] [16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[17]_inst_i_1 
       (.I0(Mult1_O_OBUF[17]),
        .I1(Q[1]),
        .I2(D[17]),
        .O(\FSM_onehot_currstate_reg[3] [17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[18]_inst_i_1 
       (.I0(Mult1_O_OBUF[18]),
        .I1(Q[1]),
        .I2(D[18]),
        .O(\FSM_onehot_currstate_reg[3] [18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[19]_inst_i_1 
       (.I0(Mult1_O_OBUF[19]),
        .I1(Q[1]),
        .I2(D[19]),
        .O(\FSM_onehot_currstate_reg[3] [19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[1]_inst_i_1 
       (.I0(Mult1_O_OBUF[1]),
        .I1(Q[1]),
        .I2(D[1]),
        .O(\FSM_onehot_currstate_reg[3] [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[20]_inst_i_1 
       (.I0(Mult1_O_OBUF[20]),
        .I1(Q[1]),
        .I2(D[20]),
        .O(\FSM_onehot_currstate_reg[3] [20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[21]_inst_i_1 
       (.I0(Mult1_O_OBUF[21]),
        .I1(Q[1]),
        .I2(D[21]),
        .O(\FSM_onehot_currstate_reg[3] [21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[22]_inst_i_1 
       (.I0(Mult1_O_OBUF[22]),
        .I1(Q[1]),
        .I2(D[22]),
        .O(\FSM_onehot_currstate_reg[3] [22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[23]_inst_i_1 
       (.I0(Mult1_O_OBUF[23]),
        .I1(Q[1]),
        .I2(D[23]),
        .O(\FSM_onehot_currstate_reg[3] [23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[24]_inst_i_1 
       (.I0(Mult1_O_OBUF[24]),
        .I1(Q[1]),
        .I2(D[24]),
        .O(\FSM_onehot_currstate_reg[3] [24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[25]_inst_i_1 
       (.I0(Mult1_O_OBUF[25]),
        .I1(Q[1]),
        .I2(D[25]),
        .O(\FSM_onehot_currstate_reg[3] [25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[26]_inst_i_1 
       (.I0(Mult1_O_OBUF[26]),
        .I1(Q[1]),
        .I2(D[26]),
        .O(\FSM_onehot_currstate_reg[3] [26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[27]_inst_i_1 
       (.I0(Mult1_O_OBUF[27]),
        .I1(Q[1]),
        .I2(D[27]),
        .O(\FSM_onehot_currstate_reg[3] [27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[2]_inst_i_1 
       (.I0(Mult1_O_OBUF[2]),
        .I1(Q[1]),
        .I2(D[2]),
        .O(\FSM_onehot_currstate_reg[3] [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[3]_inst_i_1 
       (.I0(Mult1_O_OBUF[3]),
        .I1(Q[1]),
        .I2(D[3]),
        .O(\FSM_onehot_currstate_reg[3] [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[4]_inst_i_1 
       (.I0(Mult1_O_OBUF[4]),
        .I1(Q[1]),
        .I2(D[4]),
        .O(\FSM_onehot_currstate_reg[3] [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[5]_inst_i_1 
       (.I0(Mult1_O_OBUF[5]),
        .I1(Q[1]),
        .I2(D[5]),
        .O(\FSM_onehot_currstate_reg[3] [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[6]_inst_i_1 
       (.I0(Mult1_O_OBUF[6]),
        .I1(Q[1]),
        .I2(D[6]),
        .O(\FSM_onehot_currstate_reg[3] [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[7]_inst_i_1 
       (.I0(Mult1_O_OBUF[7]),
        .I1(Q[1]),
        .I2(D[7]),
        .O(\FSM_onehot_currstate_reg[3] [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[8]_inst_i_1 
       (.I0(Mult1_O_OBUF[8]),
        .I1(Q[1]),
        .I2(D[8]),
        .O(\FSM_onehot_currstate_reg[3] [8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux1_O_OBUF[9]_inst_i_1 
       (.I0(Mult1_O_OBUF[9]),
        .I1(Q[1]),
        .I2(D[9]),
        .O(\FSM_onehot_currstate_reg[3] [9]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[0]_inst_i_1 
       (.I0(P[0]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[0]),
        .O(mult2_res_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[10]_inst_i_1 
       (.I0(P[10]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[10]),
        .O(mult2_res_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[11]_inst_i_1 
       (.I0(P[11]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[11]),
        .O(mult2_res_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[12]_inst_i_1 
       (.I0(P[12]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[12]),
        .O(mult2_res_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[13]_inst_i_1 
       (.I0(P[13]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[13]),
        .O(mult2_res_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[14]_inst_i_1 
       (.I0(P[14]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[14]),
        .O(mult2_res_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[15]_inst_i_1 
       (.I0(P[15]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[15]),
        .O(mult2_res_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[16]_inst_i_1 
       (.I0(P[16]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[16]),
        .O(mult2_res_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[17]_inst_i_1 
       (.I0(P[17]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[17]),
        .O(mult2_res_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[18]_inst_i_1 
       (.I0(P[18]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[18]),
        .O(mult2_res_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[19]_inst_i_1 
       (.I0(P[19]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[19]),
        .O(mult2_res_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[1]_inst_i_1 
       (.I0(P[1]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[1]),
        .O(mult2_res_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[20]_inst_i_1 
       (.I0(P[20]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[20]),
        .O(mult2_res_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[21]_inst_i_1 
       (.I0(P[21]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[21]),
        .O(mult2_res_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[22]_inst_i_1 
       (.I0(P[22]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[22]),
        .O(mult2_res_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[23]_inst_i_1 
       (.I0(P[23]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[23]),
        .O(mult2_res_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[24]_inst_i_1 
       (.I0(P[24]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[24]),
        .O(mult2_res_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[25]_inst_i_1 
       (.I0(P[25]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[25]),
        .O(mult2_res_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[26]_inst_i_1 
       (.I0(P[26]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[26]),
        .O(mult2_res_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[27]_inst_i_1 
       (.I0(P[27]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[27]),
        .O(mult2_res_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[28]_inst_i_1 
       (.I0(P[28]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[28]),
        .O(mult2_res_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[29]_inst_i_1 
       (.I0(P[29]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[29]),
        .O(mult2_res_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[2]_inst_i_1 
       (.I0(P[2]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[2]),
        .O(mult2_res_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[30]_inst_i_1 
       (.I0(P[30]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[30]),
        .O(mult2_res_0[30]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[31]_inst_i_1 
       (.I0(P[31]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[31]),
        .O(mult2_res_0[31]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[3]_inst_i_1 
       (.I0(P[3]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[3]),
        .O(mult2_res_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[4]_inst_i_1 
       (.I0(P[4]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[4]),
        .O(mult2_res_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[5]_inst_i_1 
       (.I0(P[5]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[5]),
        .O(mult2_res_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[6]_inst_i_1 
       (.I0(P[6]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[6]),
        .O(mult2_res_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[7]_inst_i_1 
       (.I0(P[7]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[7]),
        .O(mult2_res_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[8]_inst_i_1 
       (.I0(P[8]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[8]),
        .O(mult2_res_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mux2_O_OBUF[9]_inst_i_1 
       (.I0(P[9]),
        .I1(Q[0]),
        .I2(Mult1_O_OBUF[9]),
        .O(mult2_res_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[0]),
        .Q(\R1_reg[31]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[10]),
        .Q(\R1_reg[31]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[11]),
        .Q(\R1_reg[31]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[12]),
        .Q(\R1_reg[31]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[13]),
        .Q(\R1_reg[31]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[14]),
        .Q(\R1_reg[31]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[15]),
        .Q(\R1_reg[31]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[16]),
        .Q(\R1_reg[31]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[17]),
        .Q(\R1_reg[31]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[18]),
        .Q(\R1_reg[31]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[19]),
        .Q(\R1_reg[31]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[1]),
        .Q(\R1_reg[31]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[20]),
        .Q(\R1_reg[31]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[21]),
        .Q(\R1_reg[31]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[22]),
        .Q(\R1_reg[31]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[23]),
        .Q(\R1_reg[31]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[24]),
        .Q(\R1_reg[31]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[25]),
        .Q(\R1_reg[31]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[26]),
        .Q(\R1_reg[31]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[27]),
        .Q(\R1_reg[31]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[28]),
        .Q(\R1_reg[31]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[29]),
        .Q(\R1_reg[31]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[2]),
        .Q(\R1_reg[31]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[30]),
        .Q(\R1_reg[31]_0 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[31]),
        .Q(\R1_reg[31]_0 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[3]),
        .Q(\R1_reg[31]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[4]),
        .Q(\R1_reg[31]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[5]),
        .Q(\R1_reg[31]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[6]),
        .Q(\R1_reg[31]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[7]),
        .Q(\R1_reg[31]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[8]),
        .Q(\R1_reg[31]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R1_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(Mult1_O_OBUF[9]),
        .Q(\R1_reg[31]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[0] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[0]),
        .Q(\R2_reg[31]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[10] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[10]),
        .Q(\R2_reg[31]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[11] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[11]),
        .Q(\R2_reg[31]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[12] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[12]),
        .Q(\R2_reg[31]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[13] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[13]),
        .Q(\R2_reg[31]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[14] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[14]),
        .Q(\R2_reg[31]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[15] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[15]),
        .Q(\R2_reg[31]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[16] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[16]),
        .Q(\R2_reg[31]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[17] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[17]),
        .Q(\R2_reg[31]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[18] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[18]),
        .Q(\R2_reg[31]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[19] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[19]),
        .Q(\R2_reg[31]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[1] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[1]),
        .Q(\R2_reg[31]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[20] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[20]),
        .Q(\R2_reg[31]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[21] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[21]),
        .Q(\R2_reg[31]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[22] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[22]),
        .Q(\R2_reg[31]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[23] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[23]),
        .Q(\R2_reg[31]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[24] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[24]),
        .Q(\R2_reg[31]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[25] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[25]),
        .Q(\R2_reg[31]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[26] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[26]),
        .Q(\R2_reg[31]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[27] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[27]),
        .Q(\R2_reg[31]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[28] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[28]),
        .Q(\R2_reg[31]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[29] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[29]),
        .Q(\R2_reg[31]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[2] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[2]),
        .Q(\R2_reg[31]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[30] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[30]),
        .Q(\R2_reg[31]_0 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[31] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[31]),
        .Q(\R2_reg[31]_0 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[3] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[3]),
        .Q(\R2_reg[31]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[4] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[4]),
        .Q(\R2_reg[31]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[5] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[5]),
        .Q(\R2_reg[31]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[6] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[6]),
        .Q(\R2_reg[31]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[7] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[7]),
        .Q(\R2_reg[31]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[8] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[8]),
        .Q(\R2_reg[31]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R2_reg[9] 
       (.C(CLK),
        .CE(en2_OBUF),
        .D(D[9]),
        .Q(\R2_reg[31]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[0] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [0]),
        .Q(\R3_reg[31]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[10] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [10]),
        .Q(\R3_reg[31]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[11] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [11]),
        .Q(\R3_reg[31]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[12] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [12]),
        .Q(\R3_reg[31]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[13] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [13]),
        .Q(\R3_reg[31]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[14] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [14]),
        .Q(\R3_reg[31]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[15] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [15]),
        .Q(\R3_reg[31]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[16] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [16]),
        .Q(\R3_reg[31]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[17] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [17]),
        .Q(\R3_reg[31]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[18] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [18]),
        .Q(\R3_reg[31]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[19] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [19]),
        .Q(\R3_reg[31]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[1] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [1]),
        .Q(\R3_reg[31]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[20] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [20]),
        .Q(\R3_reg[31]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[21] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [21]),
        .Q(\R3_reg[31]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[22] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [22]),
        .Q(\R3_reg[31]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[23] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [23]),
        .Q(\R3_reg[31]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[24] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [24]),
        .Q(\R3_reg[31]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[25] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [25]),
        .Q(\R3_reg[31]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[26] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [26]),
        .Q(\R3_reg[31]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[27] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [27]),
        .Q(\R3_reg[31]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[28] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\R3_reg[31]_1 [0]),
        .Q(\R3_reg[31]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[29] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\R3_reg[31]_1 [1]),
        .Q(\R3_reg[31]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[2] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [2]),
        .Q(\R3_reg[31]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[30] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\R3_reg[31]_1 [2]),
        .Q(\R3_reg[31]_0 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[31] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\R3_reg[31]_1 [3]),
        .Q(\R3_reg[31]_0 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[3] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [3]),
        .Q(\R3_reg[31]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[4] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [4]),
        .Q(\R3_reg[31]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[5] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [5]),
        .Q(\R3_reg[31]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[6] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [6]),
        .Q(\R3_reg[31]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[7] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [7]),
        .Q(\R3_reg[31]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[8] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [8]),
        .Q(\R3_reg[31]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R3_reg[9] 
       (.C(CLK),
        .CE(en3_OBUF),
        .D(\FSM_onehot_currstate_reg[3] [9]),
        .Q(\R3_reg[31]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[0] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[0]),
        .Q(\R4_reg[31]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[10] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[10]),
        .Q(\R4_reg[31]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[11] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[11]),
        .Q(\R4_reg[31]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[12] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[12]),
        .Q(\R4_reg[31]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[13] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[13]),
        .Q(\R4_reg[31]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[14] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[14]),
        .Q(\R4_reg[31]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[15] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[15]),
        .Q(\R4_reg[31]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[16] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[16]),
        .Q(\R4_reg[31]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[17] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[17]),
        .Q(\R4_reg[31]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[18] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[18]),
        .Q(\R4_reg[31]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[19] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[19]),
        .Q(\R4_reg[31]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[1] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[1]),
        .Q(\R4_reg[31]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[20] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[20]),
        .Q(\R4_reg[31]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[21] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[21]),
        .Q(\R4_reg[31]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[22] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[22]),
        .Q(\R4_reg[31]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[23] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[23]),
        .Q(\R4_reg[31]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[24] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[24]),
        .Q(\R4_reg[31]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[25] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[25]),
        .Q(\R4_reg[31]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[26] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[26]),
        .Q(\R4_reg[31]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[27] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[27]),
        .Q(\R4_reg[31]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[28] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[28]),
        .Q(\R4_reg[31]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[29] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[29]),
        .Q(\R4_reg[31]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[2] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[2]),
        .Q(\R4_reg[31]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[30] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[30]),
        .Q(\R4_reg[31]_0 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[31] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[31]),
        .Q(\R4_reg[31]_0 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[3] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[3]),
        .Q(\R4_reg[31]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[4] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[4]),
        .Q(\R4_reg[31]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[5] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[5]),
        .Q(\R4_reg[31]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[6] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[6]),
        .Q(\R4_reg[31]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[7] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[7]),
        .Q(\R4_reg[31]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[8] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[8]),
        .Q(\R4_reg[31]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[9] 
       (.C(CLK),
        .CE(\R4_reg[31]_1 ),
        .D(mult2_res_0[9]),
        .Q(\R4_reg[31]_0 [9]),
        .R(SR));
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
       (.A({Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31],Mux3_O_OBUF[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult1_res_64_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Mux4_O_OBUF[14],Mux4_O_OBUF[14],Mux4_O_OBUF[14],Mux4_O_OBUF[14:0]}),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Mux3_O_OBUF[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult1_res_64__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Mux4_O_OBUF[16:0]}),
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
        .P({mult1_res_64__0_n_58,mult1_res_64__0_n_59,mult1_res_64__0_n_60,mult1_res_64__0_n_61,mult1_res_64__0_n_62,mult1_res_64__0_n_63,mult1_res_64__0_n_64,mult1_res_64__0_n_65,mult1_res_64__0_n_66,mult1_res_64__0_n_67,mult1_res_64__0_n_68,mult1_res_64__0_n_69,mult1_res_64__0_n_70,mult1_res_64__0_n_71,mult1_res_64__0_n_72,mult1_res_64__0_n_73,mult1_res_64__0_n_74,mult1_res_64__0_n_75,mult1_res_64__0_n_76,mult1_res_64__0_n_77,mult1_res_64__0_n_78,mult1_res_64__0_n_79,mult1_res_64__0_n_80,mult1_res_64__0_n_81,mult1_res_64__0_n_82,mult1_res_64__0_n_83,mult1_res_64__0_n_84,mult1_res_64__0_n_85,mult1_res_64__0_n_86,mult1_res_64__0_n_87,mult1_res_64__0_n_88,p_1_in[16],Mult1_O_OBUF[15:0]}),
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
    mult1_res_64__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Mux3_O_OBUF[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult1_res_64__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Mux4_O_OBUF[31],Mux4_O_OBUF[31],Mux4_O_OBUF[31],Mux4_O_OBUF[31:17]}),
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
  CARRY4 mult1_res_64_carry
       (.CI(1'b0),
        .CO({mult1_res_64_carry_n_0,mult1_res_64_carry_n_1,mult1_res_64_carry_n_2,mult1_res_64_carry_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_in[19:17],1'b0}),
        .O(Mult1_O_OBUF[19:16]),
        .S({mult1_res_64_carry_i_1_n_0,mult1_res_64_carry_i_2_n_0,mult1_res_64_carry_i_3_n_0,p_1_in[16]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mult1_res_64_carry__0
       (.CI(mult1_res_64_carry_n_0),
        .CO({mult1_res_64_carry__0_n_0,mult1_res_64_carry__0_n_1,mult1_res_64_carry__0_n_2,mult1_res_64_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_in[23:20]),
        .O(Mult1_O_OBUF[23:20]),
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
        .CO({mult1_res_64_carry__1_n_0,mult1_res_64_carry__1_n_1,mult1_res_64_carry__1_n_2,mult1_res_64_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_in[27:24]),
        .O(Mult1_O_OBUF[27:24]),
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
        .CO({NLW_mult1_res_64_carry__2_CO_UNCONNECTED[3],mult1_res_64_carry__2_n_1,mult1_res_64_carry__2_n_2,mult1_res_64_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,p_1_in[30:28]}),
        .O(Mult1_O_OBUF[31:28]),
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
  LUT2 #(
    .INIT(4'h6)) 
    mult1_res_64_carry_i_3
       (.I0(p_1_in[17]),
        .I1(p_0_in[17]),
        .O(mult1_res_64_carry_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
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
    mult2_res
       (.A({DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15],DOADO[15:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult2_res_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({DOADO[31],DOADO[31],DOADO[31:16]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult2_res_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult2_res_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult2_res_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_mult2_res_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult2_res_OVERFLOW_UNCONNECTED),
        .P({NLW_mult2_res_P_UNCONNECTED[47:32],P}),
        .PATTERNBDETECT(NLW_mult2_res_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult2_res_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mult2_res_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mult2_res_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry
       (.CI(1'b0),
        .CO({mux10_carry_n_0,mux10_carry_n_1,mux10_carry_n_2,mux10_carry_n_3}),
        .CYINIT(Q[2]),
        .DI(Mux5_O_OBUF[3:0]),
        .O(D[3:0]),
        .S(\R2_reg[3]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__0
       (.CI(mux10_carry_n_0),
        .CO({mux10_carry__0_n_0,mux10_carry__0_n_1,mux10_carry__0_n_2,mux10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Mux5_O_OBUF[7:4]),
        .O(D[7:4]),
        .S(\R2_reg[7]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__1
       (.CI(mux10_carry__0_n_0),
        .CO({mux10_carry__1_n_0,mux10_carry__1_n_1,mux10_carry__1_n_2,mux10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Mux5_O_OBUF[11:8]),
        .O(D[11:8]),
        .S(\R2_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__2
       (.CI(mux10_carry__1_n_0),
        .CO({mux10_carry__2_n_0,mux10_carry__2_n_1,mux10_carry__2_n_2,mux10_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Mux5_O_OBUF[15:12]),
        .O(D[15:12]),
        .S(\R2_reg[15]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__3
       (.CI(mux10_carry__2_n_0),
        .CO({mux10_carry__3_n_0,mux10_carry__3_n_1,mux10_carry__3_n_2,mux10_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Mux5_O_OBUF[19:16]),
        .O(D[19:16]),
        .S(\R2_reg[19]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__4
       (.CI(mux10_carry__3_n_0),
        .CO({mux10_carry__4_n_0,mux10_carry__4_n_1,mux10_carry__4_n_2,mux10_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Mux5_O_OBUF[23:20]),
        .O(D[23:20]),
        .S(\R2_reg[23]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__5
       (.CI(mux10_carry__4_n_0),
        .CO({mux10_carry__5_n_0,mux10_carry__5_n_1,mux10_carry__5_n_2,mux10_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Mux5_O_OBUF[27:24]),
        .O(D[27:24]),
        .S(\R2_reg[27]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 mux10_carry__6
       (.CI(mux10_carry__5_n_0),
        .CO({NLW_mux10_carry__6_CO_UNCONNECTED[3],mux10_carry__6_n_1,mux10_carry__6_n_2,mux10_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Mux5_O_OBUF[30:28]}),
        .O(D[31:28]),
        .S(S));
endmodule

module memOUT
   (DOADO,
    CLK,
    \ramb_bl.ramb36_sin_bl.ram36_bl ,
    Det_out_OBUF,
    Q);
  output [31:0]DOADO;
  input CLK;
  input [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl ;
  input [31:0]Det_out_OBUF;
  input [0:0]Q;

  wire CLK;
  wire [31:0]DOADO;
  wire [31:0]Det_out_OBUF;
  wire [0:0]Q;
  wire [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl ;

  unimacro_BRAM_SINGLE_MACRO MEM_out
       (.CLK(CLK),
        .DOADO(DOADO),
        .Det_out_OBUF(Det_out_OBUF),
        .Q(Q),
        .\ramb_bl.ramb36_sin_bl.ram36_bl_0 (\ramb_bl.ramb36_sin_bl.ram36_bl ));
endmodule

module unimacro_BRAM_SINGLE_MACRO
   (DOADO,
    CLK,
    \ramb_bl.ramb36_sin_bl.ram36_bl_0 ,
    Det_out_OBUF,
    Q);
  output [31:0]DOADO;
  input CLK;
  input [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  input [31:0]Det_out_OBUF;
  input [0:0]Q;

  wire CLK;
  wire [31:0]DOADO;
  wire [31:0]Det_out_OBUF;
  wire [0:0]Q;
  wire [3:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED ;

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
        .DIADI(Det_out_OBUF),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
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
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SINGLE_MACRO" *) 
module unimacro_BRAM_SINGLE_MACRO__parameterized0
   (DOADO,
    Mux5_O_OBUF,
    CLK,
    addr,
    \Mux5_O[31] ,
    \Mux5_O[31]_0 ,
    en2_OBUF,
    en3_OBUF,
    \Mux5_O[31]_1 );
  output [31:0]DOADO;
  output [31:0]Mux5_O_OBUF;
  input CLK;
  input [3:0]addr;
  input [31:0]\Mux5_O[31] ;
  input [31:0]\Mux5_O[31]_0 ;
  input en2_OBUF;
  input en3_OBUF;
  input [15:0]\Mux5_O[31]_1 ;

  wire CLK;
  wire [31:0]DOADO;
  wire [31:0]\Mux5_O[31] ;
  wire [31:0]\Mux5_O[31]_0 ;
  wire [15:0]\Mux5_O[31]_1 ;
  wire [31:0]Mux5_O_OBUF;
  wire [3:0]addr;
  wire en2_OBUF;
  wire en3_OBUF;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[0]_inst_i_1 
       (.I0(DOADO[0]),
        .I1(\Mux5_O[31] [0]),
        .I2(\Mux5_O[31]_0 [0]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [0]),
        .O(Mux5_O_OBUF[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[10]_inst_i_1 
       (.I0(DOADO[10]),
        .I1(\Mux5_O[31] [10]),
        .I2(\Mux5_O[31]_0 [10]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [10]),
        .O(Mux5_O_OBUF[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[11]_inst_i_1 
       (.I0(DOADO[11]),
        .I1(\Mux5_O[31] [11]),
        .I2(\Mux5_O[31]_0 [11]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [11]),
        .O(Mux5_O_OBUF[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[12]_inst_i_1 
       (.I0(DOADO[12]),
        .I1(\Mux5_O[31] [12]),
        .I2(\Mux5_O[31]_0 [12]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [12]),
        .O(Mux5_O_OBUF[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[13]_inst_i_1 
       (.I0(DOADO[13]),
        .I1(\Mux5_O[31] [13]),
        .I2(\Mux5_O[31]_0 [13]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [13]),
        .O(Mux5_O_OBUF[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[14]_inst_i_1 
       (.I0(DOADO[14]),
        .I1(\Mux5_O[31] [14]),
        .I2(\Mux5_O[31]_0 [14]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [14]),
        .O(Mux5_O_OBUF[14]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[15]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [15]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [15]),
        .O(Mux5_O_OBUF[15]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[16]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [16]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [16]),
        .O(Mux5_O_OBUF[16]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[17]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [17]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [17]),
        .O(Mux5_O_OBUF[17]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[18]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [18]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [18]),
        .O(Mux5_O_OBUF[18]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[19]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [19]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [19]),
        .O(Mux5_O_OBUF[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[1]_inst_i_1 
       (.I0(DOADO[1]),
        .I1(\Mux5_O[31] [1]),
        .I2(\Mux5_O[31]_0 [1]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [1]),
        .O(Mux5_O_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[20]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [20]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [20]),
        .O(Mux5_O_OBUF[20]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[21]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [21]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [21]),
        .O(Mux5_O_OBUF[21]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[22]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [22]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [22]),
        .O(Mux5_O_OBUF[22]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[23]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [23]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [23]),
        .O(Mux5_O_OBUF[23]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[24]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [24]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [24]),
        .O(Mux5_O_OBUF[24]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[25]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [25]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [25]),
        .O(Mux5_O_OBUF[25]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[26]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [26]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [26]),
        .O(Mux5_O_OBUF[26]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[27]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [27]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [27]),
        .O(Mux5_O_OBUF[27]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[28]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [28]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [28]),
        .O(Mux5_O_OBUF[28]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[29]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [29]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [29]),
        .O(Mux5_O_OBUF[29]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[2]_inst_i_1 
       (.I0(DOADO[2]),
        .I1(\Mux5_O[31] [2]),
        .I2(\Mux5_O[31]_0 [2]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [2]),
        .O(Mux5_O_OBUF[2]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[30]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [30]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [30]),
        .O(Mux5_O_OBUF[30]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \Mux5_O_OBUF[31]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\Mux5_O[31]_1 [15]),
        .I2(\Mux5_O[31]_0 [31]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31] [31]),
        .O(Mux5_O_OBUF[31]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[3]_inst_i_1 
       (.I0(DOADO[3]),
        .I1(\Mux5_O[31] [3]),
        .I2(\Mux5_O[31]_0 [3]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [3]),
        .O(Mux5_O_OBUF[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[4]_inst_i_1 
       (.I0(DOADO[4]),
        .I1(\Mux5_O[31] [4]),
        .I2(\Mux5_O[31]_0 [4]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [4]),
        .O(Mux5_O_OBUF[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[5]_inst_i_1 
       (.I0(DOADO[5]),
        .I1(\Mux5_O[31] [5]),
        .I2(\Mux5_O[31]_0 [5]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [5]),
        .O(Mux5_O_OBUF[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[6]_inst_i_1 
       (.I0(DOADO[6]),
        .I1(\Mux5_O[31] [6]),
        .I2(\Mux5_O[31]_0 [6]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [6]),
        .O(Mux5_O_OBUF[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[7]_inst_i_1 
       (.I0(DOADO[7]),
        .I1(\Mux5_O[31] [7]),
        .I2(\Mux5_O[31]_0 [7]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [7]),
        .O(Mux5_O_OBUF[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[8]_inst_i_1 
       (.I0(DOADO[8]),
        .I1(\Mux5_O[31] [8]),
        .I2(\Mux5_O[31]_0 [8]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [8]),
        .O(Mux5_O_OBUF[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \Mux5_O_OBUF[9]_inst_i_1 
       (.I0(DOADO[9]),
        .I1(\Mux5_O[31] [9]),
        .I2(\Mux5_O[31]_0 [9]),
        .I3(en2_OBUF),
        .I4(en3_OBUF),
        .I5(\Mux5_O[31]_1 [9]),
        .O(Mux5_O_OBUF[9]));
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
        .DOADO(DOADO),
        .DOBDO(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
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
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SINGLE_MACRO" *) 
module unimacro_BRAM_SINGLE_MACRO__parameterized1
   (\ramb_bl.ramb36_sin_bl.ram36_bl_0 ,
    CLK,
    addr);
  output [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  input CLK;
  input [3:0]addr;

  wire CLK;
  wire [3:0]addr;
  wire [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED ;

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
        .DOADO(\ramb_bl.ramb36_sin_bl.ram36_bl_0 ),
        .DOBDO(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
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
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SINGLE_MACRO" *) 
module unimacro_BRAM_SINGLE_MACRO__parameterized2
   (\ramb_bl.ramb36_sin_bl.ram36_bl_0 ,
    CLK,
    addr);
  output [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  input CLK;
  input [3:0]addr;

  wire CLK;
  wire [3:0]addr;
  wire [31:0]\ramb_bl.ramb36_sin_bl.ram36_bl_0 ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DBITERR_UNCONNECTED ;
  wire \NLW_ramb_bl.ramb36_sin_bl.ram36_bl_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_ramb_bl.ramb36_sin_bl.ram36_bl_RDADDRECC_UNCONNECTED ;

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
        .ENARDEN(1'b1),
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

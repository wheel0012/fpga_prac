// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Dec  2 23:35:10 2024
// Host        : JUN running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/wheel/vhdl_prac/uproc_sample/uproc_sample.sim/sim_1/synth/timing/xsim/cpu_test_time_synth.v
// Design      : flow
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ALU
   (O,
    i__carry__1_i_3__0,
    \Q_reg[9] ,
    \Q_reg[7] ,
    \Q_reg[7]_0 ,
    \Q_reg[7]_1 ,
    \Q_reg[7]_2 ,
    \Q_reg[7]_3 ,
    \Q_reg[7]_4 ,
    \Q_reg[7]_5 ,
    DI,
    S,
    \DO_tristate_oe[0]_i_4_0 ,
    \DO_tristate_oe[0]_i_4_1 ,
    \DO_tristate_oe[0]_i_4_2 ,
    \DO_tristate_oe[0]_i_4_3 ,
    \DO_tristate_oe[4]_i_3_0 ,
    \DO_tristate_oe[4]_i_3_1 ,
    \DO_tristate_oe[8]_i_3 ,
    \DO_tristate_oe[8]_i_3_0 ,
    \DO_tristate_oe[0]_i_4_4 ,
    \DO_tristate_oe[0]_i_4_5 ,
    \DO_tristate_oe[4]_i_3_2 ,
    \DO_tristate_oe[4]_i_3_3 ,
    \DO_tristate_oe[8]_i_3_1 ,
    \DO_tristate_oe[8]_i_3_2 ,
    op);
  output [1:0]O;
  output [1:0]i__carry__1_i_3__0;
  output \Q_reg[9] ;
  output \Q_reg[7] ;
  output \Q_reg[7]_0 ;
  output \Q_reg[7]_1 ;
  output \Q_reg[7]_2 ;
  output \Q_reg[7]_3 ;
  output \Q_reg[7]_4 ;
  output \Q_reg[7]_5 ;
  input [3:0]DI;
  input [3:0]S;
  input [0:0]\DO_tristate_oe[0]_i_4_0 ;
  input [0:0]\DO_tristate_oe[0]_i_4_1 ;
  input [3:0]\DO_tristate_oe[0]_i_4_2 ;
  input [3:0]\DO_tristate_oe[0]_i_4_3 ;
  input [3:0]\DO_tristate_oe[4]_i_3_0 ;
  input [3:0]\DO_tristate_oe[4]_i_3_1 ;
  input [0:0]\DO_tristate_oe[8]_i_3 ;
  input [1:0]\DO_tristate_oe[8]_i_3_0 ;
  input [3:0]\DO_tristate_oe[0]_i_4_4 ;
  input [3:0]\DO_tristate_oe[0]_i_4_5 ;
  input [3:0]\DO_tristate_oe[4]_i_3_2 ;
  input [3:0]\DO_tristate_oe[4]_i_3_3 ;
  input [0:0]\DO_tristate_oe[8]_i_3_1 ;
  input [1:0]\DO_tristate_oe[8]_i_3_2 ;
  input [1:0]op;

  wire [3:0]DI;
  wire [0:0]\DO_tristate_oe[0]_i_4_0 ;
  wire [0:0]\DO_tristate_oe[0]_i_4_1 ;
  wire [3:0]\DO_tristate_oe[0]_i_4_2 ;
  wire [3:0]\DO_tristate_oe[0]_i_4_3 ;
  wire [3:0]\DO_tristate_oe[0]_i_4_4 ;
  wire [3:0]\DO_tristate_oe[0]_i_4_5 ;
  wire [3:0]\DO_tristate_oe[4]_i_3_0 ;
  wire [3:0]\DO_tristate_oe[4]_i_3_1 ;
  wire [3:0]\DO_tristate_oe[4]_i_3_2 ;
  wire [3:0]\DO_tristate_oe[4]_i_3_3 ;
  wire [0:0]\DO_tristate_oe[8]_i_3 ;
  wire [1:0]\DO_tristate_oe[8]_i_3_0 ;
  wire [0:0]\DO_tristate_oe[8]_i_3_1 ;
  wire [1:0]\DO_tristate_oe[8]_i_3_2 ;
  wire [1:0]O;
  wire Q0_carry_n_0;
  wire Q0_carry_n_1;
  wire Q0_carry_n_2;
  wire Q0_carry_n_3;
  wire \Q0_inferred__0/i__carry__0_n_0 ;
  wire \Q0_inferred__0/i__carry__0_n_1 ;
  wire \Q0_inferred__0/i__carry__0_n_2 ;
  wire \Q0_inferred__0/i__carry__0_n_3 ;
  wire \Q0_inferred__0/i__carry__1_n_3 ;
  wire \Q0_inferred__0/i__carry_n_0 ;
  wire \Q0_inferred__0/i__carry_n_1 ;
  wire \Q0_inferred__0/i__carry_n_2 ;
  wire \Q0_inferred__0/i__carry_n_3 ;
  wire \Q0_inferred__1/i__carry__0_n_0 ;
  wire \Q0_inferred__1/i__carry__0_n_1 ;
  wire \Q0_inferred__1/i__carry__0_n_2 ;
  wire \Q0_inferred__1/i__carry__0_n_3 ;
  wire \Q0_inferred__1/i__carry__1_n_3 ;
  wire \Q0_inferred__1/i__carry_n_0 ;
  wire \Q0_inferred__1/i__carry_n_1 ;
  wire \Q0_inferred__1/i__carry_n_2 ;
  wire \Q0_inferred__1/i__carry_n_3 ;
  wire \Q_reg[7] ;
  wire \Q_reg[7]_0 ;
  wire \Q_reg[7]_1 ;
  wire \Q_reg[7]_2 ;
  wire \Q_reg[7]_3 ;
  wire \Q_reg[7]_4 ;
  wire \Q_reg[7]_5 ;
  wire \Q_reg[9] ;
  wire [3:0]S;
  wire data0;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [1:0]i__carry__1_i_3__0;
  wire [1:0]op;
  wire [3:0]NLW_Q0_carry_O_UNCONNECTED;
  wire [3:1]NLW_Q0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_Q0_carry__0_O_UNCONNECTED;
  wire [3:1]\NLW_Q0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_Q0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW_Q0_inferred__1/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_Q0_inferred__1/i__carry__1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \DO_tristate_oe[0]_i_4 
       (.I0(data0),
        .I1(data2[0]),
        .I2(data1[0]),
        .I3(op[0]),
        .I4(op[1]),
        .O(\Q_reg[9] ));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \DO_tristate_oe[1]_i_3 
       (.I0(data1[1]),
        .I1(data2[1]),
        .I2(op[1]),
        .I3(op[0]),
        .O(\Q_reg[7] ));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \DO_tristate_oe[2]_i_3 
       (.I0(data1[2]),
        .I1(data2[2]),
        .I2(op[1]),
        .I3(op[0]),
        .O(\Q_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \DO_tristate_oe[3]_i_3 
       (.I0(data1[3]),
        .I1(data2[3]),
        .I2(op[1]),
        .I3(op[0]),
        .O(\Q_reg[7]_1 ));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \DO_tristate_oe[4]_i_3 
       (.I0(data1[4]),
        .I1(data2[4]),
        .I2(op[1]),
        .I3(op[0]),
        .O(\Q_reg[7]_2 ));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \DO_tristate_oe[5]_i_3 
       (.I0(data1[5]),
        .I1(data2[5]),
        .I2(op[1]),
        .I3(op[0]),
        .O(\Q_reg[7]_3 ));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \DO_tristate_oe[6]_i_3 
       (.I0(data1[6]),
        .I1(data2[6]),
        .I2(op[1]),
        .I3(op[0]),
        .O(\Q_reg[7]_4 ));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \DO_tristate_oe[7]_i_3 
       (.I0(data1[7]),
        .I1(data2[7]),
        .I2(op[1]),
        .I3(op[0]),
        .O(\Q_reg[7]_5 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 Q0_carry
       (.CI(1'b0),
        .CO({Q0_carry_n_0,Q0_carry_n_1,Q0_carry_n_2,Q0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_Q0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 Q0_carry__0
       (.CI(Q0_carry_n_0),
        .CO({NLW_Q0_carry__0_CO_UNCONNECTED[3:1],data0}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\DO_tristate_oe[0]_i_4_0 }),
        .O(NLW_Q0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,\DO_tristate_oe[0]_i_4_1 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Q0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\Q0_inferred__0/i__carry_n_0 ,\Q0_inferred__0/i__carry_n_1 ,\Q0_inferred__0/i__carry_n_2 ,\Q0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(\DO_tristate_oe[0]_i_4_2 ),
        .O(data1[3:0]),
        .S(\DO_tristate_oe[0]_i_4_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Q0_inferred__0/i__carry__0 
       (.CI(\Q0_inferred__0/i__carry_n_0 ),
        .CO({\Q0_inferred__0/i__carry__0_n_0 ,\Q0_inferred__0/i__carry__0_n_1 ,\Q0_inferred__0/i__carry__0_n_2 ,\Q0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\DO_tristate_oe[4]_i_3_0 ),
        .O(data1[7:4]),
        .S(\DO_tristate_oe[4]_i_3_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Q0_inferred__0/i__carry__1 
       (.CI(\Q0_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_Q0_inferred__0/i__carry__1_CO_UNCONNECTED [3:1],\Q0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\DO_tristate_oe[8]_i_3 }),
        .O({\NLW_Q0_inferred__0/i__carry__1_O_UNCONNECTED [3:2],O}),
        .S({1'b0,1'b0,\DO_tristate_oe[8]_i_3_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Q0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\Q0_inferred__1/i__carry_n_0 ,\Q0_inferred__1/i__carry_n_1 ,\Q0_inferred__1/i__carry_n_2 ,\Q0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\DO_tristate_oe[0]_i_4_4 ),
        .O(data2[3:0]),
        .S(\DO_tristate_oe[0]_i_4_5 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Q0_inferred__1/i__carry__0 
       (.CI(\Q0_inferred__1/i__carry_n_0 ),
        .CO({\Q0_inferred__1/i__carry__0_n_0 ,\Q0_inferred__1/i__carry__0_n_1 ,\Q0_inferred__1/i__carry__0_n_2 ,\Q0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\DO_tristate_oe[4]_i_3_2 ),
        .O(data2[7:4]),
        .S(\DO_tristate_oe[4]_i_3_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Q0_inferred__1/i__carry__1 
       (.CI(\Q0_inferred__1/i__carry__0_n_0 ),
        .CO({\NLW_Q0_inferred__1/i__carry__1_CO_UNCONNECTED [3:1],\Q0_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\DO_tristate_oe[8]_i_3_1 }),
        .O({\NLW_Q0_inferred__1/i__carry__1_O_UNCONNECTED [3:2],i__carry__1_i_3__0}),
        .S({1'b0,1'b0,\DO_tristate_oe[8]_i_3_2 }));
endmodule

module FF
   (pc,
    E,
    D,
    PCload,
    \Q_reg[3]_0 ,
    clk_out_1_OBUF_BUFG,
    \Q_reg[3]_1 ,
    \Q_reg[1]_0 ,
    \Q_reg[0]_0 );
  output [3:0]pc;
  output [0:0]E;
  output [1:0]D;
  input PCload;
  input \Q_reg[3]_0 ;
  input clk_out_1_OBUF_BUFG;
  input \Q_reg[3]_1 ;
  input \Q_reg[1]_0 ;
  input \Q_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire PCload;
  wire \Q[2]_i_1_n_0 ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire clk_out_1_OBUF_BUFG;
  wire [3:0]pc;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Q[2]_i_1 
       (.I0(pc[0]),
        .I1(pc[1]),
        .I2(pc[2]),
        .O(\Q[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(PCload),
        .CLR(\Q_reg[3]_1 ),
        .D(\Q_reg[0]_0 ),
        .Q(pc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(PCload),
        .CLR(\Q_reg[3]_1 ),
        .D(\Q_reg[1]_0 ),
        .Q(pc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(PCload),
        .CLR(\Q_reg[3]_1 ),
        .D(\Q[2]_i_1_n_0 ),
        .Q(pc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(PCload),
        .CLR(\Q_reg[3]_1 ),
        .D(\Q_reg[3]_0 ),
        .Q(pc[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Q_reg[6]_i_1 
       (.I0(pc[1]),
        .I1(pc[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \Q_reg[7]_i_1 
       (.I0(pc[0]),
        .I1(pc[1]),
        .I2(pc[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h001F)) 
    \Q_reg[7]_i_2 
       (.I0(pc[1]),
        .I1(pc[0]),
        .I2(pc[2]),
        .I3(pc[3]),
        .O(E));
endmodule

(* ORIG_REF_NAME = "FF" *) 
module FF__parameterized0
   (IR,
    Q,
    IRload,
    clk_out_1_OBUF_BUFG,
    \Q_reg[6]_0 );
  output [2:0]IR;
  input [1:0]Q;
  input IRload;
  input clk_out_1_OBUF_BUFG;
  input \Q_reg[6]_0 ;

  wire [2:0]IR;
  wire IRload;
  wire [1:0]Q;
  wire \Q[6]_i_1_n_0 ;
  wire \Q[7]_i_1_n_0 ;
  wire \Q[9]_i_1_n_0 ;
  wire \Q_reg[6]_0 ;
  wire clk_out_1_OBUF_BUFG;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[6]_i_1 
       (.I0(Q[0]),
        .I1(IRload),
        .I2(IR[0]),
        .O(\Q[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[7]_i_1 
       (.I0(Q[1]),
        .I1(IRload),
        .I2(IR[1]),
        .O(\Q[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \Q[9]_i_1 
       (.I0(IRload),
        .I1(IR[2]),
        .O(\Q[9]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \Q_reg[6] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(1'b1),
        .D(\Q[6]_i_1_n_0 ),
        .PRE(\Q_reg[6]_0 ),
        .Q(IR[0]));
  FDPE #(
    .INIT(1'b1)) 
    \Q_reg[7] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(1'b1),
        .D(\Q[7]_i_1_n_0 ),
        .PRE(\Q_reg[6]_0 ),
        .Q(IR[1]));
  FDPE #(
    .INIT(1'b1)) 
    \Q_reg[9] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(1'b1),
        .D(\Q[9]_i_1_n_0 ),
        .PRE(\Q_reg[6]_0 ),
        .Q(IR[2]));
endmodule

module RF
   (reset,
    \DO_tristate_oe[9]_i_4_0 ,
    \DO_tristate_oe[9]_i_4_1 ,
    \DO_tristate_oe[7]_i_4_0 ,
    \DO_tristate_oe[7]_i_2_0 ,
    \DO_tristate_oe[3]_i_4_0 ,
    \DO_tristate_oe[3]_i_2_0 ,
    \DO_tristate_oe[8]_i_4_0 ,
    S,
    D,
    \DO_tristate_oe[9]_i_4_2 ,
    DI,
    \mem_reg[2][3]_0 ,
    \mem_reg[2][7]_0 ,
    \mem_reg[2][8]_0 ,
    \mem_reg[2][3]_1 ,
    \mem_reg[2][7]_1 ,
    \mem_reg[2][8]_1 ,
    reset_IBUF,
    N,
    DI_IBUF,
    IE,
    op,
    RBE,
    RBA,
    \DO_tristate_oe_reg[7] ,
    \DO_tristate_oe_reg[6] ,
    \DO_tristate_oe_reg[5] ,
    \DO_tristate_oe_reg[4] ,
    \DO_tristate_oe_reg[3] ,
    \DO_tristate_oe_reg[2] ,
    \DO_tristate_oe_reg[1] ,
    \DO_tristate_oe_reg[0] ,
    RAE,
    RAA,
    O,
    \DO_tristate_oe_reg[9] ,
    clk_out_1_OBUF_BUFG,
    IRdecode,
    WE,
    WA);
  output reset;
  output [1:0]\DO_tristate_oe[9]_i_4_0 ;
  output [1:0]\DO_tristate_oe[9]_i_4_1 ;
  output [3:0]\DO_tristate_oe[7]_i_4_0 ;
  output [3:0]\DO_tristate_oe[7]_i_2_0 ;
  output [3:0]\DO_tristate_oe[3]_i_4_0 ;
  output [3:0]\DO_tristate_oe[3]_i_2_0 ;
  output [0:0]\DO_tristate_oe[8]_i_4_0 ;
  output [3:0]S;
  output [9:0]D;
  output [0:0]\DO_tristate_oe[9]_i_4_2 ;
  output [3:0]DI;
  output [3:0]\mem_reg[2][3]_0 ;
  output [3:0]\mem_reg[2][7]_0 ;
  output [0:0]\mem_reg[2][8]_0 ;
  output [3:0]\mem_reg[2][3]_1 ;
  output [3:0]\mem_reg[2][7]_1 ;
  output [0:0]\mem_reg[2][8]_1 ;
  input reset_IBUF;
  input [9:0]N;
  input [9:0]DI_IBUF;
  input [1:0]IE;
  input [2:0]op;
  input RBE;
  input [1:0]RBA;
  input \DO_tristate_oe_reg[7] ;
  input \DO_tristate_oe_reg[6] ;
  input \DO_tristate_oe_reg[5] ;
  input \DO_tristate_oe_reg[4] ;
  input \DO_tristate_oe_reg[3] ;
  input \DO_tristate_oe_reg[2] ;
  input \DO_tristate_oe_reg[1] ;
  input \DO_tristate_oe_reg[0] ;
  input RAE;
  input [1:0]RAA;
  input [1:0]O;
  input [1:0]\DO_tristate_oe_reg[9] ;
  input clk_out_1_OBUF_BUFG;
  input IRdecode;
  input WE;
  input [1:0]WA;

  wire [8:0]A;
  wire [9:9]A__0;
  wire [8:0]B;
  wire [9:9]B__0;
  wire [9:0]D;
  wire [3:0]DI;
  wire [9:0]DI_IBUF;
  wire \DO_tristate_oe[0]_i_2_n_0 ;
  wire \DO_tristate_oe[0]_i_3_n_0 ;
  wire \DO_tristate_oe[0]_i_5_n_0 ;
  wire \DO_tristate_oe[0]_i_6_n_0 ;
  wire \DO_tristate_oe[0]_i_7_n_0 ;
  wire [3:0]\DO_tristate_oe[3]_i_2_0 ;
  wire [3:0]\DO_tristate_oe[3]_i_4_0 ;
  wire [3:0]\DO_tristate_oe[7]_i_2_0 ;
  wire [3:0]\DO_tristate_oe[7]_i_4_0 ;
  wire \DO_tristate_oe[8]_i_3_n_0 ;
  wire [0:0]\DO_tristate_oe[8]_i_4_0 ;
  wire \DO_tristate_oe[9]_i_3_n_0 ;
  wire [1:0]\DO_tristate_oe[9]_i_4_0 ;
  wire [1:0]\DO_tristate_oe[9]_i_4_1 ;
  wire [0:0]\DO_tristate_oe[9]_i_4_2 ;
  wire \DO_tristate_oe_reg[0] ;
  wire \DO_tristate_oe_reg[1] ;
  wire \DO_tristate_oe_reg[2] ;
  wire \DO_tristate_oe_reg[3] ;
  wire \DO_tristate_oe_reg[4] ;
  wire \DO_tristate_oe_reg[5] ;
  wire \DO_tristate_oe_reg[6] ;
  wire \DO_tristate_oe_reg[7] ;
  wire [1:0]\DO_tristate_oe_reg[9] ;
  wire [1:0]IE;
  wire IRdecode;
  wire [9:0]N;
  wire [1:0]O;
  wire [1:0]RAA;
  wire RAE;
  wire [1:0]RBA;
  wire RBE;
  wire [3:0]S;
  wire [1:0]WA;
  wire WE;
  wire clk_out_1_OBUF_BUFG;
  wire [9:0]mem;
  wire \mem[1][9]_i_1_n_0 ;
  wire \mem[2][0]_i_2_n_0 ;
  wire \mem[2][0]_i_3_n_0 ;
  wire \mem[2][9]_i_1_n_0 ;
  wire \mem[3][9]_i_1_n_0 ;
  wire mem_0;
  wire [9:0]mem__0;
  wire [9:0]\mem_reg[0] ;
  wire [9:0]\mem_reg[1] ;
  wire [9:0]\mem_reg[2] ;
  wire [3:0]\mem_reg[2][3]_0 ;
  wire [3:0]\mem_reg[2][3]_1 ;
  wire [3:0]\mem_reg[2][7]_0 ;
  wire [3:0]\mem_reg[2][7]_1 ;
  wire [0:0]\mem_reg[2][8]_0 ;
  wire [0:0]\mem_reg[2][8]_1 ;
  wire [9:0]\mem_reg[3] ;
  wire [9:0]mux_result;
  wire [2:0]op;
  wire reset;
  wire reset_IBUF;

  LUT4 #(
    .INIT(16'hAAEA)) 
    \DO_tristate_oe[0]_i_1 
       (.I0(\DO_tristate_oe[0]_i_2_n_0 ),
        .I1(\DO_tristate_oe[0]_i_3_n_0 ),
        .I2(op[2]),
        .I3(op[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h5444E4E444444444)) 
    \DO_tristate_oe[0]_i_2 
       (.I0(op[2]),
        .I1(\DO_tristate_oe_reg[0] ),
        .I2(A[0]),
        .I3(B[0]),
        .I4(op[0]),
        .I5(op[1]),
        .O(\DO_tristate_oe[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55F4554455445544)) 
    \DO_tristate_oe[0]_i_3 
       (.I0(op[0]),
        .I1(B[0]),
        .I2(\DO_tristate_oe[0]_i_5_n_0 ),
        .I3(A[0]),
        .I4(\DO_tristate_oe[0]_i_6_n_0 ),
        .I5(\DO_tristate_oe[0]_i_7_n_0 ),
        .O(\DO_tristate_oe[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \DO_tristate_oe[0]_i_5 
       (.I0(A__0),
        .I1(A[8]),
        .O(\DO_tristate_oe[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \DO_tristate_oe[0]_i_6 
       (.I0(A[1]),
        .I1(op[0]),
        .I2(A[2]),
        .I3(A[3]),
        .O(\DO_tristate_oe[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \DO_tristate_oe[0]_i_7 
       (.I0(A[4]),
        .I1(A[5]),
        .I2(A[6]),
        .I3(A[7]),
        .O(\DO_tristate_oe[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00AAECCC00FACCCC)) 
    \DO_tristate_oe[1]_i_1 
       (.I0(A[1]),
        .I1(\DO_tristate_oe_reg[1] ),
        .I2(B[1]),
        .I3(op[0]),
        .I4(op[2]),
        .I5(op[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[1]_i_2 
       (.I0(mem__0[1]),
        .I1(RAE),
        .I2(N[1]),
        .O(A[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[1]_i_4 
       (.I0(mem[1]),
        .I1(RBE),
        .I2(N[1]),
        .O(B[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \DO_tristate_oe[1]_i_5 
       (.I0(\mem_reg[2] [1]),
        .I1(\mem_reg[3] [1]),
        .I2(\mem_reg[0] [1]),
        .I3(RBA[1]),
        .I4(RBA[0]),
        .I5(\mem_reg[1] [1]),
        .O(mem[1]));
  LUT6 #(
    .INIT(64'h00AAECCC00FACCCC)) 
    \DO_tristate_oe[2]_i_1 
       (.I0(A[2]),
        .I1(\DO_tristate_oe_reg[2] ),
        .I2(B[2]),
        .I3(op[0]),
        .I4(op[2]),
        .I5(op[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[2]_i_2 
       (.I0(mem__0[2]),
        .I1(RAE),
        .I2(N[2]),
        .O(A[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[2]_i_4 
       (.I0(mem[2]),
        .I1(RBE),
        .I2(N[2]),
        .O(B[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \DO_tristate_oe[2]_i_5 
       (.I0(\mem_reg[2] [2]),
        .I1(\mem_reg[3] [2]),
        .I2(\mem_reg[0] [2]),
        .I3(RBA[1]),
        .I4(RBA[0]),
        .I5(\mem_reg[1] [2]),
        .O(mem[2]));
  LUT6 #(
    .INIT(64'h00AAECCC00FACCCC)) 
    \DO_tristate_oe[3]_i_1 
       (.I0(A[3]),
        .I1(\DO_tristate_oe_reg[3] ),
        .I2(B[3]),
        .I3(op[0]),
        .I4(op[2]),
        .I5(op[1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[3]_i_2 
       (.I0(mem__0[3]),
        .I1(RAE),
        .I2(N[3]),
        .O(A[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[3]_i_4 
       (.I0(mem[3]),
        .I1(RBE),
        .I2(N[3]),
        .O(B[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \DO_tristate_oe[3]_i_5 
       (.I0(\mem_reg[2] [3]),
        .I1(\mem_reg[3] [3]),
        .I2(\mem_reg[0] [3]),
        .I3(RBA[1]),
        .I4(RBA[0]),
        .I5(\mem_reg[1] [3]),
        .O(mem[3]));
  LUT6 #(
    .INIT(64'h00AAECCC00FACCCC)) 
    \DO_tristate_oe[4]_i_1 
       (.I0(A[4]),
        .I1(\DO_tristate_oe_reg[4] ),
        .I2(B[4]),
        .I3(op[0]),
        .I4(op[2]),
        .I5(op[1]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[4]_i_2 
       (.I0(mem__0[4]),
        .I1(RAE),
        .I2(N[4]),
        .O(A[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[4]_i_4 
       (.I0(mem[4]),
        .I1(RBE),
        .I2(N[4]),
        .O(B[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \DO_tristate_oe[4]_i_5 
       (.I0(\mem_reg[2] [4]),
        .I1(\mem_reg[3] [4]),
        .I2(\mem_reg[0] [4]),
        .I3(RBA[1]),
        .I4(RBA[0]),
        .I5(\mem_reg[1] [4]),
        .O(mem[4]));
  LUT6 #(
    .INIT(64'h00AAECCC00FACCCC)) 
    \DO_tristate_oe[5]_i_1 
       (.I0(A[5]),
        .I1(\DO_tristate_oe_reg[5] ),
        .I2(B[5]),
        .I3(op[0]),
        .I4(op[2]),
        .I5(op[1]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[5]_i_2 
       (.I0(mem__0[5]),
        .I1(RAE),
        .I2(N[5]),
        .O(A[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[5]_i_4 
       (.I0(mem[5]),
        .I1(RBE),
        .I2(N[5]),
        .O(B[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \DO_tristate_oe[5]_i_5 
       (.I0(\mem_reg[2] [5]),
        .I1(\mem_reg[3] [5]),
        .I2(\mem_reg[0] [5]),
        .I3(RBA[1]),
        .I4(RBA[0]),
        .I5(\mem_reg[1] [5]),
        .O(mem[5]));
  LUT6 #(
    .INIT(64'h00AAECCC00FACCCC)) 
    \DO_tristate_oe[6]_i_1 
       (.I0(A[6]),
        .I1(\DO_tristate_oe_reg[6] ),
        .I2(B[6]),
        .I3(op[0]),
        .I4(op[2]),
        .I5(op[1]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[6]_i_2 
       (.I0(mem__0[6]),
        .I1(RAE),
        .I2(N[6]),
        .O(A[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[6]_i_4 
       (.I0(mem[6]),
        .I1(RBE),
        .I2(N[6]),
        .O(B[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \DO_tristate_oe[6]_i_5 
       (.I0(\mem_reg[2] [6]),
        .I1(\mem_reg[3] [6]),
        .I2(\mem_reg[0] [6]),
        .I3(RBA[1]),
        .I4(RBA[0]),
        .I5(\mem_reg[1] [6]),
        .O(mem[6]));
  LUT6 #(
    .INIT(64'h00AAECCC00FACCCC)) 
    \DO_tristate_oe[7]_i_1 
       (.I0(A[7]),
        .I1(\DO_tristate_oe_reg[7] ),
        .I2(B[7]),
        .I3(op[0]),
        .I4(op[2]),
        .I5(op[1]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[7]_i_2 
       (.I0(mem__0[7]),
        .I1(RAE),
        .I2(N[7]),
        .O(A[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[7]_i_4 
       (.I0(mem[7]),
        .I1(RBE),
        .I2(N[7]),
        .O(B[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \DO_tristate_oe[7]_i_5 
       (.I0(\mem_reg[2] [7]),
        .I1(\mem_reg[3] [7]),
        .I2(\mem_reg[0] [7]),
        .I3(RBA[1]),
        .I4(RBA[0]),
        .I5(\mem_reg[1] [7]),
        .O(mem[7]));
  LUT6 #(
    .INIT(64'h00AAECCC00FACCCC)) 
    \DO_tristate_oe[8]_i_1 
       (.I0(A[8]),
        .I1(\DO_tristate_oe[8]_i_3_n_0 ),
        .I2(B[8]),
        .I3(op[0]),
        .I4(op[2]),
        .I5(op[1]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[8]_i_2 
       (.I0(mem__0[8]),
        .I1(RAE),
        .I2(N[8]),
        .O(A[8]));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \DO_tristate_oe[8]_i_3 
       (.I0(O[0]),
        .I1(\DO_tristate_oe_reg[9] [0]),
        .I2(op[1]),
        .I3(op[0]),
        .O(\DO_tristate_oe[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[8]_i_4 
       (.I0(mem[8]),
        .I1(RBE),
        .I2(N[8]),
        .O(B[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \DO_tristate_oe[8]_i_5 
       (.I0(\mem_reg[2] [8]),
        .I1(\mem_reg[3] [8]),
        .I2(\mem_reg[0] [8]),
        .I3(RBA[1]),
        .I4(RBA[0]),
        .I5(\mem_reg[1] [8]),
        .O(mem[8]));
  LUT6 #(
    .INIT(64'h00AAECCC00FACCCC)) 
    \DO_tristate_oe[9]_i_1 
       (.I0(A__0),
        .I1(\DO_tristate_oe[9]_i_3_n_0 ),
        .I2(B__0),
        .I3(op[0]),
        .I4(op[2]),
        .I5(op[1]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[9]_i_2 
       (.I0(mem__0[9]),
        .I1(RAE),
        .I2(N[9]),
        .O(A__0));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \DO_tristate_oe[9]_i_3 
       (.I0(O[1]),
        .I1(\DO_tristate_oe_reg[9] [1]),
        .I2(op[1]),
        .I3(op[0]),
        .O(\DO_tristate_oe[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DO_tristate_oe[9]_i_4 
       (.I0(mem[9]),
        .I1(RBE),
        .I2(N[9]),
        .O(B__0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \DO_tristate_oe[9]_i_5 
       (.I0(\mem_reg[2] [9]),
        .I1(\mem_reg[3] [9]),
        .I2(\mem_reg[0] [9]),
        .I3(RAA[1]),
        .I4(RAA[0]),
        .I5(\mem_reg[1] [9]),
        .O(mem__0[9]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \DO_tristate_oe[9]_i_6 
       (.I0(\mem_reg[2] [9]),
        .I1(\mem_reg[3] [9]),
        .I2(\mem_reg[0] [9]),
        .I3(RBA[1]),
        .I4(RBA[0]),
        .I5(\mem_reg[1] [9]),
        .O(mem[9]));
  LUT4 #(
    .INIT(16'h2F02)) 
    Q0_carry__0_i_1
       (.I0(B[8]),
        .I1(A[8]),
        .I2(A__0),
        .I3(B__0),
        .O(\DO_tristate_oe[9]_i_4_2 ));
  LUT4 #(
    .INIT(16'h9009)) 
    Q0_carry__0_i_2
       (.I0(A__0),
        .I1(B__0),
        .I2(A[8]),
        .I3(B[8]),
        .O(\DO_tristate_oe[8]_i_4_0 ));
  LUT4 #(
    .INIT(16'h4F04)) 
    Q0_carry_i_1
       (.I0(A[6]),
        .I1(B[6]),
        .I2(A[7]),
        .I3(B[7]),
        .O(DI[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Q0_carry_i_10
       (.I0(mem[0]),
        .I1(RBE),
        .I2(N[0]),
        .O(B[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    Q0_carry_i_11
       (.I0(\mem_reg[2] [0]),
        .I1(\mem_reg[3] [0]),
        .I2(\mem_reg[0] [0]),
        .I3(RBA[1]),
        .I4(RBA[0]),
        .I5(\mem_reg[1] [0]),
        .O(mem[0]));
  LUT4 #(
    .INIT(16'h4F04)) 
    Q0_carry_i_2
       (.I0(A[4]),
        .I1(B[4]),
        .I2(A[5]),
        .I3(B[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h4F04)) 
    Q0_carry_i_3
       (.I0(A[2]),
        .I1(B[2]),
        .I2(A[3]),
        .I3(B[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h4F04)) 
    Q0_carry_i_4
       (.I0(A[0]),
        .I1(B[0]),
        .I2(A[1]),
        .I3(B[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    Q0_carry_i_5
       (.I0(B[7]),
        .I1(A[7]),
        .I2(A[6]),
        .I3(B[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    Q0_carry_i_6
       (.I0(B[5]),
        .I1(A[5]),
        .I2(A[4]),
        .I3(B[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    Q0_carry_i_7
       (.I0(B[3]),
        .I1(A[3]),
        .I2(A[2]),
        .I3(B[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    Q0_carry_i_8
       (.I0(B[1]),
        .I1(A[1]),
        .I2(A[0]),
        .I3(B[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Q0_carry_i_9
       (.I0(mem__0[0]),
        .I1(RAE),
        .I2(N[0]),
        .O(A[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Q[3]_i_2 
       (.I0(reset_IBUF),
        .O(reset));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_1
       (.I0(mem__0[7]),
        .I1(RAE),
        .I2(N[7]),
        .O(\mem_reg[2][7]_0 [3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__0_i_10
       (.I0(\mem_reg[2] [6]),
        .I1(\mem_reg[3] [6]),
        .I2(\mem_reg[0] [6]),
        .I3(RAA[1]),
        .I4(RAA[0]),
        .I5(\mem_reg[1] [6]),
        .O(mem__0[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__0_i_11
       (.I0(\mem_reg[2] [5]),
        .I1(\mem_reg[3] [5]),
        .I2(\mem_reg[0] [5]),
        .I3(RAA[1]),
        .I4(RAA[0]),
        .I5(\mem_reg[1] [5]),
        .O(mem__0[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__0_i_12
       (.I0(\mem_reg[2] [4]),
        .I1(\mem_reg[3] [4]),
        .I2(\mem_reg[0] [4]),
        .I3(RAA[1]),
        .I4(RAA[0]),
        .I5(\mem_reg[1] [4]),
        .O(mem__0[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_1__0
       (.I0(mem__0[7]),
        .I1(RAE),
        .I2(N[7]),
        .O(\mem_reg[2][7]_1 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_2
       (.I0(mem__0[6]),
        .I1(RAE),
        .I2(N[6]),
        .O(\mem_reg[2][7]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_2__0
       (.I0(mem__0[6]),
        .I1(RAE),
        .I2(N[6]),
        .O(\mem_reg[2][7]_1 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_3
       (.I0(mem__0[5]),
        .I1(RAE),
        .I2(N[5]),
        .O(\mem_reg[2][7]_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_3__0
       (.I0(mem__0[5]),
        .I1(RAE),
        .I2(N[5]),
        .O(\mem_reg[2][7]_1 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_4
       (.I0(mem__0[4]),
        .I1(RAE),
        .I2(N[4]),
        .O(\mem_reg[2][7]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_4__0
       (.I0(mem__0[4]),
        .I1(RAE),
        .I2(N[4]),
        .O(\mem_reg[2][7]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_5
       (.I0(A[7]),
        .I1(B[7]),
        .O(\DO_tristate_oe[7]_i_4_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_5__0
       (.I0(B[7]),
        .I1(A[7]),
        .O(\DO_tristate_oe[7]_i_2_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_6
       (.I0(B[6]),
        .I1(A[6]),
        .O(\DO_tristate_oe[7]_i_2_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_6__0
       (.I0(A[6]),
        .I1(B[6]),
        .O(\DO_tristate_oe[7]_i_4_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_7
       (.I0(A[5]),
        .I1(B[5]),
        .O(\DO_tristate_oe[7]_i_4_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_7__0
       (.I0(B[5]),
        .I1(A[5]),
        .O(\DO_tristate_oe[7]_i_2_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_8
       (.I0(B[4]),
        .I1(A[4]),
        .O(\DO_tristate_oe[7]_i_2_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_8__0
       (.I0(A[4]),
        .I1(B[4]),
        .O(\DO_tristate_oe[7]_i_4_0 [0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__0_i_9
       (.I0(\mem_reg[2] [7]),
        .I1(\mem_reg[3] [7]),
        .I2(\mem_reg[0] [7]),
        .I3(RAA[1]),
        .I4(RAA[0]),
        .I5(\mem_reg[1] [7]),
        .O(mem__0[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_1
       (.I0(mem__0[8]),
        .I1(RAE),
        .I2(N[8]),
        .O(\mem_reg[2][8]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_1__0
       (.I0(mem__0[8]),
        .I1(RAE),
        .I2(N[8]),
        .O(\mem_reg[2][8]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2
       (.I0(A__0),
        .I1(B__0),
        .O(\DO_tristate_oe[9]_i_4_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__0
       (.I0(A__0),
        .I1(B__0),
        .O(\DO_tristate_oe[9]_i_4_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3
       (.I0(B[8]),
        .I1(A[8]),
        .O(\DO_tristate_oe[9]_i_4_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3__0
       (.I0(A[8]),
        .I1(B[8]),
        .O(\DO_tristate_oe[9]_i_4_1 [0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry__1_i_4
       (.I0(\mem_reg[2] [8]),
        .I1(\mem_reg[3] [8]),
        .I2(\mem_reg[0] [8]),
        .I3(RAA[1]),
        .I4(RAA[0]),
        .I5(\mem_reg[1] [8]),
        .O(mem__0[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_1
       (.I0(mem__0[3]),
        .I1(RAE),
        .I2(N[3]),
        .O(\mem_reg[2][3]_0 [3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry_i_10
       (.I0(\mem_reg[2] [2]),
        .I1(\mem_reg[3] [2]),
        .I2(\mem_reg[0] [2]),
        .I3(RAA[1]),
        .I4(RAA[0]),
        .I5(\mem_reg[1] [2]),
        .O(mem__0[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry_i_11
       (.I0(\mem_reg[2] [1]),
        .I1(\mem_reg[3] [1]),
        .I2(\mem_reg[0] [1]),
        .I3(RAA[1]),
        .I4(RAA[0]),
        .I5(\mem_reg[1] [1]),
        .O(mem__0[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry_i_12
       (.I0(\mem_reg[2] [0]),
        .I1(\mem_reg[3] [0]),
        .I2(\mem_reg[0] [0]),
        .I3(RAA[1]),
        .I4(RAA[0]),
        .I5(\mem_reg[1] [0]),
        .O(mem__0[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_1__0
       (.I0(mem__0[3]),
        .I1(RAE),
        .I2(N[3]),
        .O(\mem_reg[2][3]_1 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_2
       (.I0(mem__0[2]),
        .I1(RAE),
        .I2(N[2]),
        .O(\mem_reg[2][3]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_2__0
       (.I0(mem__0[2]),
        .I1(RAE),
        .I2(N[2]),
        .O(\mem_reg[2][3]_1 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_3
       (.I0(mem__0[1]),
        .I1(RAE),
        .I2(N[1]),
        .O(\mem_reg[2][3]_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_3__0
       (.I0(mem__0[1]),
        .I1(RAE),
        .I2(N[1]),
        .O(\mem_reg[2][3]_1 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_4
       (.I0(mem__0[0]),
        .I1(RAE),
        .I2(N[0]),
        .O(\mem_reg[2][3]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_4__0
       (.I0(mem__0[0]),
        .I1(RAE),
        .I2(N[0]),
        .O(\mem_reg[2][3]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5
       (.I0(A[3]),
        .I1(B[3]),
        .O(\DO_tristate_oe[3]_i_4_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_5__0
       (.I0(B[3]),
        .I1(A[3]),
        .O(\DO_tristate_oe[3]_i_2_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_6
       (.I0(B[2]),
        .I1(A[2]),
        .O(\DO_tristate_oe[3]_i_2_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_6__0
       (.I0(A[2]),
        .I1(B[2]),
        .O(\DO_tristate_oe[3]_i_4_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_7
       (.I0(A[1]),
        .I1(B[1]),
        .O(\DO_tristate_oe[3]_i_4_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_7__0
       (.I0(B[1]),
        .I1(A[1]),
        .O(\DO_tristate_oe[3]_i_2_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_8
       (.I0(B[0]),
        .I1(A[0]),
        .O(\DO_tristate_oe[3]_i_2_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_8__0
       (.I0(A[0]),
        .I1(B[0]),
        .O(\DO_tristate_oe[3]_i_4_0 [0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    i__carry_i_9
       (.I0(\mem_reg[2] [3]),
        .I1(\mem_reg[3] [3]),
        .I2(\mem_reg[0] [3]),
        .I3(RAA[1]),
        .I4(RAA[0]),
        .I5(\mem_reg[1] [3]),
        .O(mem__0[3]));
  LUT4 #(
    .INIT(16'h0008)) 
    \mem[0][9]_i_1 
       (.I0(IRdecode),
        .I1(WE),
        .I2(WA[1]),
        .I3(WA[0]),
        .O(mem_0));
  LUT4 #(
    .INIT(16'h0800)) 
    \mem[1][9]_i_1 
       (.I0(IRdecode),
        .I1(WE),
        .I2(WA[1]),
        .I3(WA[0]),
        .O(\mem[1][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFEEEAAAAAAAA)) 
    \mem[2][0]_i_1 
       (.I0(\mem[2][0]_i_2_n_0 ),
        .I1(\DO_tristate_oe[0]_i_2_n_0 ),
        .I2(\DO_tristate_oe[0]_i_3_n_0 ),
        .I3(op[2]),
        .I4(op[1]),
        .I5(\mem[2][0]_i_3_n_0 ),
        .O(mux_result[0]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \mem[2][0]_i_2 
       (.I0(DI_IBUF[0]),
        .I1(N[0]),
        .I2(IE[0]),
        .I3(IE[1]),
        .O(\mem[2][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mem[2][0]_i_3 
       (.I0(IE[1]),
        .I1(IE[0]),
        .O(\mem[2][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \mem[2][1]_i_1 
       (.I0(N[1]),
        .I1(DI_IBUF[1]),
        .I2(D[1]),
        .I3(IE[1]),
        .I4(IE[0]),
        .O(mux_result[1]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \mem[2][2]_i_1 
       (.I0(N[2]),
        .I1(DI_IBUF[2]),
        .I2(D[2]),
        .I3(IE[1]),
        .I4(IE[0]),
        .O(mux_result[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \mem[2][3]_i_1 
       (.I0(N[3]),
        .I1(DI_IBUF[3]),
        .I2(D[3]),
        .I3(IE[1]),
        .I4(IE[0]),
        .O(mux_result[3]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \mem[2][4]_i_1 
       (.I0(N[4]),
        .I1(DI_IBUF[4]),
        .I2(D[4]),
        .I3(IE[1]),
        .I4(IE[0]),
        .O(mux_result[4]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \mem[2][5]_i_1 
       (.I0(N[5]),
        .I1(DI_IBUF[5]),
        .I2(D[5]),
        .I3(IE[1]),
        .I4(IE[0]),
        .O(mux_result[5]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \mem[2][6]_i_1 
       (.I0(N[6]),
        .I1(DI_IBUF[6]),
        .I2(D[6]),
        .I3(IE[1]),
        .I4(IE[0]),
        .O(mux_result[6]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \mem[2][7]_i_1 
       (.I0(N[7]),
        .I1(DI_IBUF[7]),
        .I2(D[7]),
        .I3(IE[1]),
        .I4(IE[0]),
        .O(mux_result[7]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \mem[2][8]_i_1 
       (.I0(N[8]),
        .I1(DI_IBUF[8]),
        .I2(D[8]),
        .I3(IE[1]),
        .I4(IE[0]),
        .O(mux_result[8]));
  LUT4 #(
    .INIT(16'h0800)) 
    \mem[2][9]_i_1 
       (.I0(IRdecode),
        .I1(WE),
        .I2(WA[0]),
        .I3(WA[1]),
        .O(\mem[2][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \mem[2][9]_i_2 
       (.I0(N[9]),
        .I1(DI_IBUF[9]),
        .I2(D[9]),
        .I3(IE[1]),
        .I4(IE[0]),
        .O(mux_result[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    \mem[3][9]_i_1 
       (.I0(IRdecode),
        .I1(WE),
        .I2(WA[1]),
        .I3(WA[0]),
        .O(\mem[3][9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][0] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(mem_0),
        .CLR(reset),
        .D(mux_result[0]),
        .Q(\mem_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][1] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(mem_0),
        .CLR(reset),
        .D(mux_result[1]),
        .Q(\mem_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][2] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(mem_0),
        .CLR(reset),
        .D(mux_result[2]),
        .Q(\mem_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][3] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(mem_0),
        .CLR(reset),
        .D(mux_result[3]),
        .Q(\mem_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][4] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(mem_0),
        .CLR(reset),
        .D(mux_result[4]),
        .Q(\mem_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][5] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(mem_0),
        .CLR(reset),
        .D(mux_result[5]),
        .Q(\mem_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][6] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(mem_0),
        .CLR(reset),
        .D(mux_result[6]),
        .Q(\mem_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][7] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(mem_0),
        .CLR(reset),
        .D(mux_result[7]),
        .Q(\mem_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][8] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(mem_0),
        .CLR(reset),
        .D(mux_result[8]),
        .Q(\mem_reg[0] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][9] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(mem_0),
        .CLR(reset),
        .D(mux_result[9]),
        .Q(\mem_reg[0] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[1][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[0]),
        .Q(\mem_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][1] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[1][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[1]),
        .Q(\mem_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][2] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[1][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[2]),
        .Q(\mem_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][3] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[1][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[3]),
        .Q(\mem_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][4] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[1][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[4]),
        .Q(\mem_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][5] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[1][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[5]),
        .Q(\mem_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][6] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[1][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[6]),
        .Q(\mem_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][7] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[1][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[7]),
        .Q(\mem_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][8] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[1][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[8]),
        .Q(\mem_reg[1] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][9] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[1][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[9]),
        .Q(\mem_reg[1] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[2][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[0]),
        .Q(\mem_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][1] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[2][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[1]),
        .Q(\mem_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][2] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[2][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[2]),
        .Q(\mem_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][3] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[2][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[3]),
        .Q(\mem_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][4] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[2][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[4]),
        .Q(\mem_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][5] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[2][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[5]),
        .Q(\mem_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][6] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[2][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[6]),
        .Q(\mem_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][7] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[2][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[7]),
        .Q(\mem_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][8] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[2][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[8]),
        .Q(\mem_reg[2] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][9] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[2][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[9]),
        .Q(\mem_reg[2] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[3][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[0]),
        .Q(\mem_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][1] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[3][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[1]),
        .Q(\mem_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][2] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[3][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[2]),
        .Q(\mem_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][3] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[3][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[3]),
        .Q(\mem_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][4] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[3][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[4]),
        .Q(\mem_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][5] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[3][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[5]),
        .Q(\mem_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][6] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[3][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[6]),
        .Q(\mem_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][7] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[3][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[7]),
        .Q(\mem_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][8] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[3][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[8]),
        .Q(\mem_reg[3] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][9] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(\mem[3][9]_i_1_n_0 ),
        .CLR(reset),
        .D(mux_result[9]),
        .Q(\mem_reg[3] [9]));
endmodule

module ROM
   (Q,
    D,
    E);
  output [1:0]Q;
  input [1:0]D;
  input [0:0]E;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
endmodule

module clk_divider
   (clk_out_1_OBUF,
    clk_IBUF_BUFG,
    clk_out_reg_0);
  output clk_out_1_OBUF;
  input clk_IBUF_BUFG;
  input clk_out_reg_0;

  wire clk_IBUF_BUFG;
  wire clk_out_1_OBUF;
  wire clk_out_i_1_n_0;
  wire clk_out_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    clk_out_i_1
       (.I0(clk_out_1_OBUF),
        .O(clk_out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clk_out_reg_0),
        .D(clk_out_i_1_n_0),
        .Q(clk_out_1_OBUF));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module clk_divider__parameterized0
   (clk_out,
    clk_IBUF_BUFG,
    \cntr_reg[1]_C_0 ,
    reset_IBUF);
  output clk_out;
  input clk_IBUF_BUFG;
  input \cntr_reg[1]_C_0 ;
  input reset_IBUF;

  wire clk_IBUF_BUFG;
  wire clk_out;
  wire clk_out_i_1__0_n_0;
  wire cntr2_carry__0_n_0;
  wire cntr2_carry__0_n_1;
  wire cntr2_carry__0_n_2;
  wire cntr2_carry__0_n_3;
  wire cntr2_carry__0_n_4;
  wire cntr2_carry__0_n_5;
  wire cntr2_carry__0_n_6;
  wire cntr2_carry__0_n_7;
  wire cntr2_carry__1_n_0;
  wire cntr2_carry__1_n_1;
  wire cntr2_carry__1_n_2;
  wire cntr2_carry__1_n_3;
  wire cntr2_carry__1_n_4;
  wire cntr2_carry__1_n_5;
  wire cntr2_carry__1_n_6;
  wire cntr2_carry__1_n_7;
  wire cntr2_carry__2_n_0;
  wire cntr2_carry__2_n_2;
  wire cntr2_carry__2_n_3;
  wire cntr2_carry__2_n_5;
  wire cntr2_carry__2_n_6;
  wire cntr2_carry__2_n_7;
  wire cntr2_carry_n_0;
  wire cntr2_carry_n_1;
  wire cntr2_carry_n_2;
  wire cntr2_carry_n_3;
  wire cntr2_carry_n_4;
  wire cntr2_carry_n_5;
  wire cntr2_carry_n_6;
  wire cntr2_carry_n_7;
  wire \cntr[0]_C_i_1_n_0 ;
  wire \cntr[10]_C_i_1_n_0 ;
  wire \cntr[11]_C_i_1_n_0 ;
  wire \cntr[12]_C_i_1_n_0 ;
  wire \cntr[13]_C_i_1_n_0 ;
  wire \cntr[14]_C_i_1_n_0 ;
  wire \cntr[15]_C_i_1_n_0 ;
  wire \cntr[15]_C_i_2_n_0 ;
  wire \cntr[15]_C_i_3_n_0 ;
  wire \cntr[15]_C_i_4_n_0 ;
  wire \cntr[1]_C_i_1_n_0 ;
  wire \cntr[2]_C_i_1_n_0 ;
  wire \cntr[3]_C_i_1_n_0 ;
  wire \cntr[4]_C_i_1_n_0 ;
  wire \cntr[5]_C_i_1_n_0 ;
  wire \cntr[6]_C_i_1_n_0 ;
  wire \cntr[7]_C_i_1_n_0 ;
  wire \cntr[8]_C_i_1_n_0 ;
  wire \cntr[9]_C_i_1_n_0 ;
  wire \cntr_reg[0]_C_n_0 ;
  wire \cntr_reg[10]_C_n_0 ;
  wire \cntr_reg[11]_C_n_0 ;
  wire \cntr_reg[12]_C_n_0 ;
  wire \cntr_reg[13]_C_n_0 ;
  wire \cntr_reg[14]_C_n_0 ;
  wire \cntr_reg[15]_C_n_0 ;
  wire \cntr_reg[1]_C_0 ;
  wire \cntr_reg[1]_C_n_0 ;
  wire \cntr_reg[2]_C_n_0 ;
  wire \cntr_reg[3]_C_n_0 ;
  wire \cntr_reg[4]_C_n_0 ;
  wire \cntr_reg[5]_C_n_0 ;
  wire \cntr_reg[6]_C_n_0 ;
  wire \cntr_reg[7]_C_n_0 ;
  wire \cntr_reg[8]_C_n_0 ;
  wire \cntr_reg[9]_C_n_0 ;
  wire reset_IBUF;
  wire [2:2]NLW_cntr2_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_cntr2_carry__2_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    clk_out_i_1__0
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(clk_out),
        .O(clk_out_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(clk_out_i_1__0_n_0),
        .Q(clk_out));
  CARRY4 cntr2_carry
       (.CI(1'b0),
        .CO({cntr2_carry_n_0,cntr2_carry_n_1,cntr2_carry_n_2,cntr2_carry_n_3}),
        .CYINIT(\cntr_reg[0]_C_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr2_carry_n_4,cntr2_carry_n_5,cntr2_carry_n_6,cntr2_carry_n_7}),
        .S({\cntr_reg[4]_C_n_0 ,\cntr_reg[3]_C_n_0 ,\cntr_reg[2]_C_n_0 ,\cntr_reg[1]_C_n_0 }));
  CARRY4 cntr2_carry__0
       (.CI(cntr2_carry_n_0),
        .CO({cntr2_carry__0_n_0,cntr2_carry__0_n_1,cntr2_carry__0_n_2,cntr2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr2_carry__0_n_4,cntr2_carry__0_n_5,cntr2_carry__0_n_6,cntr2_carry__0_n_7}),
        .S({\cntr_reg[8]_C_n_0 ,\cntr_reg[7]_C_n_0 ,\cntr_reg[6]_C_n_0 ,\cntr_reg[5]_C_n_0 }));
  CARRY4 cntr2_carry__1
       (.CI(cntr2_carry__0_n_0),
        .CO({cntr2_carry__1_n_0,cntr2_carry__1_n_1,cntr2_carry__1_n_2,cntr2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr2_carry__1_n_4,cntr2_carry__1_n_5,cntr2_carry__1_n_6,cntr2_carry__1_n_7}),
        .S({\cntr_reg[12]_C_n_0 ,\cntr_reg[11]_C_n_0 ,\cntr_reg[10]_C_n_0 ,\cntr_reg[9]_C_n_0 }));
  CARRY4 cntr2_carry__2
       (.CI(cntr2_carry__1_n_0),
        .CO({cntr2_carry__2_n_0,NLW_cntr2_carry__2_CO_UNCONNECTED[2],cntr2_carry__2_n_2,cntr2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cntr2_carry__2_O_UNCONNECTED[3],cntr2_carry__2_n_5,cntr2_carry__2_n_6,cntr2_carry__2_n_7}),
        .S({1'b1,\cntr_reg[15]_C_n_0 ,\cntr_reg[14]_C_n_0 ,\cntr_reg[13]_C_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cntr[0]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(reset_IBUF),
        .I2(\cntr_reg[0]_C_n_0 ),
        .O(\cntr[0]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[10]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry__1_n_6),
        .I2(reset_IBUF),
        .O(\cntr[10]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[11]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry__1_n_5),
        .I2(reset_IBUF),
        .O(\cntr[11]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[12]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry__1_n_4),
        .I2(reset_IBUF),
        .O(\cntr[12]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[13]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry__2_n_7),
        .I2(reset_IBUF),
        .O(\cntr[13]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[14]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry__2_n_6),
        .I2(reset_IBUF),
        .O(\cntr[14]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cntr[15]_C_i_1 
       (.I0(cntr2_carry__2_n_5),
        .I1(reset_IBUF),
        .I2(\cntr[15]_C_i_2_n_0 ),
        .O(\cntr[15]_C_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFAAAAAA)) 
    \cntr[15]_C_i_2 
       (.I0(cntr2_carry__2_n_0),
        .I1(\cntr[15]_C_i_3_n_0 ),
        .I2(\cntr[15]_C_i_4_n_0 ),
        .I3(cntr2_carry__2_n_6),
        .I4(cntr2_carry__2_n_5),
        .O(\cntr[15]_C_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntr[15]_C_i_3 
       (.I0(cntr2_carry__2_n_7),
        .I1(cntr2_carry__1_n_4),
        .I2(cntr2_carry__1_n_5),
        .I3(cntr2_carry__1_n_6),
        .O(\cntr[15]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h777777777F7F7FFF)) 
    \cntr[15]_C_i_4 
       (.I0(cntr2_carry__1_n_7),
        .I1(cntr2_carry__0_n_4),
        .I2(cntr2_carry__0_n_6),
        .I3(cntr2_carry__0_n_7),
        .I4(cntr2_carry_n_4),
        .I5(cntr2_carry__0_n_5),
        .O(\cntr[15]_C_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[1]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry_n_7),
        .I2(reset_IBUF),
        .O(\cntr[1]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[2]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry_n_6),
        .I2(reset_IBUF),
        .O(\cntr[2]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[3]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry_n_5),
        .I2(reset_IBUF),
        .O(\cntr[3]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[4]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry_n_4),
        .I2(reset_IBUF),
        .O(\cntr[4]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[5]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry__0_n_7),
        .I2(reset_IBUF),
        .O(\cntr[5]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[6]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry__0_n_6),
        .I2(reset_IBUF),
        .O(\cntr[6]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[7]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry__0_n_5),
        .I2(reset_IBUF),
        .O(\cntr[7]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[8]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry__0_n_4),
        .I2(reset_IBUF),
        .O(\cntr[8]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \cntr[9]_C_i_1 
       (.I0(\cntr[15]_C_i_2_n_0 ),
        .I1(cntr2_carry__1_n_7),
        .I2(reset_IBUF),
        .O(\cntr[9]_C_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[0]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[0]_C_i_1_n_0 ),
        .Q(\cntr_reg[0]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[10]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[10]_C_i_1_n_0 ),
        .Q(\cntr_reg[10]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[11]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[11]_C_i_1_n_0 ),
        .Q(\cntr_reg[11]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[12]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[12]_C_i_1_n_0 ),
        .Q(\cntr_reg[12]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[13]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[13]_C_i_1_n_0 ),
        .Q(\cntr_reg[13]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[14]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[14]_C_i_1_n_0 ),
        .Q(\cntr_reg[14]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[15]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[15]_C_i_1_n_0 ),
        .Q(\cntr_reg[15]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[1]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[1]_C_i_1_n_0 ),
        .Q(\cntr_reg[1]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[2]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[2]_C_i_1_n_0 ),
        .Q(\cntr_reg[2]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[3]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[3]_C_i_1_n_0 ),
        .Q(\cntr_reg[3]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[4]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[4]_C_i_1_n_0 ),
        .Q(\cntr_reg[4]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[5]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[5]_C_i_1_n_0 ),
        .Q(\cntr_reg[5]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[6]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[6]_C_i_1_n_0 ),
        .Q(\cntr_reg[6]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[7]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[7]_C_i_1_n_0 ),
        .Q(\cntr_reg[7]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[8]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[8]_C_i_1_n_0 ),
        .Q(\cntr_reg[8]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[9]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[9]_C_i_1_n_0 ),
        .Q(\cntr_reg[9]_C_n_0 ));
endmodule

module decode
   (IR,
    reset,
    halt,
    WE,
    WA,
    RAE,
    RAA,
    RBE,
    RBA,
    op,
    IE,
    N,
    ZE,
    OE);
  input [9:0]IR;
  input reset;
  output halt;
  output WE;
  output [1:0]WA;
  output RAE;
  output [1:0]RAA;
  output RBE;
  output [1:0]RBA;
  output [2:0]op;
  output [1:0]IE;
  output [9:0]N;
  output ZE;
  output OE;

  wire \<const0> ;
  wire [1:0]IE;
  wire [9:0]IR;
  wire [3:0]\^N ;
  wire OE;
  wire [1:0]RAA;
  wire \RAA[0]_INST_0_i_1_n_0 ;
  wire \RAA[1]_INST_0_i_1_n_0 ;
  wire \RAA[1]_INST_0_i_2_n_0 ;
  wire RAE;
  wire [1:0]RBA;
  wire RBE;
  wire [1:0]WA;
  wire \WA[0]_INST_0_i_1_n_0 ;
  wire \WA[1]_INST_0_i_1_n_0 ;
  wire \WA[1]_INST_0_i_2_n_0 ;
  wire WE;
  wire ZE;
  wire halt;
  wire [2:0]op;
  wire reset;

  assign N[9] = \<const0> ;
  assign N[8] = \<const0> ;
  assign N[7] = \<const0> ;
  assign N[6] = \<const0> ;
  assign N[5] = \<const0> ;
  assign N[4] = \<const0> ;
  assign N[3:0] = \^N [3:0];
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h5557FFD7)) 
    \IE[0]_INST_0 
       (.I0(reset),
        .I1(IR[6]),
        .I2(IR[8]),
        .I3(IR[7]),
        .I4(IR[9]),
        .O(IE[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFF7)) 
    \IE[1]_INST_0 
       (.I0(reset),
        .I1(IR[7]),
        .I2(IR[6]),
        .I3(IR[8]),
        .I4(IR[9]),
        .O(IE[1]));
  LUT6 #(
    .INIT(64'h8000008000800000)) 
    \N[0]_INST_0 
       (.I0(reset),
        .I1(IR[0]),
        .I2(IR[9]),
        .I3(IR[8]),
        .I4(IR[7]),
        .I5(IR[6]),
        .O(\^N [0]));
  LUT6 #(
    .INIT(64'h8000008000800000)) 
    \N[1]_INST_0 
       (.I0(reset),
        .I1(IR[1]),
        .I2(IR[9]),
        .I3(IR[8]),
        .I4(IR[7]),
        .I5(IR[6]),
        .O(\^N [1]));
  LUT6 #(
    .INIT(64'h8000008000800000)) 
    \N[2]_INST_0 
       (.I0(reset),
        .I1(IR[2]),
        .I2(IR[9]),
        .I3(IR[8]),
        .I4(IR[7]),
        .I5(IR[6]),
        .O(\^N [2]));
  LUT6 #(
    .INIT(64'h8000008000800000)) 
    \N[3]_INST_0 
       (.I0(reset),
        .I1(IR[3]),
        .I2(IR[9]),
        .I3(IR[8]),
        .I4(IR[7]),
        .I5(IR[6]),
        .O(\^N [3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    OE_INST_0
       (.I0(reset),
        .I1(IR[7]),
        .I2(IR[6]),
        .I3(IR[8]),
        .I4(IR[9]),
        .O(OE));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \RAA[0]_INST_0 
       (.I0(reset),
        .I1(\RAA[1]_INST_0_i_1_n_0 ),
        .I2(IR[0]),
        .I3(IR[9]),
        .I4(\RAA[0]_INST_0_i_1_n_0 ),
        .O(RAA[0]));
  LUT5 #(
    .INIT(32'h5FED0048)) 
    \RAA[0]_INST_0_i_1 
       (.I0(IR[6]),
        .I1(IR[4]),
        .I2(IR[7]),
        .I3(IR[8]),
        .I4(IR[2]),
        .O(\RAA[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA800080)) 
    \RAA[1]_INST_0 
       (.I0(reset),
        .I1(\RAA[1]_INST_0_i_1_n_0 ),
        .I2(IR[1]),
        .I3(IR[9]),
        .I4(\RAA[1]_INST_0_i_2_n_0 ),
        .O(RAA[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \RAA[1]_INST_0_i_1 
       (.I0(IR[6]),
        .I1(IR[8]),
        .I2(IR[7]),
        .O(\RAA[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h5FED0048)) 
    \RAA[1]_INST_0_i_2 
       (.I0(IR[6]),
        .I1(IR[5]),
        .I2(IR[7]),
        .I3(IR[8]),
        .I4(IR[3]),
        .O(\RAA[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h20A2A8A8)) 
    RAE_INST_0
       (.I0(reset),
        .I1(IR[6]),
        .I2(IR[9]),
        .I3(IR[7]),
        .I4(IR[8]),
        .O(RAE));
  LUT6 #(
    .INIT(64'h28A2000000000000)) 
    \RBA[0]_INST_0 
       (.I0(reset),
        .I1(IR[6]),
        .I2(IR[8]),
        .I3(IR[7]),
        .I4(IR[9]),
        .I5(IR[0]),
        .O(RBA[0]));
  LUT6 #(
    .INIT(64'h28A2000000000000)) 
    \RBA[1]_INST_0 
       (.I0(reset),
        .I1(IR[6]),
        .I2(IR[8]),
        .I3(IR[7]),
        .I4(IR[9]),
        .I5(IR[1]),
        .O(RBA[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h28A20000)) 
    RBE_INST_0
       (.I0(reset),
        .I1(IR[6]),
        .I2(IR[8]),
        .I3(IR[7]),
        .I4(IR[9]),
        .O(RBE));
  LUT5 #(
    .INIT(32'hA8080808)) 
    \WA[0]_INST_0 
       (.I0(reset),
        .I1(\WA[0]_INST_0_i_1_n_0 ),
        .I2(IR[9]),
        .I3(\WA[1]_INST_0_i_2_n_0 ),
        .I4(IR[4]),
        .O(WA[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h054A0040)) 
    \WA[0]_INST_0_i_1 
       (.I0(IR[6]),
        .I1(IR[0]),
        .I2(IR[7]),
        .I3(IR[8]),
        .I4(IR[2]),
        .O(\WA[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8080808)) 
    \WA[1]_INST_0 
       (.I0(reset),
        .I1(\WA[1]_INST_0_i_1_n_0 ),
        .I2(IR[9]),
        .I3(\WA[1]_INST_0_i_2_n_0 ),
        .I4(IR[5]),
        .O(WA[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h054A0040)) 
    \WA[1]_INST_0_i_1 
       (.I0(IR[6]),
        .I1(IR[1]),
        .I2(IR[7]),
        .I3(IR[8]),
        .I4(IR[3]),
        .O(\WA[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \WA[1]_INST_0_i_2 
       (.I0(IR[7]),
        .I1(IR[6]),
        .I2(IR[8]),
        .O(\WA[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAA80228)) 
    WE_INST_0
       (.I0(reset),
        .I1(IR[6]),
        .I2(IR[7]),
        .I3(IR[8]),
        .I4(IR[9]),
        .O(WE));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20A2A0A0)) 
    ZE_INST_0
       (.I0(reset),
        .I1(IR[6]),
        .I2(IR[9]),
        .I3(IR[7]),
        .I4(IR[8]),
        .O(ZE));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    halt_INST_0
       (.I0(reset),
        .I1(IR[7]),
        .I2(IR[6]),
        .I3(IR[8]),
        .I4(IR[9]),
        .O(halt));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h77D7F7D7)) 
    \op[0]_INST_0 
       (.I0(reset),
        .I1(IR[9]),
        .I2(IR[6]),
        .I3(IR[8]),
        .I4(IR[7]),
        .O(op[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF5FF7DDF)) 
    \op[1]_INST_0 
       (.I0(reset),
        .I1(IR[7]),
        .I2(IR[8]),
        .I3(IR[9]),
        .I4(IR[6]),
        .O(op[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8FFF)) 
    \op[2]_INST_0 
       (.I0(IR[8]),
        .I1(IR[7]),
        .I2(reset),
        .I3(IR[9]),
        .O(op[2]));
endmodule

module execute
   (\digit_reg[2] ,
    \digit_reg[3] ,
    \digit_reg[3]_0 ,
    \digit_reg[2]_0 ,
    \digit_reg[2]_1 ,
    \digit_reg[2]_2 ,
    \digit_reg[2]_3 ,
    \digit_reg[2]_4 ,
    \digit_reg[2]_5 ,
    \digit_reg[2]_6 ,
    reset,
    \digit_reg[2]_7 ,
    \digit_reg[2]_8 ,
    \digit_reg[2]_9 ,
    \digit_reg[2]_10 ,
    \DO_OBUFT[9]_inst_i_1 ,
    \DO_tristate_oe_reg[9]_0 ,
    \DO_OBUFT[9]_inst_i_1_0 ,
    Q,
    reset_IBUF,
    \DO_TRI[0] ,
    E,
    clk_out_1_OBUF_BUFG,
    IRdecode,
    WE,
    WA,
    N,
    DI_IBUF,
    IE,
    op,
    RBE,
    RBA,
    RAE,
    RAA);
  output \digit_reg[2] ;
  output \digit_reg[3] ;
  output \digit_reg[3]_0 ;
  output \digit_reg[2]_0 ;
  output \digit_reg[2]_1 ;
  output \digit_reg[2]_2 ;
  output \digit_reg[2]_3 ;
  output \digit_reg[2]_4 ;
  output \digit_reg[2]_5 ;
  output \digit_reg[2]_6 ;
  output reset;
  output \digit_reg[2]_7 ;
  output \digit_reg[2]_8 ;
  output \digit_reg[2]_9 ;
  output \digit_reg[2]_10 ;
  output \DO_OBUFT[9]_inst_i_1 ;
  output [9:0]\DO_tristate_oe_reg[9]_0 ;
  output \DO_OBUFT[9]_inst_i_1_0 ;
  input [1:0]Q;
  input reset_IBUF;
  input \DO_TRI[0] ;
  input [0:0]E;
  input clk_out_1_OBUF_BUFG;
  input IRdecode;
  input WE;
  input [1:0]WA;
  input [9:0]N;
  input [9:0]DI_IBUF;
  input [1:0]IE;
  input [2:0]op;
  input RBE;
  input [1:0]RBA;
  input RAE;
  input [1:0]RAA;

  wire [9:0]DI_IBUF;
  wire \DO_OBUFT[9]_inst_i_1 ;
  wire \DO_OBUFT[9]_inst_i_1_0 ;
  wire \DO_TRI[0] ;
  wire [9:0]\DO_tristate_oe_reg[9]_0 ;
  wire [0:0]E;
  wire [1:0]IE;
  wire IRdecode;
  wire [9:0]N;
  wire [1:0]Q;
  wire [9:0]Q_0;
  wire [1:0]RAA;
  wire RAE;
  wire [1:0]RBA;
  wire RBE;
  wire [1:0]WA;
  wire WE;
  wire alu_n_10;
  wire alu_n_11;
  wire alu_n_4;
  wire alu_n_5;
  wire alu_n_6;
  wire alu_n_7;
  wire alu_n_8;
  wire alu_n_9;
  wire clk_out_1_OBUF_BUFG;
  wire [9:8]data1;
  wire [9:8]data2;
  wire \digit_reg[2] ;
  wire \digit_reg[2]_0 ;
  wire \digit_reg[2]_1 ;
  wire \digit_reg[2]_10 ;
  wire \digit_reg[2]_2 ;
  wire \digit_reg[2]_3 ;
  wire \digit_reg[2]_4 ;
  wire \digit_reg[2]_5 ;
  wire \digit_reg[2]_6 ;
  wire \digit_reg[2]_7 ;
  wire \digit_reg[2]_8 ;
  wire \digit_reg[2]_9 ;
  wire \digit_reg[3] ;
  wire \digit_reg[3]_0 ;
  wire [2:0]op;
  wire regfile_n_1;
  wire regfile_n_10;
  wire regfile_n_11;
  wire regfile_n_12;
  wire regfile_n_13;
  wire regfile_n_14;
  wire regfile_n_15;
  wire regfile_n_16;
  wire regfile_n_17;
  wire regfile_n_18;
  wire regfile_n_19;
  wire regfile_n_2;
  wire regfile_n_20;
  wire regfile_n_21;
  wire regfile_n_22;
  wire regfile_n_23;
  wire regfile_n_24;
  wire regfile_n_25;
  wire regfile_n_3;
  wire regfile_n_36;
  wire regfile_n_37;
  wire regfile_n_38;
  wire regfile_n_39;
  wire regfile_n_4;
  wire regfile_n_40;
  wire regfile_n_41;
  wire regfile_n_42;
  wire regfile_n_43;
  wire regfile_n_44;
  wire regfile_n_45;
  wire regfile_n_46;
  wire regfile_n_47;
  wire regfile_n_48;
  wire regfile_n_49;
  wire regfile_n_5;
  wire regfile_n_50;
  wire regfile_n_51;
  wire regfile_n_52;
  wire regfile_n_53;
  wire regfile_n_54;
  wire regfile_n_55;
  wire regfile_n_56;
  wire regfile_n_57;
  wire regfile_n_58;
  wire regfile_n_6;
  wire regfile_n_7;
  wire regfile_n_8;
  wire regfile_n_9;
  wire reset;
  wire reset_IBUF;
  wire \seg_data[7]_i_10_n_0 ;
  wire \seg_data[7]_i_11_n_0 ;
  wire \seg_data[7]_i_12_n_0 ;
  wire \seg_data[7]_i_5_n_0 ;
  wire \seg_data[7]_i_6_n_0 ;
  wire \seg_data[7]_i_7_n_0 ;
  wire \seg_data[7]_i_8_n_0 ;
  wire \seg_data[7]_i_9_n_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[0] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(E),
        .D(Q_0[0]),
        .Q(\DO_tristate_oe_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[1] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(E),
        .D(Q_0[1]),
        .Q(\DO_tristate_oe_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[2] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(E),
        .D(Q_0[2]),
        .Q(\DO_tristate_oe_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[3] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(E),
        .D(Q_0[3]),
        .Q(\DO_tristate_oe_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[4] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(E),
        .D(Q_0[4]),
        .Q(\DO_tristate_oe_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[5] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(E),
        .D(Q_0[5]),
        .Q(\DO_tristate_oe_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[6] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(E),
        .D(Q_0[6]),
        .Q(\DO_tristate_oe_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[7] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(E),
        .D(Q_0[7]),
        .Q(\DO_tristate_oe_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[8] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(E),
        .D(Q_0[8]),
        .Q(\DO_tristate_oe_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DO_tristate_oe_reg[9] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(E),
        .D(Q_0[9]),
        .Q(\DO_tristate_oe_reg[9]_0 [9]),
        .R(1'b0));
  ALU alu
       (.DI({regfile_n_37,regfile_n_38,regfile_n_39,regfile_n_40}),
        .\DO_tristate_oe[0]_i_4_0 (regfile_n_36),
        .\DO_tristate_oe[0]_i_4_1 (regfile_n_21),
        .\DO_tristate_oe[0]_i_4_2 ({regfile_n_41,regfile_n_42,regfile_n_43,regfile_n_44}),
        .\DO_tristate_oe[0]_i_4_3 ({regfile_n_17,regfile_n_18,regfile_n_19,regfile_n_20}),
        .\DO_tristate_oe[0]_i_4_4 ({regfile_n_50,regfile_n_51,regfile_n_52,regfile_n_53}),
        .\DO_tristate_oe[0]_i_4_5 ({regfile_n_13,regfile_n_14,regfile_n_15,regfile_n_16}),
        .\DO_tristate_oe[4]_i_3_0 ({regfile_n_45,regfile_n_46,regfile_n_47,regfile_n_48}),
        .\DO_tristate_oe[4]_i_3_1 ({regfile_n_9,regfile_n_10,regfile_n_11,regfile_n_12}),
        .\DO_tristate_oe[4]_i_3_2 ({regfile_n_54,regfile_n_55,regfile_n_56,regfile_n_57}),
        .\DO_tristate_oe[4]_i_3_3 ({regfile_n_5,regfile_n_6,regfile_n_7,regfile_n_8}),
        .\DO_tristate_oe[8]_i_3 (regfile_n_49),
        .\DO_tristate_oe[8]_i_3_0 ({regfile_n_1,regfile_n_2}),
        .\DO_tristate_oe[8]_i_3_1 (regfile_n_58),
        .\DO_tristate_oe[8]_i_3_2 ({regfile_n_3,regfile_n_4}),
        .O(data1),
        .\Q_reg[7] (alu_n_5),
        .\Q_reg[7]_0 (alu_n_6),
        .\Q_reg[7]_1 (alu_n_7),
        .\Q_reg[7]_2 (alu_n_8),
        .\Q_reg[7]_3 (alu_n_9),
        .\Q_reg[7]_4 (alu_n_10),
        .\Q_reg[7]_5 (alu_n_11),
        .\Q_reg[9] (alu_n_4),
        .S({regfile_n_22,regfile_n_23,regfile_n_24,regfile_n_25}),
        .i__carry__1_i_3__0(data2),
        .op(op[1:0]));
  RF regfile
       (.D(Q_0),
        .DI({regfile_n_37,regfile_n_38,regfile_n_39,regfile_n_40}),
        .DI_IBUF(DI_IBUF),
        .\DO_tristate_oe[3]_i_2_0 ({regfile_n_17,regfile_n_18,regfile_n_19,regfile_n_20}),
        .\DO_tristate_oe[3]_i_4_0 ({regfile_n_13,regfile_n_14,regfile_n_15,regfile_n_16}),
        .\DO_tristate_oe[7]_i_2_0 ({regfile_n_9,regfile_n_10,regfile_n_11,regfile_n_12}),
        .\DO_tristate_oe[7]_i_4_0 ({regfile_n_5,regfile_n_6,regfile_n_7,regfile_n_8}),
        .\DO_tristate_oe[8]_i_4_0 (regfile_n_21),
        .\DO_tristate_oe[9]_i_4_0 ({regfile_n_1,regfile_n_2}),
        .\DO_tristate_oe[9]_i_4_1 ({regfile_n_3,regfile_n_4}),
        .\DO_tristate_oe[9]_i_4_2 (regfile_n_36),
        .\DO_tristate_oe_reg[0] (alu_n_4),
        .\DO_tristate_oe_reg[1] (alu_n_5),
        .\DO_tristate_oe_reg[2] (alu_n_6),
        .\DO_tristate_oe_reg[3] (alu_n_7),
        .\DO_tristate_oe_reg[4] (alu_n_8),
        .\DO_tristate_oe_reg[5] (alu_n_9),
        .\DO_tristate_oe_reg[6] (alu_n_10),
        .\DO_tristate_oe_reg[7] (alu_n_11),
        .\DO_tristate_oe_reg[9] (data2),
        .IE(IE),
        .IRdecode(IRdecode),
        .N(N),
        .O(data1),
        .RAA(RAA),
        .RAE(RAE),
        .RBA(RBA),
        .RBE(RBE),
        .S({regfile_n_22,regfile_n_23,regfile_n_24,regfile_n_25}),
        .WA(WA),
        .WE(WE),
        .clk_out_1_OBUF_BUFG(clk_out_1_OBUF_BUFG),
        .\mem_reg[2][3]_0 ({regfile_n_41,regfile_n_42,regfile_n_43,regfile_n_44}),
        .\mem_reg[2][3]_1 ({regfile_n_50,regfile_n_51,regfile_n_52,regfile_n_53}),
        .\mem_reg[2][7]_0 ({regfile_n_45,regfile_n_46,regfile_n_47,regfile_n_48}),
        .\mem_reg[2][7]_1 ({regfile_n_54,regfile_n_55,regfile_n_56,regfile_n_57}),
        .\mem_reg[2][8]_0 (regfile_n_49),
        .\mem_reg[2][8]_1 (regfile_n_58),
        .op(op),
        .reset(reset),
        .reset_IBUF(reset_IBUF));
  LUT6 #(
    .INIT(64'h2022222022222220)) 
    \seg_data[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\seg_data[7]_i_9_n_0 ),
        .I3(\seg_data[7]_i_12_n_0 ),
        .I4(\seg_data[7]_i_10_n_0 ),
        .I5(\seg_data[7]_i_11_n_0 ),
        .O(\digit_reg[2]_10 ));
  LUT6 #(
    .INIT(64'h1011111011111110)) 
    \seg_data[1]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\seg_data[7]_i_8_n_0 ),
        .I3(\seg_data[7]_i_7_n_0 ),
        .I4(\seg_data[7]_i_5_n_0 ),
        .I5(\seg_data[7]_i_6_n_0 ),
        .O(\digit_reg[2]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \seg_data[2]_i_3 
       (.I0(\DO_TRI[0] ),
        .I1(\DO_tristate_oe_reg[9]_0 [9]),
        .O(\DO_OBUFT[9]_inst_i_1 ));
  LUT6 #(
    .INIT(64'h2022222222220002)) 
    \seg_data[2]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\seg_data[7]_i_10_n_0 ),
        .I3(\seg_data[7]_i_11_n_0 ),
        .I4(\seg_data[7]_i_12_n_0 ),
        .I5(\seg_data[7]_i_9_n_0 ),
        .O(\digit_reg[2]_9 ));
  LUT6 #(
    .INIT(64'h1011111111110001)) 
    \seg_data[2]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\seg_data[7]_i_5_n_0 ),
        .I3(\seg_data[7]_i_6_n_0 ),
        .I4(\seg_data[7]_i_7_n_0 ),
        .I5(\seg_data[7]_i_8_n_0 ),
        .O(\digit_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \seg_data[3]_i_3 
       (.I0(\DO_TRI[0] ),
        .I1(\DO_tristate_oe_reg[9]_0 [8]),
        .O(\DO_OBUFT[9]_inst_i_1_0 ));
  LUT6 #(
    .INIT(64'h2020200022202222)) 
    \seg_data[3]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\seg_data[7]_i_9_n_0 ),
        .I3(\seg_data[7]_i_10_n_0 ),
        .I4(\seg_data[7]_i_12_n_0 ),
        .I5(\seg_data[7]_i_11_n_0 ),
        .O(\digit_reg[2]_8 ));
  LUT6 #(
    .INIT(64'h1010100011101111)) 
    \seg_data[3]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\seg_data[7]_i_8_n_0 ),
        .I3(\seg_data[7]_i_5_n_0 ),
        .I4(\seg_data[7]_i_7_n_0 ),
        .I5(\seg_data[7]_i_6_n_0 ),
        .O(\digit_reg[2]_5 ));
  LUT6 #(
    .INIT(64'h0111101101101101)) 
    \seg_data[4]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\seg_data[7]_i_6_n_0 ),
        .I3(\seg_data[7]_i_5_n_0 ),
        .I4(\seg_data[7]_i_7_n_0 ),
        .I5(\seg_data[7]_i_8_n_0 ),
        .O(\digit_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h000000006F790000)) 
    \seg_data[4]_i_3 
       (.I0(\seg_data[7]_i_12_n_0 ),
        .I1(\seg_data[7]_i_11_n_0 ),
        .I2(\seg_data[7]_i_10_n_0 ),
        .I3(\seg_data[7]_i_9_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\digit_reg[2] ));
  LUT6 #(
    .INIT(64'h0020222222222022)) 
    \seg_data[5]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\seg_data[7]_i_11_n_0 ),
        .I3(\seg_data[7]_i_10_n_0 ),
        .I4(\seg_data[7]_i_12_n_0 ),
        .I5(\seg_data[7]_i_9_n_0 ),
        .O(\digit_reg[2]_7 ));
  LUT6 #(
    .INIT(64'h0010111111111011)) 
    \seg_data[5]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\seg_data[7]_i_6_n_0 ),
        .I3(\seg_data[7]_i_5_n_0 ),
        .I4(\seg_data[7]_i_7_n_0 ),
        .I5(\seg_data[7]_i_8_n_0 ),
        .O(\digit_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000617F00000000)) 
    \seg_data[6]_i_2 
       (.I0(\seg_data[7]_i_9_n_0 ),
        .I1(\seg_data[7]_i_10_n_0 ),
        .I2(\seg_data[7]_i_11_n_0 ),
        .I3(\seg_data[7]_i_12_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\digit_reg[3] ));
  LUT6 #(
    .INIT(64'h0011010111010111)) 
    \seg_data[6]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\seg_data[7]_i_7_n_0 ),
        .I3(\seg_data[7]_i_5_n_0 ),
        .I4(\seg_data[7]_i_6_n_0 ),
        .I5(\seg_data[7]_i_8_n_0 ),
        .O(\digit_reg[2]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \seg_data[7]_i_10 
       (.I0(\DO_TRI[0] ),
        .I1(\DO_tristate_oe_reg[9]_0 [5]),
        .O(\seg_data[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \seg_data[7]_i_11 
       (.I0(\DO_TRI[0] ),
        .I1(\DO_tristate_oe_reg[9]_0 [4]),
        .O(\seg_data[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \seg_data[7]_i_12 
       (.I0(\DO_TRI[0] ),
        .I1(\DO_tristate_oe_reg[9]_0 [6]),
        .O(\seg_data[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h1011011111101011)) 
    \seg_data[7]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\seg_data[7]_i_5_n_0 ),
        .I3(\seg_data[7]_i_6_n_0 ),
        .I4(\seg_data[7]_i_7_n_0 ),
        .I5(\seg_data[7]_i_8_n_0 ),
        .O(\digit_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h4404444004404444)) 
    \seg_data[7]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\seg_data[7]_i_9_n_0 ),
        .I3(\seg_data[7]_i_10_n_0 ),
        .I4(\seg_data[7]_i_11_n_0 ),
        .I5(\seg_data[7]_i_12_n_0 ),
        .O(\digit_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \seg_data[7]_i_5 
       (.I0(\DO_TRI[0] ),
        .I1(\DO_tristate_oe_reg[9]_0 [1]),
        .O(\seg_data[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \seg_data[7]_i_6 
       (.I0(\DO_TRI[0] ),
        .I1(\DO_tristate_oe_reg[9]_0 [0]),
        .O(\seg_data[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \seg_data[7]_i_7 
       (.I0(\DO_TRI[0] ),
        .I1(\DO_tristate_oe_reg[9]_0 [2]),
        .O(\seg_data[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \seg_data[7]_i_8 
       (.I0(\DO_TRI[0] ),
        .I1(\DO_tristate_oe_reg[9]_0 [3]),
        .O(\seg_data[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \seg_data[7]_i_9 
       (.I0(\DO_TRI[0] ),
        .I1(\DO_tristate_oe_reg[9]_0 [7]),
        .O(\seg_data[7]_i_9_n_0 ));
endmodule

module fetch
   (IR,
    D,
    E,
    PCload,
    clk_out_1_OBUF_BUFG,
    \Q_reg[3] ,
    Q,
    IRload);
  output [2:0]IR;
  output [1:0]D;
  output [0:0]E;
  input PCload;
  input clk_out_1_OBUF_BUFG;
  input \Q_reg[3] ;
  input [1:0]Q;
  input IRload;

  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]IR;
  wire IRload;
  wire PCload;
  wire [1:0]Q;
  wire \Q[0]_i_1_n_0 ;
  wire \Q[1]_i_1_n_0 ;
  wire \Q[3]_i_1_n_0 ;
  wire \Q_reg[3] ;
  wire clk_out_1_OBUF_BUFG;
  wire [3:0]pc;

  LUT1 #(
    .INIT(2'h1)) 
    \Q[0]_i_1 
       (.I0(pc[0]),
        .O(\Q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Q[1]_i_1 
       (.I0(pc[0]),
        .I1(pc[1]),
        .O(\Q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Q[3]_i_1 
       (.I0(pc[1]),
        .I1(pc[0]),
        .I2(pc[2]),
        .I3(pc[3]),
        .O(\Q[3]_i_1_n_0 ));
  FF__parameterized0 ir_10_bit
       (.IR(IR),
        .IRload(IRload),
        .Q(Q),
        .\Q_reg[6]_0 (\Q_reg[3] ),
        .clk_out_1_OBUF_BUFG(clk_out_1_OBUF_BUFG));
  FF pc_4_bit
       (.D(D),
        .E(E),
        .PCload(PCload),
        .\Q_reg[0]_0 (\Q[0]_i_1_n_0 ),
        .\Q_reg[1]_0 (\Q[1]_i_1_n_0 ),
        .\Q_reg[3]_0 (\Q[3]_i_1_n_0 ),
        .\Q_reg[3]_1 (\Q_reg[3] ),
        .clk_out_1_OBUF_BUFG(clk_out_1_OBUF_BUFG),
        .pc(pc));
endmodule

(* divider_cnt = "2499999" *) 
(* NotValidForBitStream *)
module flow
   (clk,
    reset,
    DI,
    DO,
    fnd_digit,
    fnd_value,
    clk_out_1,
    state_led);
  input clk;
  input reset;
  input [9:0]DI;
  output [9:0]DO;
  output [7:0]fnd_digit;
  output [7:0]fnd_value;
  output clk_out_1;
  output [2:0]state_led;

  wire [9:0]DI;
  wire [9:0]DI_IBUF;
  wire [9:0]DO;
  wire [9:0]DO_OBUF;
  wire \DO_OBUFT[9]_inst_i_2_n_0 ;
  wire \DO_TRI[0] ;
  wire [1:0]IE;
  wire [9:6]IR;
  wire IRdecode;
  wire IRdecode__0;
  wire IRdecode_reg_i_1_n_0;
  wire IRload;
  wire [9:0]N;
  wire OE;
  wire PCload;
  wire [1:0]RAA;
  wire RAE;
  wire [1:0]RBA;
  wire RBE;
  wire [7:6]RQ;
  wire U0_n_3;
  wire U0_n_4;
  wire U0_n_5;
  wire U2_n_0;
  wire U2_n_1;
  wire U2_n_10;
  wire U2_n_11;
  wire U2_n_12;
  wire U2_n_13;
  wire U2_n_14;
  wire U2_n_15;
  wire U2_n_2;
  wire U2_n_26;
  wire U2_n_3;
  wire U2_n_4;
  wire U2_n_5;
  wire U2_n_6;
  wire U2_n_7;
  wire U2_n_8;
  wire U2_n_9;
  wire [1:0]WA;
  wire WE;
  wire ZE;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_out;
  wire clk_out_1;
  wire clk_out_1_OBUF;
  wire clk_out_1_OBUF_BUFG;
  wire [7:0]fnd_digit;
  wire [7:0]fnd_digit_OBUF;
  wire [7:0]fnd_value;
  wire [7:1]fnd_value_OBUF;
  wire halt;
  wire [2:0]op;
  wire [1:0]phase;
  wire \phase[0]_i_1_n_0 ;
  wire \phase[1]_i_1_n_0 ;
  wire reset;
  wire reset_IBUF;
  wire [2:0]state_led;
  wire [2:0]state_led_OBUF;
  wire \state_led_reg[0]_i_1_n_0 ;

initial begin
 $sdf_annotate("cpu_test_time_synth.sdf",,,,"tool_control");
end
  IBUF \DI_IBUF[0]_inst 
       (.I(DI[0]),
        .O(DI_IBUF[0]));
  IBUF \DI_IBUF[1]_inst 
       (.I(DI[1]),
        .O(DI_IBUF[1]));
  IBUF \DI_IBUF[2]_inst 
       (.I(DI[2]),
        .O(DI_IBUF[2]));
  IBUF \DI_IBUF[3]_inst 
       (.I(DI[3]),
        .O(DI_IBUF[3]));
  IBUF \DI_IBUF[4]_inst 
       (.I(DI[4]),
        .O(DI_IBUF[4]));
  IBUF \DI_IBUF[5]_inst 
       (.I(DI[5]),
        .O(DI_IBUF[5]));
  IBUF \DI_IBUF[6]_inst 
       (.I(DI[6]),
        .O(DI_IBUF[6]));
  IBUF \DI_IBUF[7]_inst 
       (.I(DI[7]),
        .O(DI_IBUF[7]));
  IBUF \DI_IBUF[8]_inst 
       (.I(DI[8]),
        .O(DI_IBUF[8]));
  IBUF \DI_IBUF[9]_inst 
       (.I(DI[9]),
        .O(DI_IBUF[9]));
  OBUFT \DO_OBUFT[0]_inst 
       (.I(DO_OBUF[0]),
        .O(DO[0]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[1]_inst 
       (.I(DO_OBUF[1]),
        .O(DO[1]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[2]_inst 
       (.I(DO_OBUF[2]),
        .O(DO[2]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[3]_inst 
       (.I(DO_OBUF[3]),
        .O(DO[3]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[4]_inst 
       (.I(DO_OBUF[4]),
        .O(DO[4]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[5]_inst 
       (.I(DO_OBUF[5]),
        .O(DO[5]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[6]_inst 
       (.I(DO_OBUF[6]),
        .O(DO[6]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[7]_inst 
       (.I(DO_OBUF[7]),
        .O(DO[7]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[8]_inst 
       (.I(DO_OBUF[8]),
        .O(DO[8]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[9]_inst 
       (.I(DO_OBUF[9]),
        .O(DO[9]),
        .T(\DO_TRI[0] ));
  FDPE #(
    .INIT(1'b0)) 
    \DO_OBUFT[9]_inst_i_1 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(1'b1),
        .D(\DO_OBUFT[9]_inst_i_2_n_0 ),
        .PRE(U2_n_10),
        .Q(\DO_TRI[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    \DO_OBUFT[9]_inst_i_2 
       (.I0(\DO_TRI[0] ),
        .I1(OE),
        .O(\DO_OBUFT[9]_inst_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    IRdecode_reg
       (.CLR(1'b0),
        .D(phase[0]),
        .G(IRdecode_reg_i_1_n_0),
        .GE(1'b1),
        .Q(IRdecode));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h07)) 
    IRdecode_reg_i_1
       (.I0(phase[0]),
        .I1(phase[1]),
        .I2(halt),
        .O(IRdecode_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    IRload_reg
       (.CLR(halt),
        .D(\state_led_reg[0]_i_1_n_0 ),
        .G(IRdecode__0),
        .GE(1'b1),
        .Q(IRload));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    PCload_reg
       (.CLR(halt),
        .D(phase[1]),
        .G(IRdecode__0),
        .GE(1'b1),
        .Q(PCload));
  fetch U0
       (.D({U0_n_3,U0_n_4}),
        .E(U0_n_5),
        .IR({IR[9],IR[7:6]}),
        .IRload(IRload),
        .PCload(PCload),
        .Q(RQ),
        .\Q_reg[3] (U2_n_10),
        .clk_out_1_OBUF_BUFG(clk_out_1_OBUF_BUFG));
  (* KEEP_HIERARCHY = "yes" *) 
  decode U1
       (.IE(IE),
        .IR({IR[9],IR[9],IR[7:6],IR[9],IR[9],IR[9],IR[9],IR[9],IR[9]}),
        .N(N),
        .OE(OE),
        .RAA(RAA),
        .RAE(RAE),
        .RBA(RBA),
        .RBE(RBE),
        .WA(WA),
        .WE(WE),
        .ZE(ZE),
        .halt(halt),
        .op(op),
        .reset(reset_IBUF));
  execute U2
       (.DI_IBUF(DI_IBUF),
        .\DO_OBUFT[9]_inst_i_1 (U2_n_15),
        .\DO_OBUFT[9]_inst_i_1_0 (U2_n_26),
        .\DO_TRI[0] (\DO_TRI[0] ),
        .\DO_tristate_oe_reg[9]_0 (DO_OBUF),
        .E(OE),
        .IE(IE),
        .IRdecode(IRdecode),
        .N(N),
        .Q(fnd_digit_OBUF[3:2]),
        .RAA(RAA),
        .RAE(RAE),
        .RBA(RBA),
        .RBE(RBE),
        .WA(WA),
        .WE(WE),
        .clk_out_1_OBUF_BUFG(clk_out_1_OBUF_BUFG),
        .\digit_reg[2] (U2_n_0),
        .\digit_reg[2]_0 (U2_n_3),
        .\digit_reg[2]_1 (U2_n_4),
        .\digit_reg[2]_10 (U2_n_14),
        .\digit_reg[2]_2 (U2_n_5),
        .\digit_reg[2]_3 (U2_n_6),
        .\digit_reg[2]_4 (U2_n_7),
        .\digit_reg[2]_5 (U2_n_8),
        .\digit_reg[2]_6 (U2_n_9),
        .\digit_reg[2]_7 (U2_n_11),
        .\digit_reg[2]_8 (U2_n_12),
        .\digit_reg[2]_9 (U2_n_13),
        .\digit_reg[3] (U2_n_1),
        .\digit_reg[3]_0 (U2_n_2),
        .op(op),
        .reset(U2_n_10),
        .reset_IBUF(reset_IBUF));
  ROM U3
       (.D({U0_n_3,U0_n_4}),
        .E(U0_n_5),
        .Q(RQ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  BUFG clk_out_1_OBUF_BUFG_inst
       (.I(clk_out_1_OBUF),
        .O(clk_out_1_OBUF_BUFG));
  OBUF clk_out_1_OBUF_inst
       (.I(clk_out_1_OBUF_BUFG),
        .O(clk_out_1));
  fnd_ctrl ctrl
       (.Q(fnd_digit_OBUF),
        .clk_out(clk_out),
        .\digit_reg[7]_0 (U2_n_10),
        .fnd_value_OBUF(fnd_value_OBUF),
        .\seg_data_reg[1]_0 (U2_n_14),
        .\seg_data_reg[1]_1 (U2_n_7),
        .\seg_data_reg[2]_0 (U2_n_15),
        .\seg_data_reg[2]_1 (U2_n_13),
        .\seg_data_reg[2]_2 (U2_n_6),
        .\seg_data_reg[3]_0 (U2_n_26),
        .\seg_data_reg[3]_1 (U2_n_12),
        .\seg_data_reg[3]_2 (U2_n_8),
        .\seg_data_reg[4]_0 (U2_n_4),
        .\seg_data_reg[4]_1 (U2_n_0),
        .\seg_data_reg[5]_0 (U2_n_11),
        .\seg_data_reg[5]_1 (U2_n_3),
        .\seg_data_reg[6]_0 (U2_n_1),
        .\seg_data_reg[6]_1 (U2_n_9),
        .\seg_data_reg[7]_0 (U2_n_5),
        .\seg_data_reg[7]_1 (U2_n_2));
  clk_divider__parameterized0 div0
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_out(clk_out),
        .\cntr_reg[1]_C_0 (U2_n_10),
        .reset_IBUF(reset_IBUF));
  clk_divider div00
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_out_1_OBUF(clk_out_1_OBUF),
        .clk_out_reg_0(U2_n_10));
  OBUF \fnd_digit_OBUF[0]_inst 
       (.I(fnd_digit_OBUF[0]),
        .O(fnd_digit[0]));
  OBUF \fnd_digit_OBUF[1]_inst 
       (.I(fnd_digit_OBUF[1]),
        .O(fnd_digit[1]));
  OBUF \fnd_digit_OBUF[2]_inst 
       (.I(fnd_digit_OBUF[2]),
        .O(fnd_digit[2]));
  OBUF \fnd_digit_OBUF[3]_inst 
       (.I(fnd_digit_OBUF[3]),
        .O(fnd_digit[3]));
  OBUF \fnd_digit_OBUF[4]_inst 
       (.I(fnd_digit_OBUF[4]),
        .O(fnd_digit[4]));
  OBUF \fnd_digit_OBUF[5]_inst 
       (.I(fnd_digit_OBUF[5]),
        .O(fnd_digit[5]));
  OBUF \fnd_digit_OBUF[6]_inst 
       (.I(fnd_digit_OBUF[6]),
        .O(fnd_digit[6]));
  OBUF \fnd_digit_OBUF[7]_inst 
       (.I(fnd_digit_OBUF[7]),
        .O(fnd_digit[7]));
  OBUF \fnd_value_OBUF[0]_inst 
       (.I(1'b0),
        .O(fnd_value[0]));
  OBUF \fnd_value_OBUF[1]_inst 
       (.I(fnd_value_OBUF[1]),
        .O(fnd_value[1]));
  OBUF \fnd_value_OBUF[2]_inst 
       (.I(fnd_value_OBUF[2]),
        .O(fnd_value[2]));
  OBUF \fnd_value_OBUF[3]_inst 
       (.I(fnd_value_OBUF[3]),
        .O(fnd_value[3]));
  OBUF \fnd_value_OBUF[4]_inst 
       (.I(fnd_value_OBUF[4]),
        .O(fnd_value[4]));
  OBUF \fnd_value_OBUF[5]_inst 
       (.I(fnd_value_OBUF[5]),
        .O(fnd_value[5]));
  OBUF \fnd_value_OBUF[6]_inst 
       (.I(fnd_value_OBUF[6]),
        .O(fnd_value[6]));
  OBUF \fnd_value_OBUF[7]_inst 
       (.I(fnd_value_OBUF[7]),
        .O(fnd_value[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hC1)) 
    \phase[0]_i_1 
       (.I0(phase[1]),
        .I1(halt),
        .I2(phase[0]),
        .O(\phase[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hC2)) 
    \phase[1]_i_1 
       (.I0(phase[0]),
        .I1(halt),
        .I2(phase[1]),
        .O(\phase[1]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \phase_reg[0] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(1'b1),
        .D(\phase[0]_i_1_n_0 ),
        .PRE(U2_n_10),
        .Q(phase[0]));
  FDPE #(
    .INIT(1'b1)) 
    \phase_reg[1] 
       (.C(clk_out_1_OBUF_BUFG),
        .CE(1'b1),
        .D(\phase[1]_i_1_n_0 ),
        .PRE(U2_n_10),
        .Q(phase[1]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \state_led_OBUF[0]_inst 
       (.I(state_led_OBUF[0]),
        .O(state_led[0]));
  OBUF \state_led_OBUF[1]_inst 
       (.I(state_led_OBUF[1]),
        .O(state_led[1]));
  OBUF \state_led_OBUF[2]_inst 
       (.I(state_led_OBUF[2]),
        .O(state_led[2]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b0)) 
    \state_led_reg[0] 
       (.D(\state_led_reg[0]_i_1_n_0 ),
        .G(IRdecode__0),
        .GE(1'b1),
        .PRE(halt),
        .Q(state_led_OBUF[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \state_led_reg[0]_i_1 
       (.I0(phase[1]),
        .I1(phase[0]),
        .O(\state_led_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b0)) 
    \state_led_reg[1] 
       (.D(phase[0]),
        .G(IRdecode__0),
        .GE(1'b1),
        .PRE(halt),
        .Q(state_led_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b0)) 
    \state_led_reg[2] 
       (.D(phase[1]),
        .G(IRdecode__0),
        .GE(1'b1),
        .PRE(halt),
        .Q(state_led_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \state_led_reg[2]_i_1 
       (.I0(phase[1]),
        .I1(phase[0]),
        .O(IRdecode__0));
endmodule

module fnd_ctrl
   (Q,
    fnd_value_OBUF,
    \seg_data_reg[5]_0 ,
    \seg_data_reg[5]_1 ,
    \seg_data_reg[3]_0 ,
    \seg_data_reg[3]_1 ,
    \seg_data_reg[3]_2 ,
    \seg_data_reg[2]_0 ,
    \seg_data_reg[2]_1 ,
    \seg_data_reg[2]_2 ,
    \seg_data_reg[1]_0 ,
    \seg_data_reg[1]_1 ,
    \seg_data_reg[4]_0 ,
    \seg_data_reg[4]_1 ,
    \seg_data_reg[6]_0 ,
    \seg_data_reg[6]_1 ,
    \seg_data_reg[7]_0 ,
    \seg_data_reg[7]_1 ,
    clk_out,
    \digit_reg[7]_0 );
  output [7:0]Q;
  output [6:0]fnd_value_OBUF;
  input \seg_data_reg[5]_0 ;
  input \seg_data_reg[5]_1 ;
  input \seg_data_reg[3]_0 ;
  input \seg_data_reg[3]_1 ;
  input \seg_data_reg[3]_2 ;
  input \seg_data_reg[2]_0 ;
  input \seg_data_reg[2]_1 ;
  input \seg_data_reg[2]_2 ;
  input \seg_data_reg[1]_0 ;
  input \seg_data_reg[1]_1 ;
  input \seg_data_reg[4]_0 ;
  input \seg_data_reg[4]_1 ;
  input \seg_data_reg[6]_0 ;
  input \seg_data_reg[6]_1 ;
  input \seg_data_reg[7]_0 ;
  input \seg_data_reg[7]_1 ;
  input clk_out;
  input \digit_reg[7]_0 ;

  wire [7:0]Q;
  wire clk_out;
  wire \ctrl/_n_0 ;
  wire \digit_reg[7]_0 ;
  wire [6:0]fnd_value_OBUF;
  wire \seg_data[1]_i_1_n_0 ;
  wire \seg_data[2]_i_1_n_0 ;
  wire \seg_data[2]_i_2_n_0 ;
  wire \seg_data[3]_i_1_n_0 ;
  wire \seg_data[3]_i_2_n_0 ;
  wire \seg_data[4]_i_1_n_0 ;
  wire \seg_data[5]_i_1_n_0 ;
  wire \seg_data[5]_i_2_n_0 ;
  wire \seg_data[6]_i_1_n_0 ;
  wire \seg_data[7]_i_1_n_0 ;
  wire \seg_data[7]_i_3_n_0 ;
  wire \seg_data_reg[1]_0 ;
  wire \seg_data_reg[1]_1 ;
  wire \seg_data_reg[2]_0 ;
  wire \seg_data_reg[2]_1 ;
  wire \seg_data_reg[2]_2 ;
  wire \seg_data_reg[3]_0 ;
  wire \seg_data_reg[3]_1 ;
  wire \seg_data_reg[3]_2 ;
  wire \seg_data_reg[4]_0 ;
  wire \seg_data_reg[4]_1 ;
  wire \seg_data_reg[5]_0 ;
  wire \seg_data_reg[5]_1 ;
  wire \seg_data_reg[6]_0 ;
  wire \seg_data_reg[6]_1 ;
  wire \seg_data_reg[7]_0 ;
  wire \seg_data_reg[7]_1 ;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctrl/ 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\ctrl/_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \digit_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(Q[1]),
        .PRE(\digit_reg[7]_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[2]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[3]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[3] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[4]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[4] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[5]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[5] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[6]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[6] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[7]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[7] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[0]),
        .Q(Q[7]));
  LUT6 #(
    .INIT(64'h00000000FFF800F8)) 
    \seg_data[1]_i_1 
       (.I0(\seg_data[3]_i_2_n_0 ),
        .I1(\seg_data_reg[2]_0 ),
        .I2(\seg_data_reg[1]_0 ),
        .I3(Q[1]),
        .I4(\seg_data_reg[1]_1 ),
        .I5(Q[0]),
        .O(\seg_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF100F1)) 
    \seg_data[2]_i_1 
       (.I0(\seg_data[2]_i_2_n_0 ),
        .I1(\seg_data_reg[2]_0 ),
        .I2(\seg_data_reg[2]_1 ),
        .I3(Q[1]),
        .I4(\seg_data_reg[2]_2 ),
        .I5(Q[0]),
        .O(\seg_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \seg_data[2]_i_2 
       (.I0(\seg_data_reg[3]_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\seg_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF200F2)) 
    \seg_data[3]_i_1 
       (.I0(\seg_data[3]_i_2_n_0 ),
        .I1(\seg_data_reg[3]_0 ),
        .I2(\seg_data_reg[3]_1 ),
        .I3(Q[1]),
        .I4(\seg_data_reg[3]_2 ),
        .I5(Q[0]),
        .O(\seg_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg_data[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\seg_data[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000DD0D)) 
    \seg_data[4]_i_1 
       (.I0(Q[1]),
        .I1(\seg_data_reg[4]_0 ),
        .I2(\seg_data[7]_i_3_n_0 ),
        .I3(\seg_data_reg[4]_1 ),
        .I4(Q[0]),
        .O(\seg_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \seg_data[5]_i_1 
       (.I0(\seg_data[5]_i_2_n_0 ),
        .I1(\seg_data_reg[5]_0 ),
        .I2(Q[1]),
        .I3(\seg_data_reg[5]_1 ),
        .I4(Q[0]),
        .O(\seg_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hAAAAFBAA)) 
    \seg_data[5]_i_2 
       (.I0(Q[1]),
        .I1(\seg_data_reg[2]_0 ),
        .I2(\seg_data_reg[3]_0 ),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\seg_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF400F4)) 
    \seg_data[6]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\seg_data_reg[6]_0 ),
        .I3(Q[1]),
        .I4(\seg_data_reg[6]_1 ),
        .I5(Q[0]),
        .O(\seg_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000DD0D)) 
    \seg_data[7]_i_1 
       (.I0(Q[1]),
        .I1(\seg_data_reg[7]_0 ),
        .I2(\seg_data[7]_i_3_n_0 ),
        .I3(\seg_data_reg[7]_1 ),
        .I4(Q[0]),
        .O(\seg_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h55550455)) 
    \seg_data[7]_i_3 
       (.I0(Q[1]),
        .I1(\seg_data_reg[3]_0 ),
        .I2(\seg_data_reg[2]_0 ),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\seg_data[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\seg_data[1]_i_1_n_0 ),
        .Q(fnd_value_OBUF[0]),
        .R(\ctrl/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\seg_data[2]_i_1_n_0 ),
        .Q(fnd_value_OBUF[1]),
        .R(\ctrl/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[3] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\seg_data[3]_i_1_n_0 ),
        .Q(fnd_value_OBUF[2]),
        .R(\ctrl/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[4] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\seg_data[4]_i_1_n_0 ),
        .Q(fnd_value_OBUF[3]),
        .R(\ctrl/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[5] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\seg_data[5]_i_1_n_0 ),
        .Q(fnd_value_OBUF[4]),
        .R(\ctrl/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[6] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\seg_data[6]_i_1_n_0 ),
        .Q(fnd_value_OBUF[5]),
        .R(\ctrl/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[7] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\seg_data[7]_i_1_n_0 ),
        .Q(fnd_value_OBUF[6]),
        .R(\ctrl/_n_0 ));
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

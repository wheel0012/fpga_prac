// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Dec  2 16:04:15 2024
// Host        : JUN running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/wheel/vhdl_prac/alu_example/alu_example.sim/sim_1/impl/func/xsim/main_tb_func_impl.v
// Design      : main
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module alu
   (\digit_reg[1] ,
    \seg_data[7]_i_10_0 ,
    \op[2] ,
    \digit_reg[0] ,
    \digit_reg[3] ,
    \digit_reg[3]_0 ,
    \seg_data[7]_i_15_0 ,
    \digit_reg[3]_1 ,
    \digit_reg[2] ,
    \digit_reg[2]_0 ,
    \digit_reg[2]_1 ,
    \digit_reg[2]_2 ,
    \digit_reg[2]_3 ,
    in_a_IBUF,
    S,
    \seg_data[5]_i_18_0 ,
    DI,
    \seg_data[3]_i_8_0 ,
    Q,
    \seg_data_reg[3] ,
    \seg_data_reg[3]_0 ,
    \seg_data_reg[5] ,
    in_b_IBUF,
    op_IBUF,
    \seg_data[5]_i_10_0 ,
    \seg_data[5]_i_11_0 ,
    \seg_data[5]_i_9_0 ,
    \seg_data[5]_i_8_0 ,
    \seg_data[5]_i_12_0 ,
    \seg_data[5]_i_7_0 );
  output \digit_reg[1] ;
  output \seg_data[7]_i_10_0 ;
  output \op[2] ;
  output \digit_reg[0] ;
  output \digit_reg[3] ;
  output \digit_reg[3]_0 ;
  output \seg_data[7]_i_15_0 ;
  output \digit_reg[3]_1 ;
  output \digit_reg[2] ;
  output \digit_reg[2]_0 ;
  output \digit_reg[2]_1 ;
  output \digit_reg[2]_2 ;
  output \digit_reg[2]_3 ;
  input [7:0]in_a_IBUF;
  input [3:0]S;
  input [3:0]\seg_data[5]_i_18_0 ;
  input [3:0]DI;
  input [3:0]\seg_data[3]_i_8_0 ;
  input [4:0]Q;
  input \seg_data_reg[3] ;
  input \seg_data_reg[3]_0 ;
  input \seg_data_reg[5] ;
  input [7:0]in_b_IBUF;
  input [2:0]op_IBUF;
  input \seg_data[5]_i_10_0 ;
  input \seg_data[5]_i_11_0 ;
  input \seg_data[5]_i_9_0 ;
  input \seg_data[5]_i_8_0 ;
  input \seg_data[5]_i_12_0 ;
  input \seg_data[5]_i_7_0 ;

  wire [3:0]DI;
  wire [4:0]Q;
  wire [3:0]S;
  wire [7:0]data0;
  wire [7:0]data1;
  wire data4;
  wire \digit_reg[0] ;
  wire \digit_reg[1] ;
  wire \digit_reg[2] ;
  wire \digit_reg[2]_0 ;
  wire \digit_reg[2]_1 ;
  wire \digit_reg[2]_2 ;
  wire \digit_reg[2]_3 ;
  wire \digit_reg[3] ;
  wire \digit_reg[3]_0 ;
  wire \digit_reg[3]_1 ;
  wire [7:0]in_a_IBUF;
  wire [7:0]in_b_IBUF;
  wire \op[2] ;
  wire [2:0]op_IBUF;
  wire q0_carry_i_1_n_0;
  wire q0_carry_i_2_n_0;
  wire q0_carry_i_3_n_0;
  wire q0_carry_i_4_n_0;
  wire q0_carry_n_0;
  wire \seg_data[2]_i_5_n_0 ;
  wire \seg_data[2]_i_6_n_0 ;
  wire \seg_data[3]_i_2_n_0 ;
  wire \seg_data[3]_i_6_n_0 ;
  wire \seg_data[3]_i_7_n_0 ;
  wire [3:0]\seg_data[3]_i_8_0 ;
  wire \seg_data[3]_i_8_n_0 ;
  wire \seg_data[4]_i_5_n_0 ;
  wire \seg_data[5]_i_10_0 ;
  wire \seg_data[5]_i_10_n_0 ;
  wire \seg_data[5]_i_11_0 ;
  wire \seg_data[5]_i_11_n_0 ;
  wire \seg_data[5]_i_12_0 ;
  wire \seg_data[5]_i_12_n_0 ;
  wire \seg_data[5]_i_13_n_0 ;
  wire \seg_data[5]_i_17_n_0 ;
  wire [3:0]\seg_data[5]_i_18_0 ;
  wire \seg_data[5]_i_18_n_0 ;
  wire \seg_data[5]_i_19_n_0 ;
  wire \seg_data[5]_i_20_n_0 ;
  wire \seg_data[5]_i_21_n_0 ;
  wire \seg_data[5]_i_22_n_0 ;
  wire \seg_data[5]_i_2_n_0 ;
  wire \seg_data[5]_i_3_n_0 ;
  wire \seg_data[5]_i_4_n_0 ;
  wire \seg_data[5]_i_5_n_0 ;
  wire \seg_data[5]_i_7_0 ;
  wire \seg_data[5]_i_7_n_0 ;
  wire \seg_data[5]_i_8_0 ;
  wire \seg_data[5]_i_8_n_0 ;
  wire \seg_data[5]_i_9_0 ;
  wire \seg_data[5]_i_9_n_0 ;
  wire \seg_data[6]_i_5_n_0 ;
  wire \seg_data[6]_i_6_n_0 ;
  wire \seg_data[6]_i_7_n_0 ;
  wire \seg_data[6]_i_9_n_0 ;
  wire \seg_data[7]_i_10_0 ;
  wire \seg_data[7]_i_10_n_0 ;
  wire \seg_data[7]_i_11_n_0 ;
  wire \seg_data[7]_i_14_n_0 ;
  wire \seg_data[7]_i_15_0 ;
  wire \seg_data[7]_i_15_n_0 ;
  wire \seg_data[7]_i_16_n_0 ;
  wire \seg_data[7]_i_7_n_0 ;
  wire \seg_data[7]_i_8_n_0 ;
  wire \seg_data[7]_i_9_n_0 ;
  wire \seg_data_reg[3] ;
  wire \seg_data_reg[3]_0 ;
  wire \seg_data_reg[5] ;
  wire sub_res_w_carry_i_1_n_0;
  wire sub_res_w_carry_i_2_n_0;
  wire sub_res_w_carry_i_3_n_0;
  wire sub_res_w_carry_i_4_n_0;
  wire sub_res_w_carry_n_0;
  wire [2:0]NLW_q0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_q0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_q2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_q2_carry_O_UNCONNECTED;
  wire [2:0]NLW_sub_res_w_carry_CO_UNCONNECTED;
  wire [3:0]NLW_sub_res_w_carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q0_carry
       (.CI(1'b0),
        .CO({q0_carry_n_0,NLW_q0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(in_a_IBUF[3:0]),
        .O(data0[3:0]),
        .S({q0_carry_i_1_n_0,q0_carry_i_2_n_0,q0_carry_i_3_n_0,q0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q0_carry__0
       (.CI(q0_carry_n_0),
        .CO(NLW_q0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,in_a_IBUF[6:4]}),
        .O(data0[7:4]),
        .S(S));
  LUT2 #(
    .INIT(4'h6)) 
    q0_carry_i_1
       (.I0(in_a_IBUF[3]),
        .I1(in_b_IBUF[3]),
        .O(q0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_carry_i_2
       (.I0(in_a_IBUF[2]),
        .I1(in_b_IBUF[2]),
        .O(q0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_carry_i_3
       (.I0(in_a_IBUF[1]),
        .I1(in_b_IBUF[1]),
        .O(q0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q0_carry_i_4
       (.I0(in_a_IBUF[0]),
        .I1(in_b_IBUF[0]),
        .O(q0_carry_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 q2_carry
       (.CI(1'b0),
        .CO({data4,NLW_q2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_q2_carry_O_UNCONNECTED[3:0]),
        .S(\seg_data[3]_i_8_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA8AAAAA2820)) 
    \seg_data[1]_i_2 
       (.I0(\seg_data_reg[3] ),
        .I1(\seg_data[6]_i_6_n_0 ),
        .I2(\seg_data[7]_i_7_n_0 ),
        .I3(\op[2] ),
        .I4(\seg_data[6]_i_5_n_0 ),
        .I5(\seg_data[3]_i_2_n_0 ),
        .O(\digit_reg[3] ));
  LUT5 #(
    .INIT(32'hFFFFC10D)) 
    \seg_data[1]_i_3 
       (.I0(\seg_data[5]_i_4_n_0 ),
        .I1(\seg_data[7]_i_10_n_0 ),
        .I2(\seg_data[7]_i_9_n_0 ),
        .I3(\seg_data[7]_i_8_n_0 ),
        .I4(\seg_data[7]_i_11_n_0 ),
        .O(\digit_reg[2]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF200F)) 
    \seg_data[2]_i_3 
       (.I0(\seg_data[2]_i_5_n_0 ),
        .I1(\seg_data[7]_i_7_n_0 ),
        .I2(\seg_data[7]_i_9_n_0 ),
        .I3(\seg_data[7]_i_8_n_0 ),
        .I4(\seg_data[2]_i_6_n_0 ),
        .I5(\seg_data[5]_i_3_n_0 ),
        .O(\digit_reg[2] ));
  LUT6 #(
    .INIT(64'hE667E6677FF97EE1)) 
    \seg_data[2]_i_5 
       (.I0(\seg_data[5]_i_8_n_0 ),
        .I1(\seg_data[5]_i_10_n_0 ),
        .I2(\seg_data[5]_i_11_n_0 ),
        .I3(\seg_data[5]_i_12_n_0 ),
        .I4(\seg_data[5]_i_7_n_0 ),
        .I5(\seg_data[5]_i_9_n_0 ),
        .O(\seg_data[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \seg_data[2]_i_6 
       (.I0(\seg_data[7]_i_16_n_0 ),
        .I1(Q[2]),
        .O(\seg_data[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F555555)) 
    \seg_data[3]_i_1 
       (.I0(Q[1]),
        .I1(\seg_data[3]_i_2_n_0 ),
        .I2(\seg_data[7]_i_10_0 ),
        .I3(\op[2] ),
        .I4(\seg_data_reg[3] ),
        .I5(\seg_data[3]_i_6_n_0 ),
        .O(\digit_reg[1] ));
  LUT2 #(
    .INIT(4'h6)) 
    \seg_data[3]_i_2 
       (.I0(\seg_data[5]_i_7_n_0 ),
        .I1(\seg_data[7]_i_10_n_0 ),
        .O(\seg_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE578B4E5A72D1EA7)) 
    \seg_data[3]_i_3 
       (.I0(\seg_data[5]_i_13_n_0 ),
        .I1(\seg_data[5]_i_7_n_0 ),
        .I2(\seg_data[6]_i_6_n_0 ),
        .I3(\seg_data[7]_i_9_n_0 ),
        .I4(\seg_data[5]_i_9_n_0 ),
        .I5(\seg_data[7]_i_10_n_0 ),
        .O(\seg_data[7]_i_10_0 ));
  LUT5 #(
    .INIT(32'hBBBBBBAB)) 
    \seg_data[3]_i_6 
       (.I0(Q[0]),
        .I1(\seg_data_reg[3]_0 ),
        .I2(\seg_data[7]_i_7_n_0 ),
        .I3(\seg_data[4]_i_5_n_0 ),
        .I4(\seg_data[7]_i_11_n_0 ),
        .O(\seg_data[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF470047)) 
    \seg_data[3]_i_7 
       (.I0(data1[0]),
        .I1(op_IBUF[0]),
        .I2(data0[0]),
        .I3(op_IBUF[1]),
        .I4(in_a_IBUF[0]),
        .O(\seg_data[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h03D13FD1)) 
    \seg_data[3]_i_8 
       (.I0(data4),
        .I1(op_IBUF[0]),
        .I2(in_a_IBUF[0]),
        .I3(op_IBUF[1]),
        .I4(in_b_IBUF[0]),
        .O(\seg_data[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h02A020A2AA2A2A02)) 
    \seg_data[4]_i_2 
       (.I0(\seg_data_reg[3] ),
        .I1(\seg_data[7]_i_15_0 ),
        .I2(\seg_data[6]_i_6_n_0 ),
        .I3(\seg_data[7]_i_7_n_0 ),
        .I4(\op[2] ),
        .I5(\seg_data[3]_i_2_n_0 ),
        .O(\digit_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hFFFFC1CC)) 
    \seg_data[4]_i_3 
       (.I0(\seg_data[5]_i_3_n_0 ),
        .I1(\seg_data[4]_i_5_n_0 ),
        .I2(\seg_data[7]_i_7_n_0 ),
        .I3(\seg_data[7]_i_8_n_0 ),
        .I4(\seg_data[7]_i_11_n_0 ),
        .O(\digit_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hA000D00AD00A000D)) 
    \seg_data[4]_i_5 
       (.I0(\seg_data[5]_i_9_n_0 ),
        .I1(\seg_data[5]_i_7_n_0 ),
        .I2(\seg_data[5]_i_12_n_0 ),
        .I3(\seg_data[5]_i_11_n_0 ),
        .I4(\seg_data[5]_i_10_n_0 ),
        .I5(\seg_data[5]_i_8_n_0 ),
        .O(\seg_data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA002A)) 
    \seg_data[5]_i_1 
       (.I0(\seg_data[5]_i_2_n_0 ),
        .I1(\seg_data[5]_i_3_n_0 ),
        .I2(\seg_data[5]_i_4_n_0 ),
        .I3(\seg_data[5]_i_5_n_0 ),
        .I4(\seg_data_reg[5] ),
        .I5(Q[0]),
        .O(\digit_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000CB80FFFF)) 
    \seg_data[5]_i_10 
       (.I0(in_b_IBUF[6]),
        .I1(op_IBUF[1]),
        .I2(in_a_IBUF[6]),
        .I3(op_IBUF[0]),
        .I4(op_IBUF[2]),
        .I5(\seg_data[5]_i_20_n_0 ),
        .O(\seg_data[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA0808A00AAAAAAAA)) 
    \seg_data[5]_i_11 
       (.I0(\seg_data[5]_i_21_n_0 ),
        .I1(in_b_IBUF[7]),
        .I2(op_IBUF[1]),
        .I3(op_IBUF[0]),
        .I4(in_a_IBUF[7]),
        .I5(op_IBUF[2]),
        .O(\seg_data[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000057F77FF7)) 
    \seg_data[5]_i_12 
       (.I0(op_IBUF[2]),
        .I1(op_IBUF[0]),
        .I2(in_a_IBUF[5]),
        .I3(op_IBUF[1]),
        .I4(in_b_IBUF[5]),
        .I5(\seg_data[5]_i_22_n_0 ),
        .O(\seg_data[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h1887E778)) 
    \seg_data[5]_i_13 
       (.I0(\seg_data[5]_i_12_n_0 ),
        .I1(\seg_data[5]_i_11_n_0 ),
        .I2(\seg_data[5]_i_10_n_0 ),
        .I3(\seg_data[5]_i_8_n_0 ),
        .I4(\seg_data[5]_i_9_n_0 ),
        .O(\seg_data[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000540455555404)) 
    \seg_data[5]_i_17 
       (.I0(op_IBUF[2]),
        .I1(data0[2]),
        .I2(op_IBUF[0]),
        .I3(data1[2]),
        .I4(op_IBUF[1]),
        .I5(\seg_data[5]_i_7_0 ),
        .O(\seg_data[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000540455555404)) 
    \seg_data[5]_i_18 
       (.I0(op_IBUF[2]),
        .I1(data0[4]),
        .I2(op_IBUF[0]),
        .I3(data1[4]),
        .I4(op_IBUF[1]),
        .I5(\seg_data[5]_i_8_0 ),
        .O(\seg_data[5]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \seg_data[5]_i_19 
       (.I0(\seg_data[5]_i_9_0 ),
        .I1(op_IBUF[1]),
        .I2(data1[3]),
        .I3(op_IBUF[0]),
        .I4(data0[3]),
        .O(\seg_data[5]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hF700FFFF)) 
    \seg_data[5]_i_2 
       (.I0(\seg_data[7]_i_15_0 ),
        .I1(\op[2] ),
        .I2(\seg_data[7]_i_10_0 ),
        .I3(\seg_data_reg[3] ),
        .I4(Q[1]),
        .O(\seg_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA02A2)) 
    \seg_data[5]_i_20 
       (.I0(\seg_data[5]_i_10_0 ),
        .I1(data0[6]),
        .I2(op_IBUF[0]),
        .I3(data1[6]),
        .I4(op_IBUF[1]),
        .I5(op_IBUF[2]),
        .O(\seg_data[5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00E2FFFFFFFF)) 
    \seg_data[5]_i_21 
       (.I0(data0[7]),
        .I1(op_IBUF[0]),
        .I2(data1[7]),
        .I3(op_IBUF[1]),
        .I4(op_IBUF[2]),
        .I5(\seg_data[5]_i_11_0 ),
        .O(\seg_data[5]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000540455555404)) 
    \seg_data[5]_i_22 
       (.I0(op_IBUF[2]),
        .I1(data0[5]),
        .I2(op_IBUF[0]),
        .I3(data1[5]),
        .I4(op_IBUF[1]),
        .I5(\seg_data[5]_i_12_0 ),
        .O(\seg_data[5]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0C0000310031C70C)) 
    \seg_data[5]_i_3 
       (.I0(\seg_data[5]_i_7_n_0 ),
        .I1(\seg_data[5]_i_8_n_0 ),
        .I2(\seg_data[5]_i_9_n_0 ),
        .I3(\seg_data[5]_i_10_n_0 ),
        .I4(\seg_data[5]_i_11_n_0 ),
        .I5(\seg_data[5]_i_12_n_0 ),
        .O(\seg_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA0800AA0055AA08)) 
    \seg_data[5]_i_4 
       (.I0(\seg_data[5]_i_13_n_0 ),
        .I1(\seg_data[6]_i_6_n_0 ),
        .I2(\seg_data[7]_i_10_n_0 ),
        .I3(\seg_data[5]_i_7_n_0 ),
        .I4(\seg_data[7]_i_9_n_0 ),
        .I5(\seg_data[5]_i_9_n_0 ),
        .O(\seg_data[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \seg_data[5]_i_5 
       (.I0(\seg_data[7]_i_8_n_0 ),
        .I1(\seg_data[7]_i_9_n_0 ),
        .I2(\seg_data[7]_i_11_n_0 ),
        .O(\seg_data[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1115551515555515)) 
    \seg_data[5]_i_7 
       (.I0(\seg_data[5]_i_17_n_0 ),
        .I1(op_IBUF[2]),
        .I2(op_IBUF[0]),
        .I3(in_a_IBUF[2]),
        .I4(op_IBUF[1]),
        .I5(in_b_IBUF[2]),
        .O(\seg_data[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1115551515555515)) 
    \seg_data[5]_i_8 
       (.I0(\seg_data[5]_i_18_n_0 ),
        .I1(op_IBUF[2]),
        .I2(op_IBUF[0]),
        .I3(in_a_IBUF[4]),
        .I4(op_IBUF[1]),
        .I5(in_b_IBUF[4]),
        .O(\seg_data[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hC8B0FFFFC8B00000)) 
    \seg_data[5]_i_9 
       (.I0(in_b_IBUF[3]),
        .I1(op_IBUF[1]),
        .I2(op_IBUF[0]),
        .I3(in_a_IBUF[3]),
        .I4(op_IBUF[2]),
        .I5(\seg_data[5]_i_19_n_0 ),
        .O(\seg_data[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AA8AA8AAAAA8A)) 
    \seg_data[6]_i_2 
       (.I0(\seg_data_reg[3] ),
        .I1(\seg_data[6]_i_5_n_0 ),
        .I2(\seg_data[3]_i_2_n_0 ),
        .I3(\seg_data[6]_i_6_n_0 ),
        .I4(\seg_data[7]_i_7_n_0 ),
        .I5(\op[2] ),
        .O(\digit_reg[3]_1 ));
  LUT5 #(
    .INIT(32'hF0F0FEFF)) 
    \seg_data[6]_i_3 
       (.I0(\seg_data[5]_i_4_n_0 ),
        .I1(\seg_data[6]_i_7_n_0 ),
        .I2(\seg_data[7]_i_11_n_0 ),
        .I3(\seg_data[7]_i_8_n_0 ),
        .I4(\seg_data[7]_i_9_n_0 ),
        .O(\digit_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h828AC392C3614104)) 
    \seg_data[6]_i_5 
       (.I0(\seg_data[7]_i_10_n_0 ),
        .I1(\seg_data[5]_i_9_n_0 ),
        .I2(\seg_data[7]_i_9_n_0 ),
        .I3(\seg_data[6]_i_6_n_0 ),
        .I4(\seg_data[5]_i_7_n_0 ),
        .I5(\seg_data[5]_i_13_n_0 ),
        .O(\seg_data[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h03AAFFAA3FAA33AA)) 
    \seg_data[6]_i_6 
       (.I0(\seg_data[6]_i_9_n_0 ),
        .I1(op_IBUF[0]),
        .I2(in_b_IBUF[1]),
        .I3(op_IBUF[2]),
        .I4(op_IBUF[1]),
        .I5(in_a_IBUF[1]),
        .O(\seg_data[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0999606060600666)) 
    \seg_data[6]_i_7 
       (.I0(\seg_data[7]_i_8_n_0 ),
        .I1(\seg_data[5]_i_8_n_0 ),
        .I2(\seg_data[5]_i_7_n_0 ),
        .I3(\seg_data[6]_i_6_n_0 ),
        .I4(\seg_data[7]_i_9_n_0 ),
        .I5(\seg_data[5]_i_9_n_0 ),
        .O(\seg_data[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h05F3F503F50305F3)) 
    \seg_data[6]_i_9 
       (.I0(data1[1]),
        .I1(data0[1]),
        .I2(op_IBUF[1]),
        .I3(op_IBUF[0]),
        .I4(in_a_IBUF[0]),
        .I5(in_a_IBUF[1]),
        .O(\seg_data[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hE667866667796661)) 
    \seg_data[7]_i_10 
       (.I0(\seg_data[5]_i_8_n_0 ),
        .I1(\seg_data[5]_i_10_n_0 ),
        .I2(\seg_data[5]_i_11_n_0 ),
        .I3(\seg_data[5]_i_12_n_0 ),
        .I4(\seg_data[5]_i_7_n_0 ),
        .I5(\seg_data[5]_i_9_n_0 ),
        .O(\seg_data[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hABFF)) 
    \seg_data[7]_i_11 
       (.I0(\seg_data[7]_i_16_n_0 ),
        .I1(\seg_data[7]_i_8_n_0 ),
        .I2(\seg_data[7]_i_10_n_0 ),
        .I3(Q[2]),
        .O(\seg_data[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1666E99968899776)) 
    \seg_data[7]_i_14 
       (.I0(\seg_data[5]_i_12_n_0 ),
        .I1(\seg_data[5]_i_11_n_0 ),
        .I2(\seg_data[5]_i_10_n_0 ),
        .I3(\seg_data[5]_i_8_n_0 ),
        .I4(\seg_data[5]_i_7_n_0 ),
        .I5(\seg_data[5]_i_9_n_0 ),
        .O(\seg_data[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h5442BDD5BDD5422B)) 
    \seg_data[7]_i_15 
       (.I0(\seg_data[5]_i_7_n_0 ),
        .I1(\seg_data[5]_i_9_n_0 ),
        .I2(\seg_data[5]_i_12_n_0 ),
        .I3(\seg_data[5]_i_11_n_0 ),
        .I4(\seg_data[5]_i_10_n_0 ),
        .I5(\seg_data[5]_i_8_n_0 ),
        .O(\seg_data[7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFD0)) 
    \seg_data[7]_i_16 
       (.I0(\seg_data[5]_i_12_n_0 ),
        .I1(\seg_data[5]_i_10_n_0 ),
        .I2(\seg_data[5]_i_11_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\seg_data[7]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF4B00)) 
    \seg_data[7]_i_3 
       (.I0(\seg_data[7]_i_7_n_0 ),
        .I1(\seg_data[7]_i_8_n_0 ),
        .I2(\seg_data[7]_i_9_n_0 ),
        .I3(\seg_data[7]_i_10_n_0 ),
        .I4(\seg_data[7]_i_11_n_0 ),
        .O(\digit_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hA3E80E238F8C3A3B)) 
    \seg_data[7]_i_6 
       (.I0(\op[2] ),
        .I1(\seg_data[7]_i_10_n_0 ),
        .I2(\seg_data[7]_i_14_n_0 ),
        .I3(\seg_data[6]_i_6_n_0 ),
        .I4(\seg_data[5]_i_7_n_0 ),
        .I5(\seg_data[7]_i_15_n_0 ),
        .O(\seg_data[7]_i_15_0 ));
  LUT6 #(
    .INIT(64'hEA77BBEAA82211A8)) 
    \seg_data[7]_i_7 
       (.I0(\seg_data[5]_i_13_n_0 ),
        .I1(\seg_data[5]_i_7_n_0 ),
        .I2(\seg_data[6]_i_6_n_0 ),
        .I3(\seg_data[7]_i_9_n_0 ),
        .I4(\seg_data[5]_i_9_n_0 ),
        .I5(\seg_data[7]_i_10_n_0 ),
        .O(\seg_data[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hCBB3)) 
    \seg_data[7]_i_8 
       (.I0(\seg_data[5]_i_8_n_0 ),
        .I1(\seg_data[5]_i_10_n_0 ),
        .I2(\seg_data[5]_i_11_n_0 ),
        .I3(\seg_data[5]_i_12_n_0 ),
        .O(\seg_data[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0778877E)) 
    \seg_data[7]_i_9 
       (.I0(\seg_data[5]_i_8_n_0 ),
        .I1(\seg_data[5]_i_10_n_0 ),
        .I2(\seg_data[5]_i_11_n_0 ),
        .I3(\seg_data[5]_i_12_n_0 ),
        .I4(\seg_data[5]_i_9_n_0 ),
        .O(\seg_data[7]_i_9_n_0 ));
  MUXF7 \seg_data_reg[3]_i_4 
       (.I0(\seg_data[3]_i_7_n_0 ),
        .I1(\seg_data[3]_i_8_n_0 ),
        .O(\op[2] ),
        .S(op_IBUF[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sub_res_w_carry
       (.CI(1'b0),
        .CO({sub_res_w_carry_n_0,NLW_sub_res_w_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(in_a_IBUF[3:0]),
        .O(data1[3:0]),
        .S({sub_res_w_carry_i_1_n_0,sub_res_w_carry_i_2_n_0,sub_res_w_carry_i_3_n_0,sub_res_w_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sub_res_w_carry__0
       (.CI(sub_res_w_carry_n_0),
        .CO(NLW_sub_res_w_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,in_a_IBUF[6:4]}),
        .O(data1[7:4]),
        .S(\seg_data[5]_i_18_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    sub_res_w_carry_i_1
       (.I0(in_b_IBUF[3]),
        .I1(in_a_IBUF[3]),
        .O(sub_res_w_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_res_w_carry_i_2
       (.I0(in_b_IBUF[2]),
        .I1(in_a_IBUF[2]),
        .O(sub_res_w_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_res_w_carry_i_3
       (.I0(in_b_IBUF[1]),
        .I1(in_a_IBUF[1]),
        .O(sub_res_w_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_res_w_carry_i_4
       (.I0(in_b_IBUF[0]),
        .I1(in_a_IBUF[0]),
        .O(sub_res_w_carry_i_4_n_0));
endmodule

module clk_divider
   (clk_out_reg_0,
    clk);
  output clk_out_reg_0;
  input clk;

  wire clear;
  wire clk;
  wire clk_out_i_1_n_0;
  wire clk_out_reg_0;
  wire \cntr[0]_i_4_n_0 ;
  wire \cntr[0]_i_5_n_0 ;
  wire \cntr[0]_i_6_n_0 ;
  wire \cntr[0]_i_7_n_0 ;
  wire \cntr[0]_i_8_n_0 ;
  wire [25:0]cntr_reg;
  wire \cntr_reg[0]_i_10_n_0 ;
  wire \cntr_reg[0]_i_10_n_4 ;
  wire \cntr_reg[0]_i_10_n_5 ;
  wire \cntr_reg[0]_i_10_n_6 ;
  wire \cntr_reg[0]_i_10_n_7 ;
  wire \cntr_reg[0]_i_11_n_0 ;
  wire \cntr_reg[0]_i_11_n_4 ;
  wire \cntr_reg[0]_i_12_n_0 ;
  wire \cntr_reg[0]_i_12_n_4 ;
  wire \cntr_reg[0]_i_12_n_5 ;
  wire \cntr_reg[0]_i_12_n_6 ;
  wire \cntr_reg[0]_i_12_n_7 ;
  wire \cntr_reg[0]_i_13_n_7 ;
  wire \cntr_reg[0]_i_14_n_0 ;
  wire \cntr_reg[0]_i_14_n_4 ;
  wire \cntr_reg[0]_i_14_n_5 ;
  wire \cntr_reg[0]_i_14_n_6 ;
  wire \cntr_reg[0]_i_14_n_7 ;
  wire \cntr_reg[0]_i_2_n_0 ;
  wire \cntr_reg[0]_i_2_n_4 ;
  wire \cntr_reg[0]_i_2_n_5 ;
  wire \cntr_reg[0]_i_2_n_6 ;
  wire \cntr_reg[0]_i_2_n_7 ;
  wire \cntr_reg[0]_i_3_n_0 ;
  wire \cntr_reg[0]_i_3_n_4 ;
  wire \cntr_reg[0]_i_3_n_5 ;
  wire \cntr_reg[0]_i_3_n_6 ;
  wire \cntr_reg[0]_i_3_n_7 ;
  wire \cntr_reg[0]_i_9_n_0 ;
  wire \cntr_reg[0]_i_9_n_4 ;
  wire \cntr_reg[0]_i_9_n_5 ;
  wire \cntr_reg[0]_i_9_n_6 ;
  wire \cntr_reg[0]_i_9_n_7 ;
  wire \cntr_reg[12]_i_1_n_0 ;
  wire \cntr_reg[12]_i_1_n_4 ;
  wire \cntr_reg[12]_i_1_n_5 ;
  wire \cntr_reg[12]_i_1_n_6 ;
  wire \cntr_reg[12]_i_1_n_7 ;
  wire \cntr_reg[16]_i_1_n_0 ;
  wire \cntr_reg[16]_i_1_n_4 ;
  wire \cntr_reg[16]_i_1_n_5 ;
  wire \cntr_reg[16]_i_1_n_6 ;
  wire \cntr_reg[16]_i_1_n_7 ;
  wire \cntr_reg[20]_i_1_n_0 ;
  wire \cntr_reg[20]_i_1_n_4 ;
  wire \cntr_reg[20]_i_1_n_5 ;
  wire \cntr_reg[20]_i_1_n_6 ;
  wire \cntr_reg[20]_i_1_n_7 ;
  wire \cntr_reg[24]_i_1_n_6 ;
  wire \cntr_reg[24]_i_1_n_7 ;
  wire \cntr_reg[4]_i_1_n_0 ;
  wire \cntr_reg[4]_i_1_n_4 ;
  wire \cntr_reg[4]_i_1_n_5 ;
  wire \cntr_reg[4]_i_1_n_6 ;
  wire \cntr_reg[4]_i_1_n_7 ;
  wire \cntr_reg[8]_i_1_n_0 ;
  wire \cntr_reg[8]_i_1_n_4 ;
  wire \cntr_reg[8]_i_1_n_5 ;
  wire \cntr_reg[8]_i_1_n_6 ;
  wire \cntr_reg[8]_i_1_n_7 ;
  wire [2:0]\NLW_cntr_reg[0]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_cntr_reg[0]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_cntr_reg[0]_i_11_O_UNCONNECTED ;
  wire [2:0]\NLW_cntr_reg[0]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_cntr_reg[0]_i_13_CO_UNCONNECTED ;
  wire [3:1]\NLW_cntr_reg[0]_i_13_O_UNCONNECTED ;
  wire [2:0]\NLW_cntr_reg[0]_i_14_CO_UNCONNECTED ;
  wire [2:0]\NLW_cntr_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cntr_reg[0]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_cntr_reg[0]_i_9_CO_UNCONNECTED ;
  wire [2:0]\NLW_cntr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cntr_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cntr_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cntr_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_cntr_reg[24]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_cntr_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cntr_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    clk_out_i_1
       (.I0(clear),
        .I1(clk_out_reg_0),
        .O(clk_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_out_i_1_n_0),
        .Q(clk_out_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8880)) 
    \cntr[0]_i_1 
       (.I0(\cntr_reg[0]_i_3_n_5 ),
        .I1(\cntr_reg[0]_i_3_n_6 ),
        .I2(\cntr[0]_i_4_n_0 ),
        .I3(\cntr[0]_i_5_n_0 ),
        .I4(\cntr[0]_i_6_n_0 ),
        .I5(\cntr[0]_i_7_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'hFFA8000000000000)) 
    \cntr[0]_i_4 
       (.I0(\cntr_reg[0]_i_10_n_6 ),
        .I1(\cntr_reg[0]_i_11_n_4 ),
        .I2(\cntr_reg[0]_i_10_n_7 ),
        .I3(\cntr_reg[0]_i_10_n_5 ),
        .I4(\cntr_reg[0]_i_10_n_4 ),
        .I5(\cntr_reg[0]_i_9_n_7 ),
        .O(\cntr[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntr[0]_i_5 
       (.I0(\cntr_reg[0]_i_9_n_4 ),
        .I1(\cntr_reg[0]_i_3_n_7 ),
        .I2(\cntr_reg[0]_i_9_n_6 ),
        .I3(\cntr_reg[0]_i_9_n_5 ),
        .O(\cntr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cntr[0]_i_6 
       (.I0(\cntr_reg[0]_i_12_n_7 ),
        .I1(\cntr_reg[0]_i_12_n_4 ),
        .I2(\cntr_reg[0]_i_13_n_7 ),
        .I3(\cntr_reg[0]_i_12_n_5 ),
        .I4(\cntr_reg[0]_i_14_n_6 ),
        .I5(\cntr_reg[0]_i_3_n_4 ),
        .O(\cntr[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntr[0]_i_7 
       (.I0(\cntr_reg[0]_i_12_n_6 ),
        .I1(\cntr_reg[0]_i_14_n_4 ),
        .I2(\cntr_reg[0]_i_14_n_7 ),
        .I3(\cntr_reg[0]_i_14_n_5 ),
        .O(\cntr[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cntr[0]_i_8 
       (.I0(cntr_reg[0]),
        .O(\cntr[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[0]_i_2_n_7 ),
        .Q(cntr_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cntr_reg[0]_i_10 
       (.CI(\cntr_reg[0]_i_11_n_0 ),
        .CO({\cntr_reg[0]_i_10_n_0 ,\NLW_cntr_reg[0]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[0]_i_10_n_4 ,\cntr_reg[0]_i_10_n_5 ,\cntr_reg[0]_i_10_n_6 ,\cntr_reg[0]_i_10_n_7 }),
        .S(cntr_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cntr_reg[0]_i_11 
       (.CI(1'b0),
        .CO({\cntr_reg[0]_i_11_n_0 ,\NLW_cntr_reg[0]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(cntr_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[0]_i_11_n_4 ,\NLW_cntr_reg[0]_i_11_O_UNCONNECTED [2:0]}),
        .S(cntr_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cntr_reg[0]_i_12 
       (.CI(\cntr_reg[0]_i_3_n_0 ),
        .CO({\cntr_reg[0]_i_12_n_0 ,\NLW_cntr_reg[0]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[0]_i_12_n_4 ,\cntr_reg[0]_i_12_n_5 ,\cntr_reg[0]_i_12_n_6 ,\cntr_reg[0]_i_12_n_7 }),
        .S(cntr_reg[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cntr_reg[0]_i_13 
       (.CI(\cntr_reg[0]_i_14_n_0 ),
        .CO(\NLW_cntr_reg[0]_i_13_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cntr_reg[0]_i_13_O_UNCONNECTED [3:1],\cntr_reg[0]_i_13_n_7 }),
        .S({1'b0,1'b0,1'b0,cntr_reg[25]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cntr_reg[0]_i_14 
       (.CI(\cntr_reg[0]_i_12_n_0 ),
        .CO({\cntr_reg[0]_i_14_n_0 ,\NLW_cntr_reg[0]_i_14_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[0]_i_14_n_4 ,\cntr_reg[0]_i_14_n_5 ,\cntr_reg[0]_i_14_n_6 ,\cntr_reg[0]_i_14_n_7 }),
        .S(cntr_reg[24:21]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cntr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cntr_reg[0]_i_2_n_0 ,\NLW_cntr_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cntr_reg[0]_i_2_n_4 ,\cntr_reg[0]_i_2_n_5 ,\cntr_reg[0]_i_2_n_6 ,\cntr_reg[0]_i_2_n_7 }),
        .S({cntr_reg[3:1],\cntr[0]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cntr_reg[0]_i_3 
       (.CI(\cntr_reg[0]_i_9_n_0 ),
        .CO({\cntr_reg[0]_i_3_n_0 ,\NLW_cntr_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[0]_i_3_n_4 ,\cntr_reg[0]_i_3_n_5 ,\cntr_reg[0]_i_3_n_6 ,\cntr_reg[0]_i_3_n_7 }),
        .S(cntr_reg[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cntr_reg[0]_i_9 
       (.CI(\cntr_reg[0]_i_10_n_0 ),
        .CO({\cntr_reg[0]_i_9_n_0 ,\NLW_cntr_reg[0]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[0]_i_9_n_4 ,\cntr_reg[0]_i_9_n_5 ,\cntr_reg[0]_i_9_n_6 ,\cntr_reg[0]_i_9_n_7 }),
        .S(cntr_reg[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[8]_i_1_n_5 ),
        .Q(cntr_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[8]_i_1_n_4 ),
        .Q(cntr_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[12]_i_1_n_7 ),
        .Q(cntr_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cntr_reg[12]_i_1 
       (.CI(\cntr_reg[8]_i_1_n_0 ),
        .CO({\cntr_reg[12]_i_1_n_0 ,\NLW_cntr_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[12]_i_1_n_4 ,\cntr_reg[12]_i_1_n_5 ,\cntr_reg[12]_i_1_n_6 ,\cntr_reg[12]_i_1_n_7 }),
        .S(cntr_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[12]_i_1_n_6 ),
        .Q(cntr_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[12]_i_1_n_5 ),
        .Q(cntr_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[12]_i_1_n_4 ),
        .Q(cntr_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[16]_i_1_n_7 ),
        .Q(cntr_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cntr_reg[16]_i_1 
       (.CI(\cntr_reg[12]_i_1_n_0 ),
        .CO({\cntr_reg[16]_i_1_n_0 ,\NLW_cntr_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[16]_i_1_n_4 ,\cntr_reg[16]_i_1_n_5 ,\cntr_reg[16]_i_1_n_6 ,\cntr_reg[16]_i_1_n_7 }),
        .S(cntr_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[16]_i_1_n_6 ),
        .Q(cntr_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[16]_i_1_n_5 ),
        .Q(cntr_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[16]_i_1_n_4 ),
        .Q(cntr_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[0]_i_2_n_6 ),
        .Q(cntr_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[20]_i_1_n_7 ),
        .Q(cntr_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cntr_reg[20]_i_1 
       (.CI(\cntr_reg[16]_i_1_n_0 ),
        .CO({\cntr_reg[20]_i_1_n_0 ,\NLW_cntr_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[20]_i_1_n_4 ,\cntr_reg[20]_i_1_n_5 ,\cntr_reg[20]_i_1_n_6 ,\cntr_reg[20]_i_1_n_7 }),
        .S(cntr_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[20]_i_1_n_6 ),
        .Q(cntr_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[20]_i_1_n_5 ),
        .Q(cntr_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[20]_i_1_n_4 ),
        .Q(cntr_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[24]_i_1_n_7 ),
        .Q(cntr_reg[24]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cntr_reg[24]_i_1 
       (.CI(\cntr_reg[20]_i_1_n_0 ),
        .CO(\NLW_cntr_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cntr_reg[24]_i_1_O_UNCONNECTED [3:2],\cntr_reg[24]_i_1_n_6 ,\cntr_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,cntr_reg[25:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[24]_i_1_n_6 ),
        .Q(cntr_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[0]_i_2_n_5 ),
        .Q(cntr_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[0]_i_2_n_4 ),
        .Q(cntr_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[4]_i_1_n_7 ),
        .Q(cntr_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cntr_reg[4]_i_1 
       (.CI(\cntr_reg[0]_i_2_n_0 ),
        .CO({\cntr_reg[4]_i_1_n_0 ,\NLW_cntr_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[4]_i_1_n_4 ,\cntr_reg[4]_i_1_n_5 ,\cntr_reg[4]_i_1_n_6 ,\cntr_reg[4]_i_1_n_7 }),
        .S(cntr_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[4]_i_1_n_6 ),
        .Q(cntr_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[4]_i_1_n_5 ),
        .Q(cntr_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[4]_i_1_n_4 ),
        .Q(cntr_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[8]_i_1_n_7 ),
        .Q(cntr_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cntr_reg[8]_i_1 
       (.CI(\cntr_reg[4]_i_1_n_0 ),
        .CO({\cntr_reg[8]_i_1_n_0 ,\NLW_cntr_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntr_reg[8]_i_1_n_4 ,\cntr_reg[8]_i_1_n_5 ,\cntr_reg[8]_i_1_n_6 ,\cntr_reg[8]_i_1_n_7 }),
        .S(cntr_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cntr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\cntr_reg[8]_i_1_n_6 ),
        .Q(cntr_reg[9]),
        .R(clear));
endmodule

module fnd_contr
   (Q,
    \in_a[7] ,
    DI,
    S,
    \digit_reg[1]_0 ,
    \digit_reg[1]_1 ,
    \digit_reg[3]_0 ,
    \op[0] ,
    \op[0]_0 ,
    \op[0]_1 ,
    \op[0]_2 ,
    \in_b[7] ,
    \in_a[6] ,
    \in_a[6]_0 ,
    fnd_value_OBUF,
    in_b_IBUF,
    in_a_IBUF,
    \seg_data_reg[7]_0 ,
    \seg_data_reg[1]_0 ,
    \seg_data_reg[1]_1 ,
    \seg_data_reg[4]_0 ,
    \seg_data_reg[4]_1 ,
    \seg_data_reg[6]_0 ,
    \seg_data_reg[6]_1 ,
    \seg_data_reg[2]_0 ,
    \seg_data_reg[2]_1 ,
    \seg_data_reg[2]_2 ,
    \seg_data_reg[2]_3 ,
    op_IBUF,
    reset_IBUF,
    \digit_reg[7]_0 ,
    \seg_data_reg[5]_0 ,
    \seg_data_reg[3]_0 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7);
  output [7:0]Q;
  output [3:0]\in_a[7] ;
  output [3:0]DI;
  output [3:0]S;
  output \digit_reg[1]_0 ;
  output \digit_reg[1]_1 ;
  output \digit_reg[3]_0 ;
  output \op[0] ;
  output \op[0]_0 ;
  output \op[0]_1 ;
  output \op[0]_2 ;
  output [3:0]\in_b[7] ;
  output \in_a[6] ;
  output \in_a[6]_0 ;
  output [6:0]fnd_value_OBUF;
  input [7:0]in_b_IBUF;
  input [7:0]in_a_IBUF;
  input \seg_data_reg[7]_0 ;
  input \seg_data_reg[1]_0 ;
  input \seg_data_reg[1]_1 ;
  input \seg_data_reg[4]_0 ;
  input \seg_data_reg[4]_1 ;
  input \seg_data_reg[6]_0 ;
  input \seg_data_reg[6]_1 ;
  input \seg_data_reg[2]_0 ;
  input \seg_data_reg[2]_1 ;
  input \seg_data_reg[2]_2 ;
  input \seg_data_reg[2]_3 ;
  input [1:0]op_IBUF;
  input reset_IBUF;
  input \digit_reg[7]_0 ;
  input \seg_data_reg[5]_0 ;
  input \seg_data_reg[3]_0 ;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;

  wire [3:0]DI;
  wire [7:0]Q;
  wire [3:0]S;
  wire \_inferred__0/i__n_0 ;
  wire \digit[7]_i_1_n_0 ;
  wire \digit_reg[0]_lopt_replica_1 ;
  wire \digit_reg[1]_0 ;
  wire \digit_reg[1]_1 ;
  wire \digit_reg[1]_lopt_replica_1 ;
  wire \digit_reg[2]_lopt_replica_1 ;
  wire \digit_reg[3]_0 ;
  wire \digit_reg[3]_lopt_replica_1 ;
  wire \digit_reg[4]_lopt_replica_1 ;
  wire \digit_reg[5]_lopt_replica_1 ;
  wire \digit_reg[6]_lopt_replica_1 ;
  wire \digit_reg[7]_0 ;
  wire \digit_reg[7]_lopt_replica_1 ;
  wire [6:0]fnd_value_OBUF;
  wire \in_a[6] ;
  wire \in_a[6]_0 ;
  wire [3:0]\in_a[7] ;
  wire [7:0]in_a_IBUF;
  wire [3:0]\in_b[7] ;
  wire [7:0]in_b_IBUF;
  wire \op[0] ;
  wire \op[0]_0 ;
  wire \op[0]_1 ;
  wire \op[0]_2 ;
  wire [1:0]op_IBUF;
  wire reset_IBUF;
  wire \seg_data[1]_i_1_n_0 ;
  wire \seg_data[1]_i_4_n_0 ;
  wire \seg_data[1]_i_5_n_0 ;
  wire \seg_data[2]_i_1_n_0 ;
  wire \seg_data[2]_i_2_n_0 ;
  wire \seg_data[2]_i_4_n_0 ;
  wire \seg_data[2]_i_7_n_0 ;
  wire \seg_data[3]_i_10_n_0 ;
  wire \seg_data[3]_i_11_n_0 ;
  wire \seg_data[4]_i_1_n_0 ;
  wire \seg_data[4]_i_4_n_0 ;
  wire \seg_data[4]_i_6_n_0 ;
  wire \seg_data[5]_i_14_n_0 ;
  wire \seg_data[5]_i_15_n_0 ;
  wire \seg_data[5]_i_16_n_0 ;
  wire \seg_data[5]_i_29_n_0 ;
  wire \seg_data[5]_i_30_n_0 ;
  wire \seg_data[5]_i_31_n_0 ;
  wire \seg_data[5]_i_32_n_0 ;
  wire \seg_data[6]_i_1_n_0 ;
  wire \seg_data[6]_i_4_n_0 ;
  wire \seg_data[6]_i_8_n_0 ;
  wire \seg_data[7]_i_12_n_0 ;
  wire \seg_data[7]_i_13_n_0 ;
  wire \seg_data[7]_i_17_n_0 ;
  wire \seg_data[7]_i_1_n_0 ;
  wire \seg_data[7]_i_2_n_0 ;
  wire \seg_data[7]_i_4_n_0 ;
  wire \seg_data[7]_i_5_n_0 ;
  wire \seg_data_reg[1]_0 ;
  wire \seg_data_reg[1]_1 ;
  wire \seg_data_reg[2]_0 ;
  wire \seg_data_reg[2]_1 ;
  wire \seg_data_reg[2]_2 ;
  wire \seg_data_reg[2]_3 ;
  wire \seg_data_reg[3]_0 ;
  wire \seg_data_reg[4]_0 ;
  wire \seg_data_reg[4]_1 ;
  wire \seg_data_reg[5]_0 ;
  wire \seg_data_reg[6]_0 ;
  wire \seg_data_reg[6]_1 ;
  wire \seg_data_reg[7]_0 ;

  assign lopt = \digit_reg[0]_lopt_replica_1 ;
  assign lopt_1 = \digit_reg[1]_lopt_replica_1 ;
  assign lopt_2 = \digit_reg[2]_lopt_replica_1 ;
  assign lopt_3 = \digit_reg[3]_lopt_replica_1 ;
  assign lopt_4 = \digit_reg[4]_lopt_replica_1 ;
  assign lopt_5 = \digit_reg[5]_lopt_replica_1 ;
  assign lopt_6 = \digit_reg[6]_lopt_replica_1 ;
  assign lopt_7 = \digit_reg[7]_lopt_replica_1 ;
  LUT3 #(
    .INIT(8'hFE)) 
    \_inferred__0/i_ 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(\_inferred__0/i__n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit[7]_i_1 
       (.I0(reset_IBUF),
        .O(\digit[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \digit_reg[0] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Q[0]),
        .S(\digit[7]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDSE #(
    .INIT(1'b1)) 
    \digit_reg[0]_lopt_replica 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\digit_reg[0]_lopt_replica_1 ),
        .S(\digit[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[1] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[2]),
        .Q(Q[1]),
        .R(\digit[7]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[1]_lopt_replica 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\digit_reg[1]_lopt_replica_1 ),
        .R(\digit[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[2] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Q[2]),
        .R(\digit[7]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[2]_lopt_replica 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\digit_reg[2]_lopt_replica_1 ),
        .R(\digit[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[3] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[4]),
        .Q(Q[3]),
        .R(\digit[7]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[3]_lopt_replica 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\digit_reg[3]_lopt_replica_1 ),
        .R(\digit[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[4] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[5]),
        .Q(Q[4]),
        .R(\digit[7]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[4]_lopt_replica 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\digit_reg[4]_lopt_replica_1 ),
        .R(\digit[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[5] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[6]),
        .Q(Q[5]),
        .R(\digit[7]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[5]_lopt_replica 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\digit_reg[5]_lopt_replica_1 ),
        .R(\digit[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[6] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[7]),
        .Q(Q[6]),
        .R(\digit[7]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[6]_lopt_replica 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\digit_reg[6]_lopt_replica_1 ),
        .R(\digit[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[7] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[0]),
        .Q(Q[7]),
        .R(\digit[7]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[7]_lopt_replica 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\digit_reg[7]_lopt_replica_1 ),
        .R(\digit[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    q0_carry__0_i_1
       (.I0(in_a_IBUF[7]),
        .I1(in_b_IBUF[7]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_carry__0_i_2
       (.I0(in_a_IBUF[6]),
        .I1(in_b_IBUF[6]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_carry__0_i_3
       (.I0(in_a_IBUF[5]),
        .I1(in_b_IBUF[5]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    q0_carry__0_i_4
       (.I0(in_a_IBUF[4]),
        .I1(in_b_IBUF[4]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h40F4)) 
    q2_carry_i_1
       (.I0(in_a_IBUF[6]),
        .I1(in_b_IBUF[6]),
        .I2(in_b_IBUF[7]),
        .I3(in_a_IBUF[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h44D4)) 
    q2_carry_i_2
       (.I0(in_a_IBUF[5]),
        .I1(in_b_IBUF[5]),
        .I2(in_b_IBUF[4]),
        .I3(in_a_IBUF[4]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h44D4)) 
    q2_carry_i_3
       (.I0(in_a_IBUF[3]),
        .I1(in_b_IBUF[3]),
        .I2(in_b_IBUF[2]),
        .I3(in_a_IBUF[2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h44D4)) 
    q2_carry_i_4
       (.I0(in_a_IBUF[1]),
        .I1(in_b_IBUF[1]),
        .I2(in_b_IBUF[0]),
        .I3(in_a_IBUF[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    q2_carry_i_5
       (.I0(in_a_IBUF[7]),
        .I1(in_b_IBUF[7]),
        .I2(in_b_IBUF[6]),
        .I3(in_a_IBUF[6]),
        .O(\in_a[7] [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    q2_carry_i_6
       (.I0(in_b_IBUF[5]),
        .I1(in_a_IBUF[5]),
        .I2(in_b_IBUF[4]),
        .I3(in_a_IBUF[4]),
        .O(\in_a[7] [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    q2_carry_i_7
       (.I0(in_b_IBUF[3]),
        .I1(in_a_IBUF[3]),
        .I2(in_b_IBUF[2]),
        .I3(in_a_IBUF[2]),
        .O(\in_a[7] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    q2_carry_i_8
       (.I0(in_b_IBUF[1]),
        .I1(in_a_IBUF[1]),
        .I2(in_b_IBUF[0]),
        .I3(in_a_IBUF[0]),
        .O(\in_a[7] [0]));
  LUT6 #(
    .INIT(64'h00000000AAAA33F3)) 
    \seg_data[1]_i_1 
       (.I0(\seg_data_reg[1]_0 ),
        .I1(\seg_data_reg[1]_1 ),
        .I2(\seg_data[7]_i_4_n_0 ),
        .I3(\seg_data[1]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\seg_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFE9A9)) 
    \seg_data[1]_i_4 
       (.I0(in_b_IBUF[3]),
        .I1(in_b_IBUF[1]),
        .I2(in_b_IBUF[2]),
        .I3(in_b_IBUF[0]),
        .I4(\seg_data[7]_i_12_n_0 ),
        .I5(\seg_data[1]_i_5_n_0 ),
        .O(\seg_data[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h022802A8)) 
    \seg_data[1]_i_5 
       (.I0(\seg_data[7]_i_17_n_0 ),
        .I1(in_a_IBUF[1]),
        .I2(in_a_IBUF[2]),
        .I3(in_a_IBUF[3]),
        .I4(in_a_IBUF[0]),
        .O(\seg_data[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA33F3)) 
    \seg_data[2]_i_1 
       (.I0(\seg_data[2]_i_2_n_0 ),
        .I1(\seg_data_reg[2]_0 ),
        .I2(\seg_data[7]_i_4_n_0 ),
        .I3(\seg_data[2]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\seg_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000001010101)) 
    \seg_data[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(\seg_data_reg[2]_1 ),
        .I4(\seg_data_reg[2]_2 ),
        .I5(\seg_data_reg[2]_3 ),
        .O(\seg_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFC0E)) 
    \seg_data[2]_i_4 
       (.I0(in_b_IBUF[0]),
        .I1(in_b_IBUF[1]),
        .I2(in_b_IBUF[2]),
        .I3(in_b_IBUF[3]),
        .I4(\seg_data[7]_i_12_n_0 ),
        .I5(\seg_data[2]_i_7_n_0 ),
        .O(\seg_data[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0022AA02)) 
    \seg_data[2]_i_7 
       (.I0(\seg_data[7]_i_17_n_0 ),
        .I1(in_a_IBUF[1]),
        .I2(in_a_IBUF[0]),
        .I3(in_a_IBUF[2]),
        .I4(in_a_IBUF[3]),
        .O(\seg_data[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \seg_data[3]_i_10 
       (.I0(in_b_IBUF[2]),
        .I1(in_b_IBUF[3]),
        .I2(in_b_IBUF[1]),
        .O(\seg_data[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h000002A2)) 
    \seg_data[3]_i_11 
       (.I0(\seg_data[7]_i_17_n_0 ),
        .I1(in_a_IBUF[2]),
        .I2(in_a_IBUF[1]),
        .I3(in_a_IBUF[3]),
        .I4(in_a_IBUF[0]),
        .O(\seg_data[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \seg_data[3]_i_5 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .O(\digit_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFAABAAAAAAAAA)) 
    \seg_data[3]_i_9 
       (.I0(Q[1]),
        .I1(in_b_IBUF[0]),
        .I2(\seg_data[3]_i_10_n_0 ),
        .I3(\seg_data[7]_i_12_n_0 ),
        .I4(\seg_data[3]_i_11_n_0 ),
        .I5(\seg_data[7]_i_4_n_0 ),
        .O(\digit_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA33F3)) 
    \seg_data[4]_i_1 
       (.I0(\seg_data_reg[4]_0 ),
        .I1(\seg_data_reg[4]_1 ),
        .I2(\seg_data[7]_i_4_n_0 ),
        .I3(\seg_data[4]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\seg_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEEBFAEE)) 
    \seg_data[4]_i_4 
       (.I0(\seg_data[7]_i_12_n_0 ),
        .I1(in_b_IBUF[2]),
        .I2(in_b_IBUF[3]),
        .I3(in_b_IBUF[1]),
        .I4(in_b_IBUF[0]),
        .I5(\seg_data[4]_i_6_n_0 ),
        .O(\seg_data[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h145B0000)) 
    \seg_data[4]_i_6 
       (.I0(in_a_IBUF[3]),
        .I1(in_a_IBUF[0]),
        .I2(in_a_IBUF[1]),
        .I3(in_a_IBUF[2]),
        .I4(\seg_data[7]_i_17_n_0 ),
        .O(\seg_data[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFEFEAABA)) 
    \seg_data[5]_i_14 
       (.I0(\seg_data[7]_i_12_n_0 ),
        .I1(in_b_IBUF[2]),
        .I2(in_b_IBUF[1]),
        .I3(in_b_IBUF[0]),
        .I4(in_b_IBUF[3]),
        .O(\seg_data[5]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg_data[5]_i_15 
       (.I0(in_a_IBUF[1]),
        .I1(in_a_IBUF[2]),
        .O(\seg_data[5]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h3700)) 
    \seg_data[5]_i_16 
       (.I0(in_a_IBUF[2]),
        .I1(in_a_IBUF[3]),
        .I2(in_a_IBUF[1]),
        .I3(\seg_data[7]_i_17_n_0 ),
        .O(\seg_data[5]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6339)) 
    \seg_data[5]_i_23 
       (.I0(op_IBUF[0]),
        .I1(in_a_IBUF[2]),
        .I2(in_a_IBUF[0]),
        .I3(in_a_IBUF[1]),
        .O(\op[0]_2 ));
  LUT6 #(
    .INIT(64'h6333333333333339)) 
    \seg_data[5]_i_24 
       (.I0(op_IBUF[0]),
        .I1(in_a_IBUF[4]),
        .I2(in_a_IBUF[3]),
        .I3(in_a_IBUF[2]),
        .I4(in_a_IBUF[1]),
        .I5(in_a_IBUF[0]),
        .O(\op[0] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h9CCCCCC6)) 
    \seg_data[5]_i_25 
       (.I0(op_IBUF[0]),
        .I1(in_a_IBUF[3]),
        .I2(in_a_IBUF[1]),
        .I3(in_a_IBUF[0]),
        .I4(in_a_IBUF[2]),
        .O(\op[0]_1 ));
  LUT5 #(
    .INIT(32'hC939FFFF)) 
    \seg_data[5]_i_26 
       (.I0(\seg_data[5]_i_29_n_0 ),
        .I1(in_a_IBUF[6]),
        .I2(op_IBUF[0]),
        .I3(\seg_data[5]_i_30_n_0 ),
        .I4(op_IBUF[1]),
        .O(\in_a[6] ));
  LUT6 #(
    .INIT(64'h3C870F87FFFFFFFF)) 
    \seg_data[5]_i_27 
       (.I0(\seg_data[5]_i_29_n_0 ),
        .I1(in_a_IBUF[6]),
        .I2(in_a_IBUF[7]),
        .I3(op_IBUF[0]),
        .I4(\seg_data[5]_i_30_n_0 ),
        .I5(op_IBUF[1]),
        .O(\in_a[6]_0 ));
  LUT4 #(
    .INIT(16'hB487)) 
    \seg_data[5]_i_28 
       (.I0(\seg_data[5]_i_31_n_0 ),
        .I1(op_IBUF[0]),
        .I2(in_a_IBUF[5]),
        .I3(\seg_data[5]_i_32_n_0 ),
        .O(\op[0]_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \seg_data[5]_i_29 
       (.I0(in_a_IBUF[0]),
        .I1(in_a_IBUF[1]),
        .I2(in_a_IBUF[2]),
        .I3(in_a_IBUF[3]),
        .I4(in_a_IBUF[4]),
        .I5(in_a_IBUF[5]),
        .O(\seg_data[5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \seg_data[5]_i_30 
       (.I0(in_a_IBUF[4]),
        .I1(in_a_IBUF[0]),
        .I2(in_a_IBUF[1]),
        .I3(in_a_IBUF[2]),
        .I4(in_a_IBUF[3]),
        .I5(in_a_IBUF[5]),
        .O(\seg_data[5]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \seg_data[5]_i_31 
       (.I0(in_a_IBUF[3]),
        .I1(in_a_IBUF[2]),
        .I2(in_a_IBUF[1]),
        .I3(in_a_IBUF[0]),
        .I4(in_a_IBUF[4]),
        .O(\seg_data[5]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \seg_data[5]_i_32 
       (.I0(in_a_IBUF[4]),
        .I1(in_a_IBUF[3]),
        .I2(in_a_IBUF[2]),
        .I3(in_a_IBUF[1]),
        .I4(in_a_IBUF[0]),
        .O(\seg_data[5]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBBAAAAAAAA)) 
    \seg_data[5]_i_6 
       (.I0(Q[1]),
        .I1(\seg_data[5]_i_14_n_0 ),
        .I2(\seg_data[5]_i_15_n_0 ),
        .I3(in_a_IBUF[0]),
        .I4(\seg_data[5]_i_16_n_0 ),
        .I5(\seg_data[7]_i_4_n_0 ),
        .O(\digit_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h00000000AAAA33F3)) 
    \seg_data[6]_i_1 
       (.I0(\seg_data_reg[6]_0 ),
        .I1(\seg_data_reg[6]_1 ),
        .I2(\seg_data[7]_i_4_n_0 ),
        .I3(\seg_data[6]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\seg_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFAEC8)) 
    \seg_data[6]_i_4 
       (.I0(in_b_IBUF[3]),
        .I1(in_b_IBUF[2]),
        .I2(in_b_IBUF[0]),
        .I3(in_b_IBUF[1]),
        .I4(\seg_data[7]_i_12_n_0 ),
        .I5(\seg_data[6]_i_8_n_0 ),
        .O(\seg_data[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h220A022A)) 
    \seg_data[6]_i_8 
       (.I0(\seg_data[7]_i_17_n_0 ),
        .I1(in_a_IBUF[3]),
        .I2(in_a_IBUF[2]),
        .I3(in_a_IBUF[1]),
        .I4(in_a_IBUF[0]),
        .O(\seg_data[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA33F3)) 
    \seg_data[7]_i_1 
       (.I0(\seg_data[7]_i_2_n_0 ),
        .I1(\seg_data_reg[7]_0 ),
        .I2(\seg_data[7]_i_4_n_0 ),
        .I3(\seg_data[7]_i_5_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\seg_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \seg_data[7]_i_12 
       (.I0(Q[4]),
        .I1(in_b_IBUF[7]),
        .I2(in_b_IBUF[4]),
        .I3(in_b_IBUF[5]),
        .I4(in_b_IBUF[6]),
        .O(\seg_data[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2222208A)) 
    \seg_data[7]_i_13 
       (.I0(\seg_data[7]_i_17_n_0 ),
        .I1(in_a_IBUF[3]),
        .I2(in_a_IBUF[0]),
        .I3(in_a_IBUF[2]),
        .I4(in_a_IBUF[1]),
        .O(\seg_data[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \seg_data[7]_i_17 
       (.I0(Q[3]),
        .I1(in_a_IBUF[7]),
        .I2(in_a_IBUF[6]),
        .I3(in_a_IBUF[5]),
        .I4(in_a_IBUF[4]),
        .O(\seg_data[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0101000100010101)) 
    \seg_data[7]_i_2 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(\seg_data_reg[2]_2 ),
        .I4(\seg_data_reg[2]_1 ),
        .I5(\seg_data_reg[2]_3 ),
        .O(\seg_data[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \seg_data[7]_i_4 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\seg_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAFBF9F8)) 
    \seg_data[7]_i_5 
       (.I0(in_b_IBUF[3]),
        .I1(in_b_IBUF[1]),
        .I2(\seg_data[7]_i_12_n_0 ),
        .I3(in_b_IBUF[0]),
        .I4(in_b_IBUF[2]),
        .I5(\seg_data[7]_i_13_n_0 ),
        .O(\seg_data[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[1] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(\seg_data[1]_i_1_n_0 ),
        .Q(fnd_value_OBUF[0]),
        .R(\_inferred__0/i__n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[2] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(\seg_data[2]_i_1_n_0 ),
        .Q(fnd_value_OBUF[1]),
        .R(\_inferred__0/i__n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[3] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(\seg_data_reg[3]_0 ),
        .Q(fnd_value_OBUF[2]),
        .R(\_inferred__0/i__n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[4] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(\seg_data[4]_i_1_n_0 ),
        .Q(fnd_value_OBUF[3]),
        .R(\_inferred__0/i__n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[5] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(\seg_data_reg[5]_0 ),
        .Q(fnd_value_OBUF[4]),
        .R(\_inferred__0/i__n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[6] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(\seg_data[6]_i_1_n_0 ),
        .Q(fnd_value_OBUF[5]),
        .R(\_inferred__0/i__n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[7] 
       (.C(\digit_reg[7]_0 ),
        .CE(1'b1),
        .D(\seg_data[7]_i_1_n_0 ),
        .Q(fnd_value_OBUF[6]),
        .R(\_inferred__0/i__n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    sub_res_w_carry__0_i_1
       (.I0(in_b_IBUF[7]),
        .I1(in_a_IBUF[7]),
        .O(\in_b[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_res_w_carry__0_i_2
       (.I0(in_b_IBUF[6]),
        .I1(in_a_IBUF[6]),
        .O(\in_b[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_res_w_carry__0_i_3
       (.I0(in_b_IBUF[5]),
        .I1(in_a_IBUF[5]),
        .O(\in_b[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_res_w_carry__0_i_4
       (.I0(in_b_IBUF[4]),
        .I1(in_a_IBUF[4]),
        .O(\in_b[7] [0]));
endmodule

(* ECO_CHECKSUM = "77b297b7" *) (* divide = "49999" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module main
   (in_a,
    in_b,
    op,
    clk,
    reset,
    fnd_digit,
    fnd_value);
  input [7:0]in_a;
  input [7:0]in_b;
  input [2:0]op;
  input clk;
  input reset;
  output [7:0]fnd_digit;
  output [7:0]fnd_value;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire divider_n_0;
  wire [7:0]fnd_digit;
  wire [7:0]fnd_digit_OBUF;
  wire [7:0]fnd_value;
  wire [7:1]fnd_value_OBUF;
  wire [7:0]in_a;
  wire [7:0]in_a_IBUF;
  wire [7:0]in_b;
  wire [7:0]in_b_IBUF;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire nolabel_line41_n_0;
  wire nolabel_line41_n_1;
  wire nolabel_line41_n_10;
  wire nolabel_line41_n_11;
  wire nolabel_line41_n_12;
  wire nolabel_line41_n_2;
  wire nolabel_line41_n_3;
  wire nolabel_line41_n_4;
  wire nolabel_line41_n_5;
  wire nolabel_line41_n_6;
  wire nolabel_line41_n_7;
  wire nolabel_line41_n_8;
  wire nolabel_line41_n_9;
  wire nolabel_line47_n_10;
  wire nolabel_line47_n_11;
  wire nolabel_line47_n_12;
  wire nolabel_line47_n_13;
  wire nolabel_line47_n_14;
  wire nolabel_line47_n_15;
  wire nolabel_line47_n_16;
  wire nolabel_line47_n_17;
  wire nolabel_line47_n_18;
  wire nolabel_line47_n_19;
  wire nolabel_line47_n_20;
  wire nolabel_line47_n_21;
  wire nolabel_line47_n_22;
  wire nolabel_line47_n_23;
  wire nolabel_line47_n_24;
  wire nolabel_line47_n_25;
  wire nolabel_line47_n_26;
  wire nolabel_line47_n_27;
  wire nolabel_line47_n_28;
  wire nolabel_line47_n_29;
  wire nolabel_line47_n_30;
  wire nolabel_line47_n_31;
  wire nolabel_line47_n_32;
  wire nolabel_line47_n_8;
  wire nolabel_line47_n_9;
  wire [2:0]op;
  wire [2:0]op_IBUF;
  wire reset;
  wire reset_IBUF;
  wire [7:5]NLW_nolabel_line47_Q_UNCONNECTED;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  clk_divider divider
       (.clk(clk_IBUF_BUFG),
        .clk_out_reg_0(divider_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \fnd_digit_OBUF[0]_inst 
       (.I(lopt),
        .O(fnd_digit[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \fnd_digit_OBUF[1]_inst 
       (.I(lopt_1),
        .O(fnd_digit[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \fnd_digit_OBUF[2]_inst 
       (.I(lopt_2),
        .O(fnd_digit[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \fnd_digit_OBUF[3]_inst 
       (.I(lopt_3),
        .O(fnd_digit[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \fnd_digit_OBUF[4]_inst 
       (.I(lopt_4),
        .O(fnd_digit[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \fnd_digit_OBUF[5]_inst 
       (.I(lopt_5),
        .O(fnd_digit[5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \fnd_digit_OBUF[6]_inst 
       (.I(lopt_6),
        .O(fnd_digit[6]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \fnd_digit_OBUF[7]_inst 
       (.I(lopt_7),
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
  IBUF \in_a_IBUF[0]_inst 
       (.I(in_a[0]),
        .O(in_a_IBUF[0]));
  IBUF \in_a_IBUF[1]_inst 
       (.I(in_a[1]),
        .O(in_a_IBUF[1]));
  IBUF \in_a_IBUF[2]_inst 
       (.I(in_a[2]),
        .O(in_a_IBUF[2]));
  IBUF \in_a_IBUF[3]_inst 
       (.I(in_a[3]),
        .O(in_a_IBUF[3]));
  IBUF \in_a_IBUF[4]_inst 
       (.I(in_a[4]),
        .O(in_a_IBUF[4]));
  IBUF \in_a_IBUF[5]_inst 
       (.I(in_a[5]),
        .O(in_a_IBUF[5]));
  IBUF \in_a_IBUF[6]_inst 
       (.I(in_a[6]),
        .O(in_a_IBUF[6]));
  IBUF \in_a_IBUF[7]_inst 
       (.I(in_a[7]),
        .O(in_a_IBUF[7]));
  IBUF \in_b_IBUF[0]_inst 
       (.I(in_b[0]),
        .O(in_b_IBUF[0]));
  IBUF \in_b_IBUF[1]_inst 
       (.I(in_b[1]),
        .O(in_b_IBUF[1]));
  IBUF \in_b_IBUF[2]_inst 
       (.I(in_b[2]),
        .O(in_b_IBUF[2]));
  IBUF \in_b_IBUF[3]_inst 
       (.I(in_b[3]),
        .O(in_b_IBUF[3]));
  IBUF \in_b_IBUF[4]_inst 
       (.I(in_b[4]),
        .O(in_b_IBUF[4]));
  IBUF \in_b_IBUF[5]_inst 
       (.I(in_b[5]),
        .O(in_b_IBUF[5]));
  IBUF \in_b_IBUF[6]_inst 
       (.I(in_b[6]),
        .O(in_b_IBUF[6]));
  IBUF \in_b_IBUF[7]_inst 
       (.I(in_b[7]),
        .O(in_b_IBUF[7]));
  alu nolabel_line41
       (.DI({nolabel_line47_n_12,nolabel_line47_n_13,nolabel_line47_n_14,nolabel_line47_n_15}),
        .Q(fnd_digit_OBUF[4:0]),
        .S({nolabel_line47_n_16,nolabel_line47_n_17,nolabel_line47_n_18,nolabel_line47_n_19}),
        .\digit_reg[0] (nolabel_line41_n_3),
        .\digit_reg[1] (nolabel_line41_n_0),
        .\digit_reg[2] (nolabel_line41_n_8),
        .\digit_reg[2]_0 (nolabel_line41_n_9),
        .\digit_reg[2]_1 (nolabel_line41_n_10),
        .\digit_reg[2]_2 (nolabel_line41_n_11),
        .\digit_reg[2]_3 (nolabel_line41_n_12),
        .\digit_reg[3] (nolabel_line41_n_4),
        .\digit_reg[3]_0 (nolabel_line41_n_5),
        .\digit_reg[3]_1 (nolabel_line41_n_7),
        .in_a_IBUF(in_a_IBUF),
        .in_b_IBUF(in_b_IBUF),
        .\op[2] (nolabel_line41_n_2),
        .op_IBUF(op_IBUF),
        .\seg_data[3]_i_8_0 ({nolabel_line47_n_8,nolabel_line47_n_9,nolabel_line47_n_10,nolabel_line47_n_11}),
        .\seg_data[5]_i_10_0 (nolabel_line47_n_31),
        .\seg_data[5]_i_11_0 (nolabel_line47_n_32),
        .\seg_data[5]_i_12_0 (nolabel_line47_n_24),
        .\seg_data[5]_i_18_0 ({nolabel_line47_n_27,nolabel_line47_n_28,nolabel_line47_n_29,nolabel_line47_n_30}),
        .\seg_data[5]_i_7_0 (nolabel_line47_n_26),
        .\seg_data[5]_i_8_0 (nolabel_line47_n_23),
        .\seg_data[5]_i_9_0 (nolabel_line47_n_25),
        .\seg_data[7]_i_10_0 (nolabel_line41_n_1),
        .\seg_data[7]_i_15_0 (nolabel_line41_n_6),
        .\seg_data_reg[3] (nolabel_line47_n_22),
        .\seg_data_reg[3]_0 (nolabel_line47_n_20),
        .\seg_data_reg[5] (nolabel_line47_n_21));
  fnd_contr nolabel_line47
       (.DI({nolabel_line47_n_12,nolabel_line47_n_13,nolabel_line47_n_14,nolabel_line47_n_15}),
        .Q({NLW_nolabel_line47_Q_UNCONNECTED[7:5],fnd_digit_OBUF[4:0]}),
        .S({nolabel_line47_n_16,nolabel_line47_n_17,nolabel_line47_n_18,nolabel_line47_n_19}),
        .\digit_reg[1]_0 (nolabel_line47_n_20),
        .\digit_reg[1]_1 (nolabel_line47_n_21),
        .\digit_reg[3]_0 (nolabel_line47_n_22),
        .\digit_reg[7]_0 (divider_n_0),
        .fnd_value_OBUF(fnd_value_OBUF),
        .\in_a[6] (nolabel_line47_n_31),
        .\in_a[6]_0 (nolabel_line47_n_32),
        .\in_a[7] ({nolabel_line47_n_8,nolabel_line47_n_9,nolabel_line47_n_10,nolabel_line47_n_11}),
        .in_a_IBUF(in_a_IBUF),
        .\in_b[7] ({nolabel_line47_n_27,nolabel_line47_n_28,nolabel_line47_n_29,nolabel_line47_n_30}),
        .in_b_IBUF(in_b_IBUF),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .\op[0] (nolabel_line47_n_23),
        .\op[0]_0 (nolabel_line47_n_24),
        .\op[0]_1 (nolabel_line47_n_25),
        .\op[0]_2 (nolabel_line47_n_26),
        .op_IBUF(op_IBUF[1:0]),
        .reset_IBUF(reset_IBUF),
        .\seg_data_reg[1]_0 (nolabel_line41_n_4),
        .\seg_data_reg[1]_1 (nolabel_line41_n_12),
        .\seg_data_reg[2]_0 (nolabel_line41_n_8),
        .\seg_data_reg[2]_1 (nolabel_line41_n_2),
        .\seg_data_reg[2]_2 (nolabel_line41_n_1),
        .\seg_data_reg[2]_3 (nolabel_line41_n_6),
        .\seg_data_reg[3]_0 (nolabel_line41_n_0),
        .\seg_data_reg[4]_0 (nolabel_line41_n_5),
        .\seg_data_reg[4]_1 (nolabel_line41_n_11),
        .\seg_data_reg[5]_0 (nolabel_line41_n_3),
        .\seg_data_reg[6]_0 (nolabel_line41_n_7),
        .\seg_data_reg[6]_1 (nolabel_line41_n_10),
        .\seg_data_reg[7]_0 (nolabel_line41_n_9));
  IBUF \op_IBUF[0]_inst 
       (.I(op[0]),
        .O(op_IBUF[0]));
  IBUF \op_IBUF[1]_inst 
       (.I(op[1]),
        .O(op_IBUF[1]));
  IBUF \op_IBUF[2]_inst 
       (.I(op[2]),
        .O(op_IBUF[2]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
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

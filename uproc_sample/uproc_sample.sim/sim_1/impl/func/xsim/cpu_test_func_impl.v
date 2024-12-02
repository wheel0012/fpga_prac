// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Dec  2 15:57:35 2024
// Host        : JUN running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/wheel/vhdl_prac/uproc_sample/uproc_sample.sim/sim_1/impl/func/xsim/cpu_test_func_impl.v
// Design      : flow
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clk_divider
   (reset,
    clk_out_1_OBUF,
    clk_IBUF_BUFG,
    reset_IBUF);
  output reset;
  output clk_out_1_OBUF;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire clk_IBUF_BUFG;
  wire clk_out_1_OBUF;
  wire clk_out_i_1_n_0;
  wire clk_out_i_2_n_0;
  wire clk_out_i_3_n_0;
  wire [25:1]cntr2;
  wire cntr2_carry__0_n_0;
  wire cntr2_carry__1_n_0;
  wire cntr2_carry__2_n_0;
  wire cntr2_carry__3_n_0;
  wire cntr2_carry_n_0;
  wire \cntr[25]_C_i_2_n_0 ;
  wire \cntr[25]_C_i_3_n_0 ;
  wire \cntr[25]_C_i_4_n_0 ;
  wire \cntr[25]_C_i_5_n_0 ;
  wire \cntr[25]_C_i_6_n_0 ;
  wire \cntr_reg[0]_C_n_0 ;
  wire \cntr_reg[10]_C_n_0 ;
  wire \cntr_reg[11]_C_n_0 ;
  wire \cntr_reg[12]_C_n_0 ;
  wire \cntr_reg[13]_C_n_0 ;
  wire \cntr_reg[14]_C_n_0 ;
  wire \cntr_reg[15]_C_n_0 ;
  wire \cntr_reg[16]_C_n_0 ;
  wire \cntr_reg[17]_C_n_0 ;
  wire \cntr_reg[18]_C_n_0 ;
  wire \cntr_reg[19]_C_n_0 ;
  wire \cntr_reg[1]_C_n_0 ;
  wire \cntr_reg[20]_C_n_0 ;
  wire \cntr_reg[21]_C_n_0 ;
  wire \cntr_reg[22]_C_n_0 ;
  wire \cntr_reg[25]_C_n_0 ;
  wire \cntr_reg[2]_C_n_0 ;
  wire \cntr_reg[3]_C_n_0 ;
  wire \cntr_reg[4]_C_n_0 ;
  wire \cntr_reg[5]_C_n_0 ;
  wire \cntr_reg[6]_C_n_0 ;
  wire \cntr_reg[7]_C_n_0 ;
  wire \cntr_reg[8]_C_n_0 ;
  wire \cntr_reg[9]_C_n_0 ;
  wire [25:0]p_2_in;
  wire reset;
  wire reset_IBUF;
  wire [2:0]NLW_cntr2_carry_CO_UNCONNECTED;
  wire [2:0]NLW_cntr2_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_cntr2_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_cntr2_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_cntr2_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_cntr2_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_cntr2_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_cntr2_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_cntr2_carry__5_O_UNCONNECTED;

  (* OPT_MODIFIED = "PROPCONST" *) 
  GND GND_2
       (.G(cntr2[24]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h0015FFEA)) 
    clk_out_i_1
       (.I0(cntr2[23]),
        .I1(clk_out_i_2_n_0),
        .I2(clk_out_i_3_n_0),
        .I3(\cntr[25]_C_i_2_n_0 ),
        .I4(clk_out_1_OBUF),
        .O(clk_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFCC80)) 
    clk_out_i_2
       (.I0(cntr2[10]),
        .I1(cntr2[13]),
        .I2(\cntr[25]_C_i_6_n_0 ),
        .I3(cntr2[12]),
        .I4(cntr2[16]),
        .I5(\cntr[25]_C_i_4_n_0 ),
        .O(clk_out_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    clk_out_i_3
       (.I0(cntr2[18]),
        .I1(cntr2[17]),
        .I2(cntr2[21]),
        .O(clk_out_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(clk_out_i_1_n_0),
        .Q(clk_out_1_OBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntr2_carry
       (.CI(1'b0),
        .CO({cntr2_carry_n_0,NLW_cntr2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\cntr_reg[0]_C_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cntr2[4:1]),
        .S({\cntr_reg[4]_C_n_0 ,\cntr_reg[3]_C_n_0 ,\cntr_reg[2]_C_n_0 ,\cntr_reg[1]_C_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntr2_carry__0
       (.CI(cntr2_carry_n_0),
        .CO({cntr2_carry__0_n_0,NLW_cntr2_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cntr2[8:5]),
        .S({\cntr_reg[8]_C_n_0 ,\cntr_reg[7]_C_n_0 ,\cntr_reg[6]_C_n_0 ,\cntr_reg[5]_C_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntr2_carry__1
       (.CI(cntr2_carry__0_n_0),
        .CO({cntr2_carry__1_n_0,NLW_cntr2_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cntr2[12:9]),
        .S({\cntr_reg[12]_C_n_0 ,\cntr_reg[11]_C_n_0 ,\cntr_reg[10]_C_n_0 ,\cntr_reg[9]_C_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntr2_carry__2
       (.CI(cntr2_carry__1_n_0),
        .CO({cntr2_carry__2_n_0,NLW_cntr2_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cntr2[16:13]),
        .S({\cntr_reg[16]_C_n_0 ,\cntr_reg[15]_C_n_0 ,\cntr_reg[14]_C_n_0 ,\cntr_reg[13]_C_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntr2_carry__3
       (.CI(cntr2_carry__2_n_0),
        .CO({cntr2_carry__3_n_0,NLW_cntr2_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cntr2[20:17]),
        .S({\cntr_reg[20]_C_n_0 ,\cntr_reg[19]_C_n_0 ,\cntr_reg[18]_C_n_0 ,\cntr_reg[17]_C_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 cntr2_carry__4
       (.CI(cntr2_carry__3_n_0),
        .CO(NLW_cntr2_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cntr2_carry__4_O_UNCONNECTED[3],cntr2[23:21]}),
        .S({1'b0,1'b0,\cntr_reg[22]_C_n_0 ,\cntr_reg[21]_C_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 cntr2_carry__5
       (.CI(1'b0),
        .CO(NLW_cntr2_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(cntr2[24]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cntr2_carry__5_O_UNCONNECTED[3:1],cntr2[25]}),
        .S({1'b0,1'b0,1'b0,\cntr_reg[25]_C_n_0 }));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \cntr[0]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(\cntr_reg[0]_C_n_0 ),
        .O(p_2_in[0]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[10]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[10]),
        .O(p_2_in[10]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[11]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[11]),
        .O(p_2_in[11]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[12]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[12]),
        .O(p_2_in[12]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[13]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[13]),
        .O(p_2_in[13]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[14]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[14]),
        .O(p_2_in[14]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[15]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[15]),
        .O(p_2_in[15]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[16]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[16]),
        .O(p_2_in[16]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[17]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[17]),
        .O(p_2_in[17]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[18]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[18]),
        .O(p_2_in[18]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[19]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[19]),
        .O(p_2_in[19]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[1]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[1]),
        .O(p_2_in[1]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[20]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[20]),
        .O(p_2_in[20]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[21]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[21]),
        .O(p_2_in[21]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[22]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[22]),
        .O(p_2_in[22]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[25]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[25]),
        .O(p_2_in[25]));
  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    \cntr[25]_C_i_2 
       (.I0(cntr2[21]),
        .I1(cntr2[20]),
        .I2(cntr2[19]),
        .I3(cntr2[25]),
        .I4(cntr2[22]),
        .O(\cntr[25]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8A8A8A8A8A8)) 
    \cntr[25]_C_i_3 
       (.I0(clk_out_i_3_n_0),
        .I1(\cntr[25]_C_i_4_n_0 ),
        .I2(\cntr[25]_C_i_5_n_0 ),
        .I3(\cntr[25]_C_i_6_n_0 ),
        .I4(cntr2[13]),
        .I5(cntr2[10]),
        .O(\cntr[25]_C_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \cntr[25]_C_i_4 
       (.I0(cntr2[15]),
        .I1(cntr2[14]),
        .I2(cntr2[11]),
        .I3(cntr2[13]),
        .O(\cntr[25]_C_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \cntr[25]_C_i_5 
       (.I0(cntr2[12]),
        .I1(cntr2[13]),
        .I2(cntr2[16]),
        .O(\cntr[25]_C_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    \cntr[25]_C_i_6 
       (.I0(cntr2[5]),
        .I1(cntr2[6]),
        .I2(cntr2[7]),
        .I3(cntr2[8]),
        .I4(cntr2[9]),
        .O(\cntr[25]_C_i_6_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[2]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[2]),
        .O(p_2_in[2]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[3]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[3]),
        .O(p_2_in[3]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[4]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[4]),
        .O(p_2_in[4]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[5]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[5]),
        .O(p_2_in[5]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[6]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[6]),
        .O(p_2_in[6]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[7]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[7]),
        .O(p_2_in[7]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[8]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[8]),
        .O(p_2_in[8]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cntr[9]_C_i_1 
       (.I0(\cntr[25]_C_i_2_n_0 ),
        .I1(\cntr[25]_C_i_3_n_0 ),
        .I2(cntr2[23]),
        .I3(reset_IBUF),
        .I4(cntr2[9]),
        .O(p_2_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[0]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[0]),
        .Q(\cntr_reg[0]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[10]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[10]),
        .Q(\cntr_reg[10]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[11]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[11]),
        .Q(\cntr_reg[11]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[12]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[12]),
        .Q(\cntr_reg[12]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[13]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[13]),
        .Q(\cntr_reg[13]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[14]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[14]),
        .Q(\cntr_reg[14]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[15]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[15]),
        .Q(\cntr_reg[15]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[16]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[16]),
        .Q(\cntr_reg[16]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[17]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[17]),
        .Q(\cntr_reg[17]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[18]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[18]),
        .Q(\cntr_reg[18]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[19]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[19]),
        .Q(\cntr_reg[19]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[1]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[1]),
        .Q(\cntr_reg[1]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[20]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[20]),
        .Q(\cntr_reg[20]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[21]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[21]),
        .Q(\cntr_reg[21]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[22]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[22]),
        .Q(\cntr_reg[22]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[25]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[25]),
        .Q(\cntr_reg[25]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[2]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[2]),
        .Q(\cntr_reg[2]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[3]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[3]),
        .Q(\cntr_reg[3]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[4]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[4]),
        .Q(\cntr_reg[4]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[5]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[5]),
        .Q(\cntr_reg[5]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[6]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[6]),
        .Q(\cntr_reg[6]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[7]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[7]),
        .Q(\cntr_reg[7]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[8]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[8]),
        .Q(\cntr_reg[8]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[9]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset),
        .D(p_2_in[9]),
        .Q(\cntr_reg[9]_C_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit[7]_i_1 
       (.I0(reset_IBUF),
        .O(reset));
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
  wire cntr2_carry__0_n_4;
  wire cntr2_carry__0_n_5;
  wire cntr2_carry__0_n_6;
  wire cntr2_carry__0_n_7;
  wire cntr2_carry__1_n_0;
  wire cntr2_carry__1_n_4;
  wire cntr2_carry__1_n_5;
  wire cntr2_carry__1_n_6;
  wire cntr2_carry__1_n_7;
  wire cntr2_carry__2_n_0;
  wire cntr2_carry__2_n_4;
  wire cntr2_carry__2_n_5;
  wire cntr2_carry__2_n_6;
  wire cntr2_carry__2_n_7;
  wire cntr2_carry__3_n_4;
  wire cntr2_carry__3_n_5;
  wire cntr2_carry__4_n_4;
  wire cntr2_carry__4_n_5;
  wire cntr2_carry__4_n_6;
  wire cntr2_carry__4_n_7;
  wire cntr2_carry__5_n_7;
  wire cntr2_carry_n_0;
  wire cntr2_carry_n_4;
  wire cntr2_carry_n_5;
  wire cntr2_carry_n_6;
  wire cntr2_carry_n_7;
  wire \cntr[0]_C_i_1__0_n_0 ;
  wire \cntr[10]_C_i_1__0_n_0 ;
  wire \cntr[11]_C_i_1__0_n_0 ;
  wire \cntr[12]_C_i_1__0_n_0 ;
  wire \cntr[13]_C_i_1__0_n_0 ;
  wire \cntr[14]_C_i_1__0_n_0 ;
  wire \cntr[15]_C_i_1__0_n_0 ;
  wire \cntr[16]_C_i_1__0_n_0 ;
  wire \cntr[19]_C_i_1__0_n_0 ;
  wire \cntr[1]_C_i_1__0_n_0 ;
  wire \cntr[20]_C_i_1__0_n_0 ;
  wire \cntr[21]_C_i_1__0_n_0 ;
  wire \cntr[22]_C_i_1__0_n_0 ;
  wire \cntr[23]_C_i_1_n_0 ;
  wire \cntr[24]_C_i_1_n_0 ;
  wire \cntr[25]_C_i_1__0_n_0 ;
  wire \cntr[25]_C_i_2__0_n_0 ;
  wire \cntr[25]_C_i_3__0_n_0 ;
  wire \cntr[25]_C_i_4__0_n_0 ;
  wire \cntr[25]_C_i_5__0_n_0 ;
  wire \cntr[25]_C_i_6__0_n_0 ;
  wire \cntr[25]_C_i_7_n_0 ;
  wire \cntr[2]_C_i_1__0_n_0 ;
  wire \cntr[3]_C_i_1__0_n_0 ;
  wire \cntr[4]_C_i_1__0_n_0 ;
  wire \cntr[5]_C_i_1__0_n_0 ;
  wire \cntr[6]_C_i_1__0_n_0 ;
  wire \cntr[7]_C_i_1__0_n_0 ;
  wire \cntr[8]_C_i_1__0_n_0 ;
  wire \cntr[9]_C_i_1__0_n_0 ;
  wire \cntr_reg[0]_C_n_0 ;
  wire \cntr_reg[10]_C_n_0 ;
  wire \cntr_reg[11]_C_n_0 ;
  wire \cntr_reg[12]_C_n_0 ;
  wire \cntr_reg[13]_C_n_0 ;
  wire \cntr_reg[14]_C_n_0 ;
  wire \cntr_reg[15]_C_n_0 ;
  wire \cntr_reg[16]_C_n_0 ;
  wire \cntr_reg[19]_C_n_0 ;
  wire \cntr_reg[1]_C_0 ;
  wire \cntr_reg[1]_C_n_0 ;
  wire \cntr_reg[20]_C_n_0 ;
  wire \cntr_reg[21]_C_n_0 ;
  wire \cntr_reg[22]_C_n_0 ;
  wire \cntr_reg[23]_C_n_0 ;
  wire \cntr_reg[24]_C_n_0 ;
  wire \cntr_reg[25]_C_n_0 ;
  wire \cntr_reg[2]_C_n_0 ;
  wire \cntr_reg[3]_C_n_0 ;
  wire \cntr_reg[4]_C_n_0 ;
  wire \cntr_reg[5]_C_n_0 ;
  wire \cntr_reg[6]_C_n_0 ;
  wire \cntr_reg[7]_C_n_0 ;
  wire \cntr_reg[8]_C_n_0 ;
  wire \cntr_reg[9]_C_n_0 ;
  wire reset_IBUF;
  wire [2:0]NLW_cntr2_carry_CO_UNCONNECTED;
  wire [2:0]NLW_cntr2_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_cntr2_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_cntr2_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_cntr2_carry__3_CO_UNCONNECTED;
  wire [1:1]NLW_cntr2_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_cntr2_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_cntr2_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_cntr2_carry__5_O_UNCONNECTED;

  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    clk_out_i_1__0
       (.I0(\cntr[25]_C_i_5__0_n_0 ),
        .I1(\cntr[25]_C_i_4__0_n_0 ),
        .I2(\cntr[25]_C_i_3__0_n_0 ),
        .I3(\cntr[25]_C_i_2__0_n_0 ),
        .I4(clk_out),
        .O(clk_out_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(clk_out_i_1__0_n_0),
        .Q(clk_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntr2_carry
       (.CI(1'b0),
        .CO({cntr2_carry_n_0,NLW_cntr2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\cntr_reg[0]_C_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr2_carry_n_4,cntr2_carry_n_5,cntr2_carry_n_6,cntr2_carry_n_7}),
        .S({\cntr_reg[4]_C_n_0 ,\cntr_reg[3]_C_n_0 ,\cntr_reg[2]_C_n_0 ,\cntr_reg[1]_C_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntr2_carry__0
       (.CI(cntr2_carry_n_0),
        .CO({cntr2_carry__0_n_0,NLW_cntr2_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr2_carry__0_n_4,cntr2_carry__0_n_5,cntr2_carry__0_n_6,cntr2_carry__0_n_7}),
        .S({\cntr_reg[8]_C_n_0 ,\cntr_reg[7]_C_n_0 ,\cntr_reg[6]_C_n_0 ,\cntr_reg[5]_C_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntr2_carry__1
       (.CI(cntr2_carry__0_n_0),
        .CO({cntr2_carry__1_n_0,NLW_cntr2_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr2_carry__1_n_4,cntr2_carry__1_n_5,cntr2_carry__1_n_6,cntr2_carry__1_n_7}),
        .S({\cntr_reg[12]_C_n_0 ,\cntr_reg[11]_C_n_0 ,\cntr_reg[10]_C_n_0 ,\cntr_reg[9]_C_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cntr2_carry__2
       (.CI(cntr2_carry__1_n_0),
        .CO({cntr2_carry__2_n_0,NLW_cntr2_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr2_carry__2_n_4,cntr2_carry__2_n_5,cntr2_carry__2_n_6,cntr2_carry__2_n_7}),
        .S({\cntr_reg[16]_C_n_0 ,\cntr_reg[15]_C_n_0 ,\cntr_reg[14]_C_n_0 ,\cntr_reg[13]_C_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 cntr2_carry__3
       (.CI(cntr2_carry__2_n_0),
        .CO(NLW_cntr2_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr2_carry__3_n_4,cntr2_carry__3_n_5,NLW_cntr2_carry__3_O_UNCONNECTED[1],\cntr[25]_C_i_2__0_n_0 }),
        .S({\cntr_reg[20]_C_n_0 ,\cntr_reg[19]_C_n_0 ,1'b0,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 cntr2_carry__4
       (.CI(1'b0),
        .CO(NLW_cntr2_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cntr2_carry__4_n_4,cntr2_carry__4_n_5,cntr2_carry__4_n_6,cntr2_carry__4_n_7}),
        .S({\cntr_reg[24]_C_n_0 ,\cntr_reg[23]_C_n_0 ,\cntr_reg[22]_C_n_0 ,\cntr_reg[21]_C_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 cntr2_carry__5
       (.CI(1'b0),
        .CO(NLW_cntr2_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cntr2_carry__5_O_UNCONNECTED[3:1],cntr2_carry__5_n_7}),
        .S({1'b0,1'b0,1'b0,\cntr_reg[25]_C_n_0 }));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \cntr[0]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(\cntr_reg[0]_C_n_0 ),
        .O(\cntr[0]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[10]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__1_n_6),
        .O(\cntr[10]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[11]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__1_n_5),
        .O(\cntr[11]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[12]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__1_n_4),
        .O(\cntr[12]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[13]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__2_n_7),
        .O(\cntr[13]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[14]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__2_n_6),
        .O(\cntr[14]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[15]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__2_n_5),
        .O(\cntr[15]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[16]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__2_n_4),
        .O(\cntr[16]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[19]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__3_n_5),
        .O(\cntr[19]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[1]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry_n_7),
        .O(\cntr[1]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[20]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__3_n_4),
        .O(\cntr[20]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[21]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__4_n_7),
        .O(\cntr[21]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[22]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__4_n_6),
        .O(\cntr[22]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[23]_C_i_1 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__4_n_5),
        .O(\cntr[23]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[24]_C_i_1 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__4_n_4),
        .O(\cntr[24]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[25]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__5_n_7),
        .O(\cntr[25]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \cntr[25]_C_i_3__0 
       (.I0(cntr2_carry__2_n_5),
        .I1(cntr2_carry__2_n_6),
        .I2(\cntr[25]_C_i_6__0_n_0 ),
        .I3(cntr2_carry__1_n_4),
        .I4(cntr2_carry__1_n_5),
        .I5(\cntr[25]_C_i_7_n_0 ),
        .O(\cntr[25]_C_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntr[25]_C_i_4__0 
       (.I0(cntr2_carry__3_n_5),
        .I1(cntr2_carry__4_n_6),
        .I2(cntr2_carry__2_n_4),
        .I3(cntr2_carry__3_n_4),
        .O(\cntr[25]_C_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntr[25]_C_i_5__0 
       (.I0(cntr2_carry__4_n_5),
        .I1(cntr2_carry__5_n_7),
        .I2(cntr2_carry__4_n_7),
        .I3(cntr2_carry__4_n_4),
        .O(\cntr[25]_C_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cntr[25]_C_i_6__0 
       (.I0(cntr2_carry__1_n_6),
        .I1(cntr2_carry__2_n_7),
        .O(\cntr[25]_C_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888888080808080)) 
    \cntr[25]_C_i_7 
       (.I0(cntr2_carry__1_n_7),
        .I1(cntr2_carry__0_n_4),
        .I2(cntr2_carry__0_n_5),
        .I3(cntr2_carry__0_n_7),
        .I4(cntr2_carry_n_4),
        .I5(cntr2_carry__0_n_6),
        .O(\cntr[25]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[2]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry_n_6),
        .O(\cntr[2]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[3]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry_n_5),
        .O(\cntr[3]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[4]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry_n_4),
        .O(\cntr[4]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[5]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__0_n_7),
        .O(\cntr[5]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[6]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__0_n_6),
        .O(\cntr[6]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[7]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__0_n_5),
        .O(\cntr[7]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[8]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__0_n_4),
        .O(\cntr[8]_C_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cntr[9]_C_i_1__0 
       (.I0(\cntr[25]_C_i_2__0_n_0 ),
        .I1(\cntr[25]_C_i_3__0_n_0 ),
        .I2(\cntr[25]_C_i_4__0_n_0 ),
        .I3(\cntr[25]_C_i_5__0_n_0 ),
        .I4(reset_IBUF),
        .I5(cntr2_carry__1_n_7),
        .O(\cntr[9]_C_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[0]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[0]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[0]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[10]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[10]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[10]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[11]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[11]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[11]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[12]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[12]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[12]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[13]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[13]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[13]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[14]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[14]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[14]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[15]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[15]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[15]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[16]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[16]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[16]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[19]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[19]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[19]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[1]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[1]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[1]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[20]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[20]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[20]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[21]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[21]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[21]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[22]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[22]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[22]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[23]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[23]_C_i_1_n_0 ),
        .Q(\cntr_reg[23]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[24]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[24]_C_i_1_n_0 ),
        .Q(\cntr_reg[24]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[25]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[25]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[25]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[2]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[2]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[2]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[3]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[3]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[3]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[4]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[4]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[4]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[5]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[5]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[5]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[6]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[6]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[6]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[7]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[7]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[7]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[8]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[8]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[8]_C_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cntr_reg[9]_C 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cntr_reg[1]_C_0 ),
        .D(\cntr[9]_C_i_1__0_n_0 ),
        .Q(\cntr_reg[9]_C_n_0 ));
endmodule

(* ECO_CHECKSUM = "259f16f4" *) (* divider_cnt = "2499999" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
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

  wire [9:0]DO;
  wire \DO_TRI[0] ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_out;
  wire clk_out_1;
  wire clk_out_1_OBUF;
  wire div00_n_0;
  wire [7:0]fnd_digit;
  wire [7:0]fnd_value;
  wire [7:1]fnd_value_OBUF;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire reset;
  wire reset_IBUF;
  wire [2:0]state_led;
  wire \NLW_ctrl_DO_TRI[0]_UNCONNECTED ;
  wire [7:0]NLW_ctrl_Q_UNCONNECTED;

  OBUFT \DO_OBUFT[0]_inst 
       (.I(1'b0),
        .O(DO[0]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[1]_inst 
       (.I(1'b0),
        .O(DO[1]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[2]_inst 
       (.I(1'b0),
        .O(DO[2]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[3]_inst 
       (.I(1'b0),
        .O(DO[3]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[4]_inst 
       (.I(1'b0),
        .O(DO[4]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[5]_inst 
       (.I(1'b0),
        .O(DO[5]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[6]_inst 
       (.I(1'b0),
        .O(DO[6]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[7]_inst 
       (.I(1'b0),
        .O(DO[7]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[8]_inst 
       (.I(1'b0),
        .O(DO[8]),
        .T(\DO_TRI[0] ));
  OBUFT \DO_OBUFT[9]_inst 
       (.I(1'b0),
        .O(DO[9]),
        .T(\DO_TRI[0] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDPE #(
    .INIT(1'b0)) 
    \DO_OBUFT[9]_inst_i_1 
       (.C(clk_out_1_OBUF),
        .CE(1'b1),
        .D(\DO_TRI[0] ),
        .PRE(div00_n_0),
        .Q(\DO_TRI[0] ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF clk_out_1_OBUF_inst
       (.I(clk_out_1_OBUF),
        .O(clk_out_1));
  fnd_ctrl ctrl
       (.\DO_TRI[0] (\NLW_ctrl_DO_TRI[0]_UNCONNECTED ),
        .Q(NLW_ctrl_Q_UNCONNECTED[7:0]),
        .clk_out(clk_out),
        .\digit_reg[7]_0 (div00_n_0),
        .fnd_value_OBUF(fnd_value_OBUF),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7));
  clk_divider__parameterized0 div0
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_out(clk_out),
        .\cntr_reg[1]_C_0 (div00_n_0),
        .reset_IBUF(reset_IBUF));
  clk_divider div00
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_out_1_OBUF(clk_out_1_OBUF),
        .reset(div00_n_0),
        .reset_IBUF(reset_IBUF));
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
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \state_led_OBUF[0]_inst 
       (.I(1'b1),
        .O(state_led[0]));
  OBUF \state_led_OBUF[1]_inst 
       (.I(1'b1),
        .O(state_led[1]));
  OBUF \state_led_OBUF[2]_inst 
       (.I(1'b1),
        .O(state_led[2]));
endmodule

module fnd_ctrl
   (Q,
    fnd_value_OBUF,
    \DO_TRI[0] ,
    clk_out,
    \digit_reg[7]_0 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7);
  output [7:0]Q;
  output [6:0]fnd_value_OBUF;
  input \DO_TRI[0] ;
  input clk_out;
  input \digit_reg[7]_0 ;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;

  wire [7:0]Q;
  wire clk_out;
  wire \ctrl/_n_0 ;
  wire \digit_reg[0]_lopt_replica_1 ;
  wire \digit_reg[1]_lopt_replica_1 ;
  wire \digit_reg[2]_lopt_replica_1 ;
  wire \digit_reg[3]_lopt_replica_1 ;
  wire \digit_reg[4]_lopt_replica_1 ;
  wire \digit_reg[5]_lopt_replica_1 ;
  wire \digit_reg[6]_lopt_replica_1 ;
  wire \digit_reg[7]_0 ;
  wire \digit_reg[7]_lopt_replica_1 ;
  wire [6:1]\^fnd_value_OBUF ;
  wire \seg_data[2]_i_1_n_0 ;
  wire \seg_data[2]_i_2_n_0 ;
  wire \seg_data[2]_i_4_n_0 ;
  wire \seg_data[2]_i_5_n_0 ;
  wire \seg_data[3]_i_1_n_0 ;
  wire \seg_data[3]_i_2_n_0 ;
  wire \seg_data[3]_i_4_n_0 ;
  wire \seg_data[3]_i_5_n_0 ;
  wire \seg_data[4]_i_1_n_0 ;
  wire \seg_data[4]_i_2_n_0 ;
  wire \seg_data[4]_i_3_n_0 ;
  wire \seg_data[5]_i_1_n_0 ;
  wire \seg_data[5]_i_2_n_0 ;
  wire \seg_data[5]_i_3_n_0 ;
  wire \seg_data[5]_i_4_n_0 ;
  wire \seg_data[6]_i_1_n_0 ;
  wire \seg_data[6]_i_2_n_0 ;
  wire \seg_data[6]_i_3_n_0 ;
  wire \seg_data[7]_i_1_n_0 ;
  wire \seg_data[7]_i_2_n_0 ;
  wire \seg_data[7]_i_3_n_0 ;
  wire \seg_data[7]_i_4_n_0 ;
  wire \seg_data[7]_i_9_n_0 ;

  assign fnd_value_OBUF[6:1] = \^fnd_value_OBUF [6:1];
  assign fnd_value_OBUF[0] = \seg_data[7]_i_9_n_0 ;
  assign lopt = \digit_reg[0]_lopt_replica_1 ;
  assign lopt_1 = \digit_reg[1]_lopt_replica_1 ;
  assign lopt_2 = \digit_reg[2]_lopt_replica_1 ;
  assign lopt_3 = \digit_reg[3]_lopt_replica_1 ;
  assign lopt_4 = \digit_reg[4]_lopt_replica_1 ;
  assign lopt_5 = \digit_reg[5]_lopt_replica_1 ;
  assign lopt_6 = \digit_reg[6]_lopt_replica_1 ;
  assign lopt_7 = \digit_reg[7]_lopt_replica_1 ;
  (* OPT_MODIFIED = "PROPCONST" *) 
  GND GND_1
       (.G(\seg_data[7]_i_9_n_0 ));
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
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDPE #(
    .INIT(1'b1)) 
    \digit_reg[0]_lopt_replica 
       (.C(clk_out),
        .CE(1'b1),
        .D(Q[1]),
        .PRE(\digit_reg[7]_0 ),
        .Q(\digit_reg[0]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[2]),
        .Q(Q[1]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[1]_lopt_replica 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[2]),
        .Q(\digit_reg[1]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[3]),
        .Q(Q[2]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[2]_lopt_replica 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[3]),
        .Q(\digit_reg[2]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[3] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[4]),
        .Q(Q[3]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[3]_lopt_replica 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[4]),
        .Q(\digit_reg[3]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[4] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[5]),
        .Q(Q[4]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[4]_lopt_replica 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[5]),
        .Q(\digit_reg[4]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[5] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[6]),
        .Q(Q[5]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[5]_lopt_replica 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[6]),
        .Q(\digit_reg[5]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[6] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[7]),
        .Q(Q[6]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[6]_lopt_replica 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[7]),
        .Q(\digit_reg[6]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[7] 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[0]),
        .Q(Q[7]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    \digit_reg[7]_lopt_replica 
       (.C(clk_out),
        .CE(1'b1),
        .CLR(\digit_reg[7]_0 ),
        .D(Q[0]),
        .Q(\digit_reg[7]_lopt_replica_1 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h0000FD0D)) 
    \seg_data[2]_i_1 
       (.I0(\seg_data[2]_i_2_n_0 ),
        .I1(\seg_data[2]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(\seg_data[2]_i_5_n_0 ),
        .I4(Q[0]),
        .O(\seg_data[2]_i_1_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \seg_data[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\seg_data[2]_i_2_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg_data[2]_i_4 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\seg_data[2]_i_4_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \seg_data[2]_i_5 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\seg_data[2]_i_5_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h0000FE0E)) 
    \seg_data[3]_i_1 
       (.I0(\seg_data[3]_i_2_n_0 ),
        .I1(\seg_data[3]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(\seg_data[3]_i_5_n_0 ),
        .I4(Q[0]),
        .O(\seg_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg_data[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\seg_data[3]_i_2_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg_data[3]_i_4 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\seg_data[3]_i_4_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \seg_data[3]_i_5 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\seg_data[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000DD0D)) 
    \seg_data[4]_i_1 
       (.I0(Q[1]),
        .I1(\seg_data[4]_i_2_n_0 ),
        .I2(\seg_data[7]_i_3_n_0 ),
        .I3(\seg_data[4]_i_3_n_0 ),
        .I4(Q[0]),
        .O(\seg_data[4]_i_1_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \seg_data[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\seg_data[4]_i_2_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg_data[4]_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\seg_data[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \seg_data[5]_i_1 
       (.I0(\seg_data[5]_i_2_n_0 ),
        .I1(\seg_data[5]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\seg_data[5]_i_4_n_0 ),
        .I4(Q[0]),
        .O(\seg_data[5]_i_1_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \seg_data[5]_i_2 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\seg_data[5]_i_2_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \seg_data[5]_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\seg_data[5]_i_3_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \seg_data[5]_i_4 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\seg_data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF400F4)) 
    \seg_data[6]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\seg_data[6]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\seg_data[6]_i_3_n_0 ),
        .I5(Q[0]),
        .O(\seg_data[6]_i_1_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \seg_data[6]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\seg_data[6]_i_2_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \seg_data[6]_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\seg_data[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000DD0D)) 
    \seg_data[7]_i_1 
       (.I0(Q[1]),
        .I1(\seg_data[7]_i_2_n_0 ),
        .I2(\seg_data[7]_i_3_n_0 ),
        .I3(\seg_data[7]_i_4_n_0 ),
        .I4(Q[0]),
        .O(\seg_data[7]_i_1_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \seg_data[7]_i_2 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\seg_data[7]_i_2_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h51)) 
    \seg_data[7]_i_3 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\seg_data[7]_i_3_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \seg_data[7]_i_4 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\seg_data[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\seg_data[2]_i_1_n_0 ),
        .Q(\^fnd_value_OBUF [1]),
        .R(\ctrl/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[3] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\seg_data[3]_i_1_n_0 ),
        .Q(\^fnd_value_OBUF [2]),
        .R(\ctrl/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[4] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\seg_data[4]_i_1_n_0 ),
        .Q(\^fnd_value_OBUF [3]),
        .R(\ctrl/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[5] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\seg_data[5]_i_1_n_0 ),
        .Q(\^fnd_value_OBUF [4]),
        .R(\ctrl/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[6] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\seg_data[6]_i_1_n_0 ),
        .Q(\^fnd_value_OBUF [5]),
        .R(\ctrl/_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg_data_reg[7] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\seg_data[7]_i_1_n_0 ),
        .Q(\^fnd_value_OBUF [6]),
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

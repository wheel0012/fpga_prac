`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 23:34:16
// Design Name: 
// Module Name: mod_m_sync_cntr
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mod_m_sync_cntr(
    input clk,
    input rstb,
    output [3:0] q
    //,output [3:0] jout
    );


wire clk_div;
clk_divider #(1) div(clk, clk_div);

wire [3:0] jk_in;

//중괄호 콤마 사이에 중괄호  또 넣기 **무조건
assign jk_in = { {q[0] & q[1] & q[2]}, {q[1]&q[0]} , {clk_div,1}};
//assign {jk_in[3], jk_in[2], jk_in[1], jk_in[0]} = {1,1,1,0};

//good
/*assign jk_in[0] = {1};
assign jk_in[1] = {q[0] & ~q[3]};
assign jk_in[2] = {q[1] & q[0]};
assign jk_in[3] = {q[0] & q[1] & q[2]};
*/
//assign jout = jk_in;
/*
wire [3:0]j;
assign j = {q[0]&q[1]&q[2], q[1]&q[0], q[0] & ~q[3], 1};
wire [3:0]k;
assign k = {q[0], q[1]&q[0], q[0] & ~q[3], 1};
*/

jkff ff3(jk_in[3], q[0], clk_div, rstb, q[3]);
genvar i;
generate
    for (i = 0; i < 3; i = i + 1)
        jkff ff(jk_in[i], jk_in[i], clk_div, rstb, q[i]);
endgenerate 
/*
genvar i;
generate
    for(i = 3; i > -1; i= i-1)
        jkff ff(j[i], k[i], clk_div, rstb, q[i]);
endgenerate*/
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 19:02:35
// Design Name: 
// Module Name: bin4bitcntr
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


module bin4bitcntr(
input sel,
input clk, 
input rstb,
output [3:0] q);

wire clk_div;
clk_divider #(1) div(clk, clk_div);

wire [3:0] sel_q;
wire [3:0] q;
assign q = sel == 0 ? sel_q : ~sel_q;

wire [3:0] ff_clk;
assign ff_clk = {sel_q[2:0], clk_div};

genvar i;
generate 
    for(i = 0; i < 4; i = i + 1)
        jkff ff_i (1,1, ff_clk[i], rstb, sel_q[i]);
endgenerate
endmodule

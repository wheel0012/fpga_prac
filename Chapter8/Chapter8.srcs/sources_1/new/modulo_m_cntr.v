`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 22:42:54
// Design Name: 
// Module Name: modulo_m_cntr
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


module modulo_m_cntr(
input clk, 
input rstb,
output [3:0] q);
    
wire clk_div;
clk_divider #(1) div(clk, clk_div);

wire [3:0] ff_clk;
assign ff_clk = {~q[2:0],clk_div};
genvar i;
generate
    for( i = 0; i < 4; i = i+1)
        jkff_clr ff (1,1,ff_clk[i], rstb, ~(q[3]&q[1]),q[i]);
endgenerate
endmodule

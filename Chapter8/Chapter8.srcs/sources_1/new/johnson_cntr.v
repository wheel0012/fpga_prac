`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 10:48:44
// Design Name: 
// Module Name: johnson_cntr
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


module johnson_cntr(
input clk,
 input rstb,
 output [3:0] q
    );
    
wire clk_div;
clk_divider #(1) div(clk, clk_div);

wire [3:0] init;
assign init[3] = 0;
assign init[2] = 0;
assign init[1] = 0;
assign init[0] = 1;

wire [3:0] jk_in;
assign jk_in[3] = q[2];
assign jk_in[2] = q[1];
assign jk_in[1] = q[0];
assign jk_in[0] = ~q[3];

genvar i;
generate
 for(i = 0; i < 4; i = i + 1)
    jkff_init_rst ff(jk_in[i],1,clk_div,rstb,init[i], q[i]);
endgenerate
endmodule
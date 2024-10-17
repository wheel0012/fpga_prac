`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 01:01:16
// Design Name: 
// Module Name: pipo_reg
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


module pipo_reg(
    input [3:0] in,
    input clk,
    input reset,
    output [3:0] out,
    input rd,
    input ld
    );
    wire [3:0] q;
    wire [3:0] d_in;
    assign out = ~rd ? q : 4'bzzzz;
    assign d_in = {4{ld}} & in;
    dff r1(.clk(clk), 
        .d(d_in[0]), 
        .clr_b(reset), 
        .q(q[0]));
        
    dff r2(.clk(clk), 
        .d(d_in[1]), 
        .clr_b(reset), 
        .q(q[1]));
        
    dff r3(.clk(clk), 
        .d(d_in[2]), 
        .clr_b(reset), 
        .q(q[2]));
        
    dff r4(.clk(clk), 
        .d(d_in[3]), 
        .clr_b(reset), 
        .q(q[3]));
endmodule

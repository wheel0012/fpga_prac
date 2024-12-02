`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/01 11:40:39
// Design Name: 
// Module Name: mux_3x1_10bitwidth_block
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


module mux_3x1_10bitwidth_block(
    input [9:0] in_a,
    input [9:0] in_b,
    input [9:0] in_c,
    input [1:0] sel,
    output [9:0] out
    );
    
    mux #(.WIDTH(10), .NUM_INPUTS(4) ) mux1 
        (.in( { {10'b0},{in_c}, {in_b}, {in_a}}), .sel(sel), .out(out));
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/01 13:32:27
// Design Name: 
// Module Name: mux_2x1_4bitwidth_block
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


module mux_2x1_4bitwidth_block(
    input [3:0] in_a,
    input [3:0] in_b,
    input sel,
    output [3:0] out
    );
    
    mux #(.WIDTH(4), .NUM_INPUTS(1) ) mux1 
        (.in( { {in_a}, {in_b}}), .sel(sel), .out(out));
endmodule

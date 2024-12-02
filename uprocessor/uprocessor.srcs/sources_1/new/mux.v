`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/22 20:29:21
// Design Name: 
// Module Name: mux
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

//variable width
module mux #(parameter WIDTH = 8, NUM_INPUTS = 4) (
    input [WIDTH*NUM_INPUTS-1:0] in, // Flattened inputs
    input [$clog2(NUM_INPUTS)-1:0] sel, // Selector
    output wire [WIDTH-1:0] out
);
    assign out = in[sel*WIDTH +: WIDTH];
endmodule

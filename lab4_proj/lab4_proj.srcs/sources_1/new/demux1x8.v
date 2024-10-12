`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/27 12:20:37
// Design Name: 
// Module Name: demux1x4
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


module demux1x8(
    input in,
    input [2:0] s,
    output [7:0] out
    );
    wire zero;
    assign zero = 0;
    
    wire [7:0] out;
    
    genvar i;
    generate
    for (i = 0; i < 8; i=i+1)
        assign out[i] = s == i ? in : zero;
    endgenerate
endmodule

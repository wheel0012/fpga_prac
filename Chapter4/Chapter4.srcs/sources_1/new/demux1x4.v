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
    assign out[0] = s == 3'b000 ? in : zero;
    assign out[1] = s == 3'b001 ? in : zero;
    assign out[2] = s == 3'b010 ? in : zero;
    assign out[3] = s == 3'b011 ? in : zero;
    assign out[4] = s == 3'b100 ? in : zero;
    assign out[5] = s == 3'b101 ? in : zero;
    assign out[6] = s == 3'b110 ? in : zero;
    assign out[7] = s == 3'b111 ? in : zero;
endmodule

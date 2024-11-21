`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/08 13:55:46
// Design Name: 
// Module Name: decoder4x16
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


module decoder4x16 (input [3:0] in, output reg [15:0] out);

assign out = in == 4'b1111 ? 4'h8000 :
            4'b1110 ? 4'h4000 :
            4'b1101 ? 4'h2000 :
            4'b1100 ? 4'h1000 :
            4'b1011 ? 4'h0800 :
            4'b1010 ? 4'h0400 :
            4'b1001 ? 4'h0200 :
            4'b1000 ? 4'h0100 :
            4'b0111 ? 4'h0080 :
            4'b0110 ? 4'h0040 :
            4'b0101 ?  4'h0020 :
            4'b0100 ?  4'h0010 :
            4'b0011 ? 4'h0008:
            4'b0010 ? 4'h0004:
            4'b0001 ? 4'h0002: 
            4'h0001;
    
endmodule

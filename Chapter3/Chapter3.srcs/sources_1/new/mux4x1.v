`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/19 00:11:15
// Design Name: 
// Module Name: mux4x1
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


module mux4x1(
    input [3:0] in,
    input [1:0] s,
    output out
    );
    
    wire out;
    assign out = (s == 2'b00) ? in[0] :
                    (s == 2'b01) ? in[1] :
                    (s == 2'b10) ? in[2] :
                    (s == 2'b11) ? in[3] : 4'bx;
endmodule

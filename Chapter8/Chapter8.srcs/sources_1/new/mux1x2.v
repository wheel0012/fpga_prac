`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 22:01:55
// Design Name: 
// Module Name: mux1x2
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


module mux1x2(
    input [1:0] in,
    output wire out,
    input sel
    );
    
    assign out = sel == 0 ? in[0] : in[1];
    
endmodule

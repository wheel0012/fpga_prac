`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/28 13:11:57
// Design Name: 
// Module Name: alu_block
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


module alu_block(
    input [9:0] alu_in_a,
    input [9:0] alu_in_b,
    input [2:0] alu_op,
    output [9:0] alu_out
    );
    
    alu #( .BIT_WIDTH(10), .SELECT_BIT(3))
     alu0 (alu_in_a, alu_in_b, alu_op, alu_out);
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/21 19:26:34
// Design Name: 
// Module Name: main
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


module main #(parameter divide = 49999)( 
    input [7:0] in_a,
    input [7:0] in_b,
    input [2:0] op,
    input clk,
    input reset,
    output [7:0] fnd_digit,
    output [7:0] fnd_value
    );
    
    wire [7:0] q;
    wire clk_out;
    clk_divider #(divide) divider(
        clk, 
        clk_out
        );
    
    
    alu(
        in_a, 
        in_b, 
        op, 
        q); 
    
    fnd_contr(
        in_a, 
        in_b, 
        q,
        clk_out,
        reset,
        fnd_digit, 
        fnd_value
        );
        
endmodule
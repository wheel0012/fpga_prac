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


module main_for_test #(parameter divide = 49999)( 
    input [7:0] in_a,
    input [7:0] in_b,
    input [2:0] op,
    input clk,
    input reset,
    output [7:0] q
    );
    
    wire [7:0] q;
    wire clk_out;
    clk_divider #(divide) divider(
        clk, 
        clk_out
        );
    
    
    alu alu0(
        in_a, 
        in_b, 
        op, 
        q); 
    
    /*fnd_contr contr1(
        in_a, 
        in_b, 
        q,
        clk_out,
        reset,
        fnd_digit, 
        fnd_value
        );*/
        
endmodule

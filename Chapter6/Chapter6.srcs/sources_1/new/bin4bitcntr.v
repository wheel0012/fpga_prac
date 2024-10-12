`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/11 12:28:58
// Design Name: 
// Module Name: bin4bitcntr
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


module bin4bitcntr(
    input pr_b,
    input clr_b,
    input clk,
    output [3:0] q
    );
    
    wire [3:0] q;
    wire one;
    assign one = 1;
    
    jkff uut_1(
        .j(one),
        .k(one), 
        .pr_b(pr_b), 
        .clr_b(clr_b), 
        .q(q[0]),
        .clk(clk));
    
    jkff uut_2(
        .j(q[0]), 
        .k(q[0]), 
        .pr_b(pr_b), 
        .clr_b(clr_b), 
        .q(q[1]),
        .clk(clk));
        
    jkff uut_3(
        .j(q[0] & q[1]),
        .k(q[0] & q[1]), 
        .pr_b(pr_b), 
        .clr_b(clr_b), 
        .q(q[2]),
        .clk(clk));
        
    jkff uut_4(
        .j(q[0] & q[1] & q[2]), 
        .k(q[0] & q[1] & q[2]), 
        .pr_b(pr_b), 
        .clr_b(clr_b), 
        .q(q[3]),
        .clk(clk));
    
endmodule

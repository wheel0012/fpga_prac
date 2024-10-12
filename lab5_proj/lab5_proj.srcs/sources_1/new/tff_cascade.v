`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/04 12:18:33
// Design Name: 
// Module Name: tff_cascade
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


module tff_cascade(
    input t,
    input clk,
    input pr_b,
    input clr_b,
    output q,
    output q1,
    output q2
    );
    
    wire q1, q2, q;
    
    tff uut1 (.t(t), 
        .clk(clk), 
        .pr_b(pr_b), 
        .clr_b(clr_b), 
        .q(q1));
        
    tff uut2 (
        .t(q1),
        .clk(clk),
        .pr_b(pr_b),
        .clr_b(clr_b),
        .q(q2));
    tff uut3 (
        .t(q2),
        .clk(clk), 
        .pr_b(pr_b), 
        .clr_b(clr_b), 
        .q(q));
    
endmodule

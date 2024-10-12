`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/04 12:29:31
// Design Name: 
// Module Name: tff_cascade_tb
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


module tff_cascade_tb(

    );
    
    reg pr_b, clr_b, t, clk;
    wire q, q1, q2;
    
    tff_cascade uut(
        .t(t), 
        .clk(clk), 
        .pr_b(pr_b), 
        .clr_b(clr_b),
        .q(q),
        .q1(q1),
        .q2(q2));
    
    initial
    begin
        pr_b = 0; clr_b = 1; t = 0; clk = 0;
        #10
        pr_b = 1; clr_b = 0;
        #10 clr_b = 1;
        
    end
    
    always #10 t = ~t;
    always #5 clk = ~clk;
endmodule

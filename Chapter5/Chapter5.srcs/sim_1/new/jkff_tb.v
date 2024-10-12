`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/04 10:05:45
// Design Name: 
// Module Name: jkff_tb
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


module jkff_tb();
    reg j, k, clr_b, pr_b, clk;
    wire q;
    
    jkff uut( .j(j),
        .k(k),
        .clr_b(clr_b),
        .pr_b(pr_b),
        .clk(clk),
        .q(q));
    
    initial
    begin
        pr_b = 0; clr_b = 1; clk = 0; j = 1; k = 1;
        #100 pr_b = 1; clr_b = 0;
        #100 clr_b = 1;
        #100 j = 0;
        #200 k = 0;
        #200 j = 1;
        #200 k = 1;
    end
    
    always #50 clk = ~clk;
    
endmodule

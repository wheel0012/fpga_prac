`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/04 12:01:23
// Design Name: 
// Module Name: tff_tb
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


module tff_tb();
    reg pr_b, clr_b, clk, t;
    wire q;
    
    tff uut(.pr_b(pr_b),
        .clr_b(clr_b),
        .clk(clk),
        .t(t),
        .q(q));
    
    initial
    begin
        pr_b = 0; clr_b = 1; t = 0; clk = 0;
        
        #100 pr_b = 1; clr_b = 0;
        #100 clr_b = 1;
        #100 t = 1;
        #100 t = 0;
        #100 t = 1;
        #100 t = 0;
            
    end
    
    always #50 clk = ~clk;

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/11 12:41:19
// Design Name: 
// Module Name: bin4bitcntr_tb
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


module bin4bitcntr_tb();
    bin4bitcntr uut(
    .clk(clk), .q(q), .pr_b(pr_b),.clr_b(clr_b));
    reg clk, pr_b, clr_b;
    wire [3:0] q;
    
    
    initial 
    begin
        pr_b = 0; clr_b = 0; clk = 0;
        #100 pr_b = 1;
        clr_b = 0;
        #100 clr_b = 1;
    
    end
    always #50 clk = ~clk;
   

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 22:01:27
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

    reg clk, rstb, sel;
    wire [3:0] q;
   
   bin4bitcntr cntr(sel, clk, rstb, q);
   initial begin
    sel = 0; clk = 0; rstb = 0;
    
    #10 rstb = 1;
    
    #2000 $finish;
   end
   
   always #5 clk = ~clk;
   always #500 sel = ~sel;
endmodule

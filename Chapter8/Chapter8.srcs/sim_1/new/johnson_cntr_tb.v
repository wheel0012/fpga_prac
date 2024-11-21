`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 10:49:24
// Design Name: 
// Module Name: johnson_cntr_tb
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


module johnson_cntr_tb(

    );
    reg clk, rstb;
    wire [3:0] q;
    
    johnson_cntr cntr (clk, rstb, q);
    
    initial begin
    
    clk =0 ; rstb = 0;
    #10 rstb = 1;
    
    #2000 $finish;
    end
    
    always #5 clk = ~clk;
    
endmodule

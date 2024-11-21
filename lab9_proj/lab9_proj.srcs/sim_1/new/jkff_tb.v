`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/08 14:00:58
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


module jkff_tb(

    );
    reg j, k, clk, rstb;
    wire q;
    jkff ff(j, k, clk, rstb,0, q);
    
    initial begin
        j = 0; k = 0; rstb =0; clk = 0;
        #10 rstb = 1;
        
        #1000 $finish;
    end
    
    always #25 clk = ~clk;
    always #100 j = ~ j;
    always #300 k = ~k;
endmodule

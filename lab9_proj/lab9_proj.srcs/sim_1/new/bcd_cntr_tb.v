`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/08 14:04:42
// Design Name: 
// Module Name: bcd_cntr_tb
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


module bcd_cntr_tb(

    );
    
    reg clk, rstb;
    wire [3:0] out;
    
    bcd_cntr cntr (clk, rstb, out);
    initial begin
        clk = 0; rstb = 0;
        #10 rstb = 1;
        
        #2000 $finish;
    end
    
    always #25 clk = ~clk;
    
endmodule

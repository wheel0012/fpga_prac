`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 23:41:20
// Design Name: 
// Module Name: mod_m_sync_cntr_tb
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


module mod_m_sync_cntr_tb();
    reg clk;
    reg rstb;
    wire[3:0] q;
    
    wire [3:0] jout;
    mod_m_sync_cntr cntr (clk, rstb, q,jout);
    initial begin
        clk =0; rstb = 0;
        #10 rstb = 1;
        
        #2000 $finish;
    end
    
    always #5 clk = ~clk;
    
endmodule


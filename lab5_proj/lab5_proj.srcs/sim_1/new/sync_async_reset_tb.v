`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/04 13:14:47
// Design Name: 
// Module Name: sync_async_reset_tb
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


module sync_async_reset_tb();
    
    reg  t,
     clk,
     pr_b,
     clr_b;
     
     wire q_async, q_sync;
     
    sync_async_reset uut (
     .q_async(q_async),
     .q_sync(q_sync),
     .t(t),
     .clk(clk),
     .pr_b(pr_b),
     .clr_b(clr_b)
    );
    
    initial
    begin
    
        t=0; clk =1; pr_b = 0; clr_b = 1;
        #100 pr_b = 1; clr_b = 0;
        #100 clr_b = 1;
        
        #5000 $finish;
    end
    
    always #10 clk = ~clk;
    always #50 t = ~t;
    always #75 clr_b = ~clr_b;
endmodule

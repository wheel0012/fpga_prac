`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/04 12:56:44
// Design Name: 
// Module Name: sync_async_reset
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


module sync_async_reset(
    output q_async,
    output q_sync,
    input t,
    input clk,
    input pr_b,
    input clr_b
    );
    
    reg q_async, q_sync;
    
    
    //sync
    always @(posedge clk)
    begin
        if(pr_b == 0)
            q_sync <= 1;
        else
        if(clr_b == 0)
            q_sync <= 0;
        else
        begin
            if( t == 1) q_sync = ~q_sync;
        end
    end
    
    //async
    always @(posedge clk or negedge clr_b or pr_b)
    begin
        if(pr_b == 0)
            q_async <= 1;
        else
        if(clr_b == 0)
            q_async <= 0;
        else
        begin
            if( t == 1) q_async = ~q_async;
        end
    end
    
endmodule

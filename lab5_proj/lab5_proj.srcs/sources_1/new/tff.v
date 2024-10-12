`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/04 10:25:03
// Design Name: 
// Module Name: tff
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


module tff(
    input t,
    input clk,
    input pr_b,
    input clr_b,
    output q
    );
    
    reg q;
    
    always @(posedge clk or negedge pr_b or negedge clr_b)
    begin
        if(pr_b == 0)
            q<=1;
        else 
        if (clr_b == 0)
            q<=0;
        else
        begin
            if (t == 1)
                q = ~q;
        end
    end
endmodule

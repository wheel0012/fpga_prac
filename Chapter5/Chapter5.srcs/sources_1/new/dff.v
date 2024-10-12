`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/04 09:39:29
// Design Name: 
// Module Name: dff
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


module dff(
    input clk,
    input d,
    input pr_b,
    input clr_b,
    output q
    );
    reg q;
    
    always @(posedge clk or negedge pr_b or negedge clr_b)
    begin
    if(pr_b ==0)
        q<=1;
    else 
    if(clr_b == 0)
        q <= 0;
    else
        q<=d;
    end
endmodule

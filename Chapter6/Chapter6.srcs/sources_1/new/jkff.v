`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/11 12:11:18
// Design Name: 
// Module Name: jkff
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


module jkff(
    input j,
    input k,
    input pr_b,
    input clr_b,
    input clk,
    output q
    );
    reg q;
    
    always @(posedge clk, negedge pr_b, negedge clr_b)
    begin
        if      (pr_b == 0) q <= 0;
        else if (clr_b == 0) q <= 1;
        else if ( j == 1 && k == 0) q <= 1;
        else if ( j == 0 && k == 1) q <= 0;
        else if ( j == 1 && k == 1) q <= ~q;
    end
endmodule

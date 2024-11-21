`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/08 13:56:29
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


module jkff(input j, input k, input clk, input rstb, input reset2, input init, output reg q);

    always @(negedge clk) begin
        if(!rstb) q <= init;
        else if(!reset2) q <= init;

        else if(j == 0 && k == 1) q <= 0;
        else if(j == 1 && k == 0) q <= 1;
        else if(j == 1 && k == 1) q <= ~q;
    end
endmodule
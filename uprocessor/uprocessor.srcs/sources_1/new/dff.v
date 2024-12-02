`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/28 14:50:20
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
    input d,
    input en,
    input clk,
    input reset,
    output reg q
    );

    always @(posedge clk, negedge reset) begin
        if(!reset) q <= 0;
        else if(en == 0); 
        else q <= d;
    end
endmodule

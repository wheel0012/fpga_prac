`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 00:40:17
// Design Name: 
// Module Name: piso_reg_2
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


module piso_reg_2(
    input [3:0] in,
    input clk,
    input reset,
    output out,
    input load
    );
    assign out = q[3];
    reg [3:0] q;
    always @(negedge clk or negedge reset) begin
        if (!reset) q <=4'b0000;
        else if(!load) q <= in;
        else if(load) q <= {q[2:0] , in[0]};
    end
endmodule

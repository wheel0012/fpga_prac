`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/17 23:55:33
// Design Name: 
// Module Name: piso_reg
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


module piso_reg(
    input [3:0] in,
    input clk,
    input reset,
    input load,
    output out
    );
    
    wire [2:0] q;
    dff r1(.clk(clk), .clr_b(reset), 
        .d(in[0]), 
        .q(q[0])
        );
    dff r2(.clk(clk), .clr_b(reset), 
        .d(~load ? in[1] : q[0]), 
        .q(q[1])
        );
    dff r3(.clk(clk), .clr_b(reset), 
        .d(~load ? in[2] : q[1]), 
        .q(q[2]));
    dff r4(.clk(clk), .clr_b(reset), 
        .d(~load ? in[3] : q[2]), 
        .q(out));
        
    
    
endmodule

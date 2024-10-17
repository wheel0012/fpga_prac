`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/17 21:39:59
// Design Name: 
// Module Name: siso_reg
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


module siso_reg(
    input in,
    output wire out,
    input clk,
    input clr_b
    );
    
    wire q [3:0];
    assign out = q[3];
    
    dff r1 (.clr_b(clr_b),.clk(clk),
        .d(in), .q(q[0]));
    dff r2 (.clr_b(clr_b),.clk(clk),
        .d(q[0]), .q(q[1]));
    dff r3 (.clr_b(clr_b),.clk(clk),
        .d(q[1]), .q(q[2]));
    dff r4 (.clr_b(clr_b),.clk(clk),
        .d(q[2]), .q(q[3]));
    
    
    
        
    
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 16:31:17
// Design Name: 
// Module Name: digital_vault
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


module digital_vault(
        input [9:0] in,
        output [3:0] q,
        input reset,
        input clk
    );
    
    dff dff1 (.d(in[0]), .reset(reset), .clk(clk), .q(q[0]));
    dff dff2 (.d(in[1]), .reset(reset), .clk(clk), .q(q[1]));
    dff dff3 (.d(in[2]), .reset(reset), .clk(clk), .q(q[2]));
    dff dff4 (.d(in[3]), .reset(reset), .clk(clk), .q(q[3]));
endmodule

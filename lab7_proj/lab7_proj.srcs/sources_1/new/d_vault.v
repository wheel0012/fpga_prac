`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 12:52:09
// Design Name: 
// Module Name: d_vault
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


module d_vault(
    input clk,
    output out,
    input reset,
    input [9:0] in
    );
    wire one;
    wire [3:0] q;
    assign one = 1'b1;
    assign clr = reset & ~((in & 10'b01_1111_0100)>0);
    assign out = q[3];
    
    dff r1(.d((one & in[3]) | q[0] ), .clk(clk), .reset(clr), .q(q[0]));
    dff r2(.d((q[0]& in[1]) | q[1] ), .clk(clk), .reset(clr), .q(q[1]));
    dff r3(.d((q[1]& in[9])| q[2] ), .clk(clk), .reset(clr), .q(q[2]));
    dff r4(.d((q[2]& in[0])| q[3] ), .clk(clk), .reset(clr), .q(q[3]));
    
endmodule

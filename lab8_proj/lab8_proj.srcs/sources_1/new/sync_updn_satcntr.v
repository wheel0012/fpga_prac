`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/01 13:38:41
// Design Name: 
// Module Name: sync_updn_satcntr
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


module sync_updn_satcntr #(parameter clk_div = 49999999)(
    input x,
    input clk,
    input resetn,
    output [1:0] q
    );
    wire [1:0] q;
    wire clk_out;
    clk_divider #(clk_div) divider(
        .clk_in(clk),
        .clk_out(clk_out)
        );
    
    jkff ff0(
    .j(~x & q[0]),
    .k(x & ~q[0]),
    .clk(clk_out),
    .resetN(resetn),
    .set(0),
    .q(q[1])
    );
    
    jkff ff1(
    .j(~x | q[1]),
    .k(x | ~q[1]),
    .clk(clk_out),
    .resetN(resetn),
    .set(0),
    .q(q[0])
    );
    
endmodule

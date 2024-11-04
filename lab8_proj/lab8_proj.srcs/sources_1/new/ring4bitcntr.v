`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/01 12:56:01
// Design Name: 
// Module Name: ring4bitcntr
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


module ring4bitcntr #(parameter clk_div = 49999999)(
        input clk,
        input resetn,
        output [3:0] q
    );
    
    wire clk_out;
    clk_divider #(49999999) divider(.clk_in(clk), .clk_out(clk_out));
    
    jkff ff0 (
        .j(q[3]), 
        .k(~q[3]),
        .clk(clk_out),
        .set(0),
        .resetN(resetn),
        .q(q[0])
        );
        
    jkff ff1 (
        .j(q[0]), 
        .k(~q[0]),
        .clk(clk_out),
        .set(0),
        .resetN(resetn),
        .q(q[1])
        );
    jkff ff2 (
        .j(q[1]), 
        .k(~q[1]),
        .clk(clk_out),
        .set(0),
        .resetN(resetn),
        .q(q[2])
        );
    jkff ff3 (
        .j(q[2]), 
        .k(~q[2]),
        .clk(clk_out),
        .set(1),
        .resetN(resetn),
        .q(q[3])
        );
endmodule

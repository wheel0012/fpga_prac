`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/01 12:10:56
// Design Name: 
// Module Name: sync3bitUPDNcntr
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


module sync3bitUPDNcntr #(parameter clk_div = 49999999)(
    output [2:0] q,
    input sel,
    input clk,
    input resetn
    );
    wire clk_out;
    clk_divider #(49999999) divier(.clk_in(clk), .clk_out(clk_out));
    //assign clk_out = clk;
    wire [1:0] clk_sub;
    
    jkff ff0 ( .j(1), 
        .k(1), 
        .q(q[0]), 
        .clk(clk_out), 
        .resetN(resetn)
        );
    
    mux2x1 mux0(.s(sel), .in({q[0], ~q[0]}), .out(clk_sub[0]));
    
    jkff ff1 ( .j(1), 
        .k(1), 
        .q(q[1]), 
        .clk(clk_sub[0]), 
        .resetN(resetn)
        );
        
    mux2x1 mux1(.s(sel), .in({q[1], ~q[1]}), .out(clk_sub[1]));
    
    jkff ff2 ( .j(1), 
        .k(1), 
        .q(q[2]), 
        .clk(clk_sub[1]), 
        .resetN(resetn)
        );
        
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/20 12:20:57
// Design Name: 
// Module Name: padder4bit
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


module padder4bit(
    input [3:0] in_a,
    input [3:0] in_b,
    input sign,
    output [3:0] out,
    output overflow_detect,
    output cout
    );
    
    wire c0, c1, c2, c3, c4;
    wire [3:0] out;
    wire cout;
    assign c0 = sign;
    assign cout = c4;
    wire [3:0] fa_b;
    assign fa_b = {
        in_b[3]^sign,
        in_b[2]^sign,
        in_b[1]^sign,
        in_b[0]^sign};
    
    wire overflow_detect;
    assign overflow_detect = c4 ^ c3;
    
    fa_n_mux uut_0 (.a(in_a[0]), .b(fa_b[0]), .cin(c0), .s(out[0]), .cout(c1));
    fa_n_mux uut_1 (.a(in_a[1]), .b(fa_b[1]), .cin(c1), .s(out[1]), .cout(c2));
    fa_n_mux uut_2 (.a(in_a[2]), .b(fa_b[2]), .cin(c2), .s(out[2]), .cout(c3));
    fa_n_mux uut_3 (.a(in_a[3]), .b(fa_b[3]), .cin(c3), .s(out[3]), .cout(c4));
    
    
endmodule

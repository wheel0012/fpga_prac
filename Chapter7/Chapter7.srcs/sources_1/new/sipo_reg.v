`timescale 1ns / 1ps

module sipo_reg(
    input in,
    input clk,
    input reset,
    input read,
    output wire [3:0] out
);
wire [3:0] q;

assign out = read ? 4'bzzzz : q;

dff r1(.clk(clk), .clr_b(reset), .q(q[0]), .d(in));
dff r2(.clk(clk), .clr_b(reset), .q(q[1]), .d(q[0]));
dff r3(.clk(clk), .clr_b(reset), .q(q[2]), .d(q[1]));
dff r4(.clk(clk), .clr_b(reset), .q(q[3]), .d(q[2]));

endmodule
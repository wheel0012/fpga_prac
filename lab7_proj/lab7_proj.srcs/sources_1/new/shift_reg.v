`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 12:08:35
// Design Name: 
// Module Name: shift_reg
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


module shift_reg(
    input sri,
    input sli,
    output slo,
    output sro,
    input dir,
    input clk,
    input reset
    );
    wire [3:0] q;
    wire [3:0] d_in;
    //dir == 1 : left, 0: right
    assign d_in = dir ? {sli, q[3:1]} : {q[2:0], sri};
    
    assign sro = q[3];
    assign slo = q[0];
    dff r1(.d(d_in[0]), .clk(clk_o), .reset(reset), .q(q[0]));
    dff r2(.d(d_in[1]), .clk(clk_o), .reset(reset), .q(q[1]));   
    dff r3(.d(d_in[2]), .clk(clk_o), .reset(reset), .q(q[2]));
    dff r4(.d(d_in[3]), .clk(clk_o), .reset(reset), .q(q[3]));
    
    wire clk_o;
    //clock_divider #(5) cd (.clk_in(clk), .clk_out(clk_o));
    clock_divider #(49999999) cd (.clk_in(clk), .clk_out(clk_o));
    

endmodule

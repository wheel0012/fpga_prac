`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/17 22:00:48
// Design Name: 
// Module Name: siso_reg_tb
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


module siso_reg_tb(

    );
    
    reg clk, r_n, d_in;
    wire out;
    
    siso_reg siso(.in(d_in), .clk(clk), .clr_b(r_n), .out(out));
    
    initial begin
    d_in = 0; r_n = 0; clk = 0;
    #100 r_n = 1;
    #2000 $finish;
    end
    
    always #50 clk = ~clk;
    
    always #75 d_in = ~d_in;
endmodule

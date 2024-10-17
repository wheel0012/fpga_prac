`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/17 23:24:24
// Design Name: 
// Module Name: sipo_reg_tb
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


module sipo_reg_2_tb(
    );
    reg d_in, clk, reset, read;
    wire [3:0] q;
    
    sipo_reg_2 sipo1(.in(d_in), .read(read), .clk(clk), .reset(reset), .q(q));
    
    initial begin
        d_in = 0; clk = 0; reset = 0; read = 0;
        #50 reset = 1;
        
        
    end
    
    always #25 clk = ~clk;
    always #75 d_in = ~d_in;
    always #500 read = ~read;
endmodule

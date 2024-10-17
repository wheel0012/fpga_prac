`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 00:06:03
// Design Name: 
// Module Name: piso_reg_tb
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


module piso_reg_2_tb(

    );
    
    
    reg clk, reset, load;
    reg [3:0] in;
    wire out;
    
    piso_reg_2 piso1(.clk(clk), 
        .reset(reset), 
        .in(in), 
        .out(out), 
        .load(load)
        );
    
    initial begin
    clk = 0; in = 0; reset = 0; load = 0;
    #10 reset = 1;
    #40 in = 4'b1110;
    #10 load = 1;
    #300 load = 0;
    #10 in = 4'b0110;
    #50 load = 1;
    end
    
    always #25 clk = ~clk;
    
endmodule

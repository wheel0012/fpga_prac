`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/13 13:34:35
// Design Name: 
// Module Name: ec1_tb
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


module ec1_tb();
    ec1 uut(.in(in), .out(out));
    reg [7:0] in;
    wire [2:0] out;
    
    initial begin
     in = 0;
    #50 in = 8'b10000000;
    #50 in = 8'b01000000;
    #50 in = 8'b00100000;
    #50 in = 8'b00010000;
    #50 in = 8'b00001000;
    #50 in = 8'b00000100;
    #50 in = 8'b00000010;
    #50 in = 8'b00000001;
    #100 $finish;
    end
    
    
    
endmodule

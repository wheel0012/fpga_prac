`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/20 12:07:18
// Design Name: 
// Module Name: mux8x1_tb
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


module mux8x1_tb();

    mux8x1 uut(.in(in), .s(s), .out(out));
    
    reg [7:0] in;
    reg [2:0] s;
    wire out;
    
    initial begin
    in = 0;
    s = 0;
    
    # 16000 $finish;
    end
    
    always #10 in[0] = ~in[0];
    always #20 in[1] = ~in[1];
    always #40 in[2] = ~in[2];
    always #80 in[3] = ~in[3];
    always #160 in[4] = ~in[4];
    always #320 in[5] = ~in[5];
    always #640 in[6] = ~in[6];
    always #1280 in[7] = ~in[7];
    
    always #1280 s[0] = ~s[0];
    always #2560 s[1] = ~s[1];
    always #5120 s[2] = ~s[2];
    
    
endmodule

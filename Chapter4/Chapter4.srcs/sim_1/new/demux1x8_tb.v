`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/27 12:23:42
// Design Name: 
// Module Name: demux1x8_tb
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


module demux1x8_tb();
    demux1x4 uut (.in(in), .s(s), .out(out));
    wire [7:0] out;
    reg in;
    reg [2:0] s;
    
    initial begin
    in = 0;
    s = 0;
    
    #10000 $finish;
    end
    
    always #50 in = ~in;
    always #500 s[0] = ~s[0];
    always #1000 s[1] = ~s[1];
    always #2000 s[2] = ~s[2];
    
endmodule

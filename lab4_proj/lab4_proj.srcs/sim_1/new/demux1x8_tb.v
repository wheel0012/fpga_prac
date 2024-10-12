`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/27 12:44:10
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

    demux1x8 uut(.in(in), .s(s), .out(out));
    
    wire [7:0] out;
    reg [2:0] s;
    reg in;
    
    initial begin
    in = 0;
    s = 0;
    
    #3000 $finish;
    end
    
    always #20 in = ~in;
    always #100 s[0] = ~s[0];
    always #200 s[1] = ~s[1];
    always #400 s[2] = ~s[2];
endmodule

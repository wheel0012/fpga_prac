`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/13 13:58:35
// Design Name: 
// Module Name: 4x16dc_tb
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


module dc4x16_tb();

    dc4x16 uut(.in(in),.out(out));
    reg [3:0] in;
    wire [15:0] out;
    
    initial begin
        in = 0;
        #1000 $finish;
    end
    
    always #50 in[0] = ~in[0];
    always #100 in[1] = ~in[1];
    always #200 in[2] = ~in[2];
    always #400 in[3] = ~in[3];
endmodule

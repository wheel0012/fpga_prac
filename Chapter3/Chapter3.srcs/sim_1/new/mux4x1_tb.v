`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/19 00:14:36
// Design Name: 
// Module Name: mux4x1_tb
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


module mux4x1_tb(

    );
    
    mux4x1 uut (
    .in(in),
    .s(s),
    .out(out)
    );
    
    wire out;
    reg [3:0] in;
    reg [1:0] s;
    
    initial begin
    s = 0;
    in = 0;
    
    #6000 $finish;
    end
 
    always #50 in[0] = ~in[0];
    always #100 in[1] = ~in[1];
    always #200 in[2] = ~in[2];
    always #400 in[3] = ~in[3];
    always #800 s[0] = ~s[0];
    always #1600 s[1] = ~s[1];

endmodule

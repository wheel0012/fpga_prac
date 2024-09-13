`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/13 12:56:13
// Design Name: 
// Module Name: dc1_tb
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


module dc1_tb();

    
    dc1 uut(
    .in(in),
    .out(out)
    );
    
    reg [2:0] in;
    wire [7:0] out;
    
    initial begin
        in = 0;
        #1000 $stop;
    end
    
    always #50 in[0] = ~in[0];
    always #100 in[1] = ~in[1];
    always #200 in[2] = ~in[2];
    
    
endmodule

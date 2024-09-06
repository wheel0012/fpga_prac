`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/06 13:23:30
// Design Name: 
// Module Name: xor4_tb
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


module xor4_tb();
    reg in1;
    reg in2;
    wire out1;
    
    xor4 uut(
    .in1(in1),
    .in2(in2),
    .out1(out1)
    );
    
    initial begin
    in1 = 0;
    in2 = 0;
    #1000 $stop;
    end
    always #50 in1 = ~in1;
    always #100 in2 =  ~ in2;
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/13 01:57:19
// Design Name: 
// Module Name: ha1_tb
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


module ha1_tb(

    );
    reg in1;
    reg in2;
    wire out1;
    wire out2;
    
    
    ha1 uut(
    .in1(in1),
    .in2(in2),
    .out1(out1),
    .out2(out2)
    );
    
    
    initial begin
    in1 = 0;
    in2 = 0;
    
    #1000 $stop;
    end
    
    always #50 in1 = ~in1;
    always #100 in2 = ~in2;
    
endmodule

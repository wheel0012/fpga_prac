`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/06 03:31:50
// Design Name: 
// Module Name: inv1_tb
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


module inv1_tb(
    );
    //inputs
    reg in1;
    wire out1;
    inv1 uut(
    .in1(in1),
    .out1(out1)
    );
    
    initial begin
    in1 = 0;
    #1000 $stop;
    end
    
    always #50 in1 = ~in1;
    
endmodule

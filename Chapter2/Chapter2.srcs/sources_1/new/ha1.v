`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/13 01:53:01
// Design Name: 
// Module Name: ha1
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


module ha1(
    input in1,
    input in2,
    output out1,
    output out2
    );
    assign out1 = in1 ^ in2;
    assign out2 = in1 & in2;
    
endmodule

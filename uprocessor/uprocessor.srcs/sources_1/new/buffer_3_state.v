`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/01 16:39:34
// Design Name: 
// Module Name: buffer_3_state
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


module buffer_3_state(
    input [9:0] in,
    input enable,
    output [9:0] out
    );
    
    assign out = enable == 1 ? in : 10'bz;
endmodule

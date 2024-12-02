`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/01 11:40:39
// Design Name: 
// Module Name: inc_4bitwidth_block
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


module inc_4bitwidth_block(
    input [3:0] in,
    output [3:0] out
    );

    assign out = in + 1'b1;
endmodule

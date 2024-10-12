`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/27 13:06:28
// Design Name: 
// Module Name: demux_varwidth
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


module demux_varwidth #(parameter BIT_WIDTH = 16)(
    input in,
    input [3:0] s,
    output [BIT_WIDTH-1:0] out
    );
    
    wire [BIT_WIDTH-1:0] out;
    assign zero = 0;
    
    assign out[0] = s == 4'b0000 ? in : zero;
    assign out[1] = s == 4'b0001 ? in : zero;
    assign out[2] = s == 4'b0010 ? in : zero;
    assign out[3] = s == 4'b0011 ? in : zero;
    assign out[4] = s == 4'b0100 ? in : zero;
    assign out[5] = s == 4'b0101 ? in : zero;
    assign out[6] = s == 4'b0110 ? in : zero;
    assign out[7] = s == 4'b0111 ? in : zero;
    
    assign out[8] = s == 4'b1000 ? in : zero;
    assign out[9] = s == 4'b1001 ? in : zero;
    assign out[10] = s ==4'b1010 ? in : zero;
    assign out[11] = s == 4'b1011 ? in : zero;
    assign out[12] = s == 4'b1100 ? in : zero;
    assign out[13] = s == 4'b1101 ? in : zero;
    assign out[14] = s == 4'b1110 ? in : zero;
    assign out[15] = s == 4'b1111 ? in : zero;
     
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/01 11:40:39
// Design Name: 
// Module Name: IR_block
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


module IR_block(
    input load,
    input [9:0] in,
    output reg [9:0] out,
    input clk
    );
    
    always @(posedge clk) begin
        if(load == 1) out <= in;
        else out <= 10'b0;
    end
    
endmodule

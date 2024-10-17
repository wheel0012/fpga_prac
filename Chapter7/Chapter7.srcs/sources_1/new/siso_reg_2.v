`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/17 22:47:36
// Design Name: 
// Module Name: siso_reg_2
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
 
//////////////////////////////////////////////////////////////////////////////////


module siso_reg_2(
    input in,
    output reg [3:0] out,
    input clk,
    input clr_b
    
    );
    always @(posedge clk or negedge clr_b)
    begin
        if(clr_b == 0) out <= 4'b0000;
        else
            out <= {out[2:0],in};
    end
endmodule

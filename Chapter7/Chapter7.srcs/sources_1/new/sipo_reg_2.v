`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/17 23:37:39
// Design Name: 
// Module Name: sipo_reg_2
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


module sipo_reg_2(
    input in,
    input clk,
    input reset,
    input read,
    output [3:0] q
    );
    reg [3:0] out;
    assign q = ~read ? out : 4'bzzzz; 
    always @(negedge clk or negedge reset) begin
        if(!reset) out <= 0;
        else
            out <= {out[2:0] , in};
    end
    
endmodule

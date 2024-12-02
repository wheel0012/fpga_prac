`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/02 12:19:36
// Design Name: 
// Module Name: io_test
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


module io_test #(parameter divide = 0) (
    input [9:0] DI,
    input en,
    input reset,
    output reset_o,
    output reg [9:0] DO,
    input clk
    );
    assign reset_o = reset;
    
    
    always @(posedge clk) begin
        if(en) begin
            DO <=DI;
        end 
   end          
endmodule

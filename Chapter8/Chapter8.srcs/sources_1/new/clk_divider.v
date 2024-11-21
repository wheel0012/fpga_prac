`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 20:29:52
// Design Name: 
// Module Name: clk_divider
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


module clk_divider #(parameter divider = 49999999)(
    input clk_in,
    output reg clk_out
    );
    
   reg [25:0] cnt;
   
   initial begin
        cnt <= 0;
        clk_out <= 0;
   end
   
always @(posedge clk_in) begin
    if(cnt < divider) cnt = cnt + 1;
    else clk_out = ~clk_out;     
end
    
endmodule

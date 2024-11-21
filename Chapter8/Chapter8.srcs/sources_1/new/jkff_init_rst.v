`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 10:24:54
// Design Name: 
// Module Name: jkff_init_rst
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


module jkff_init_rst(
input j, 
input k,
input clk,
input rstb,
input rstv,
output reg q);

always @(posedge clk, negedge rstb) begin
    if(rstb == 0) q <= rstv;
    else if (j == 0 && k == 1) q <= 0;
    else if (j == 1 && k == 0) q <= 1;
    else if (j == 1 && k == 1) q <= ~q;
   
end

endmodule

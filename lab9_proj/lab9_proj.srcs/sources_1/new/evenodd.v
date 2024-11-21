`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 11:52:26
// Design Name: 
// Module Name: evenodd
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


module evenodd(
    input clk,
    input rstb,
    input [2:0] in,
    output reg [7:0] seg_data,
    output reg [1:0] digit
    );
    
    wire clk_out;
    //클록 1Hz로 변경
    clk_divider #(49999999) divider (clk, clk_out);
    
    //input이 짝수면 fnd에 'E' 출력, 아니면 0 출력
    //digit은 input이 짝수면 0번, 홀수면 1번
    always @(posedge clk) begin
        seg_data <= in %2 == 0 ? 8'b1001_1110 : 8'b1111_1100;
        digit <= in %2 == 0 ? 2'b01 : 2'b10;
    end
endmodule

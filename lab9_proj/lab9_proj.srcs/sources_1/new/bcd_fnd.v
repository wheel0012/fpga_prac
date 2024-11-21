`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/08 13:54:00
// Design Name: 
// Module Name: bcd_fnd
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



module bcd_fnd (
    input clk, 
    input rstb, 
    output reg [7:0]  digit, 
    output reg [7:0] seg_data
    );


wire [3:0] q;
wire [15:0] sel;
wire clk_out;

//bcd 카운터. 1초마다 변경
bcd_cntr(clk_out,rstb, q);

//클록 디바이더. 1Hz로 변경
clk_divider #(49999999) divider (clk, clk_out);

//bcd 카운터 출력 디코딩
decoder4x16 (q, sel);

//1초마다 digit shift
always @(posedge clk_out) begin
    if(!rstb) digit <= 7'b0000_0001;
    
    digit <= {digit[0], digit[7:1]};
end

//bcd 카운터 디코딩한 값을 fnd 출력으로 리매핑
always @(posedge clk) begin
    case (sel)
        4'h0001: seg_data <= 8'b1111_1100;
        4'h0002: seg_data <= 8'b0110_0000;
        4'h0004: seg_data <= 8'b1101_1010;
        4'h0008: seg_data <= 8'b1111_0010;
        4'h0010: seg_data <= 8'b0110_0110;
        4'h0020: seg_data <= 8'b1011_0110;
        4'h0040: seg_data <= 8'b1011_1110;
        4'h0080: seg_data <= 8'b1110_0100;
        4'h0100: seg_data <= 8'b1111_1110;
        4'h0200: seg_data <= 8'b1110_0110;
        default: seg_data <= 8'd0;
    endcase
end

endmodule

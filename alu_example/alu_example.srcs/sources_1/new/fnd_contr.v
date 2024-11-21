`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/21 20:15:57
// Design Name: 
// Module Name: fnd_contr
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


module fnd_contr(
    input [7:0] in_a,
    input [7:0] in_b,
    input [7:0] result,
    input clk,
    input reset,
    output reg [7:0] digit,
    output reg [7:0] seg_data
    );
    
    
    //1ms마다 digit 변경
    always @(posedge clk) begin
        if(!reset) digit <= 8'b0000_0001;
        else digit <= {{0},{0},{0},{0},digit[0], digit[3:1]};
    
    end
    
    //1ms마다 digit에 맞춰 seg_data 변경
    always @(posedge clk) begin
        if(!reset) begin
            seg_data = 8'b1111_1110;
        end
        
        case (digit)
            8'b0000_0001: seg_data <= fnd_decode(in_a);
            8'b1000_0000: seg_data <= fnd_decode(in_b);
            8'b0100_0000: seg_data <= fnd_decode(result/10);
            8'b0010_0000: seg_data <= fnd_decode(result%10);
        endcase
    end 
    
    
    function [7:0] fnd_decode(input [7:0] in);
    begin
        case (in)
            8'b0000_0000: fnd_decode = 8'b1111_1100; //0
            8'b0000_0001: fnd_decode = 8'b0110_0000; //1
            8'b0000_0010: fnd_decode = 8'b1101_1010; //2
            8'b0000_0011: fnd_decode = 8'b1111_0010; //3
            8'b0000_0100: fnd_decode = 8'b0110_0110; //4
            8'b0000_0101: fnd_decode = 8'b1011_0110; //5
            8'b0000_0110: fnd_decode = 8'b1011_1110; //6
            8'b0000_0111: fnd_decode = 8'b1110_0100; //7
            8'b0000_1000: fnd_decode = 8'b1111_1110; //8
            8'b0000_1001: fnd_decode = 8'b1111_0110; //9
            default: fnd_decode = 8'b0;
        endcase
    end
    endfunction
    
    
endmodule

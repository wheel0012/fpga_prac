`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/08 12:10:16
// Design Name: 
// Module Name: calendar
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


module calendar(
    input clk,
    input rstb,
    output reg [7:0] digit,
    output reg [7:0] seg_data
    );
    
    wire clk_out;
    //클럭 1kHz로 나누기 
    clk_divider #(49999) divider(clk, clk_out);
    
    //1ms마다 digit 변경
    always @(posedge clk_out) begin
        if(!rstb) digit <= 8'b0000_0001;
        else digit <= {digit[0], digit[7:1]};
    
    end
    
    //1ms마다 digit에 맞춰 seg_data 변경
    always @(posedge clk_out) begin
        if(!rstb) begin
            seg_data = 8'b1111_1110;
        end
        
        case (digit)
            8'b0000_0001: seg_data = 8'b1101_1010;
            8'b1000_0000: seg_data = 8'b1111_1100;
            8'b0100_0000: seg_data = 8'b1101_1010;
            8'b0010_0000: seg_data = 8'b0110_0110;
            8'b0001_0000: seg_data = 8'b0110_0000;
            8'b0000_1000: seg_data = 8'b0110_0000;
            8'b0000_0100: seg_data = 8'b1111_1100;
            8'b0000_0010: seg_data = 8'b1111_1110;
        endcase         
    end 
    
endmodule

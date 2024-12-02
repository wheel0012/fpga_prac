`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/28 14:47:29
// Design Name: 
// Module Name: RF_4x10
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


module RF_4x10_block(
    input we,
    input [1:0] wa,
    input [9:0] in_w,
    input rae,
    input [1:0] raa,
    input rbe,
    input [1:0] rba,
    output [9:0] rf_out_b,
    output [9:0] rf_out_a,
    input clk,
    input reset
    );
    
    reg [9:0] rf[0:1];
    
    assign rf_out_a = (rae == 1'b1) ? rf[raa] : 8'h0;
    assign rf_out_b = (rbe == 1'b1) ? rf[rba] : 8'h0;
    
    always @(posedge clk or negedge reset) begin : WritePort
        if(!reset) begin
            rf[2'b00] <= 0;
            rf[2'b01] <= 0;
            rf[2'b10] <= 0;
            rf[2'b11] <= 0;
        end
        
        if(we == 1'b1) begin
            rf[wa] <= in_w;
            end
    end
    
    
    
endmodule

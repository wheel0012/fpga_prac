`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/01 12:16:52
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


module clk_divider #(parameter div = 49999999)
    (
    input clk_in,
    output reg clk_out
    );
    
    reg [25:0] q;
    
    initial begin 
        q<=0;
        clk_out = 0;
    end
    
    always @(posedge clk_in) begin
        if ( q == div) begin
            clk_out <= ~clk_out;
            q <= 0;
        end
        else q <= q + 1;
        
    end 
    
endmodule

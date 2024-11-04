`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 13:14:41
// Design Name: 
// Module Name: clock_divider
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


module clock_divider #(parameter max = 499999)(
    input clk_in,
    output clk_out);
    
    reg [25:0] cnt = 0;
    reg clk_out = 0;
    always @(posedge clk_in) begin
        if(cnt != max) cnt = cnt + 1; 
        else begin 
            cnt <= 0;
            clk_out <= ~clk_out;
        end
        
    end
    
endmodule

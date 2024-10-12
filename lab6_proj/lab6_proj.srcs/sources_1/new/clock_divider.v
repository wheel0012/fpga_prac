`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/11 15:10:44
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


module clock_divider #(parameter div = 49999)(
    input clk_in,
    output reg clk_out
    );
    reg [25:0] q;
    
    initial begin 
        q<=0;
        clk_out = 0;
    end
    always @(posedge clk_in)
    begin
        if(q!=div)q<=q+1;
        else
            begin
                q <=0;
                clk_out <= ~clk_out;
            end
    end
endmodule

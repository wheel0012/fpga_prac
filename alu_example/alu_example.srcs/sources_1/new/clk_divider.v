`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/08 12:56:46
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


module clk_divider #(parameter divide = 49999999)(
    input clk_in,
    output reg clk_out
    );
    
    //save counts
    reg [25:0] cntr;
    
    //0-initialize. might not be synthesized.
    initial begin
        cntr = 0;
    end
    
    //if cntr reaches to 
    always @(posedge clk_in) begin
        cntr = cntr + 1;
        
        if(cntr > divide) begin
            clk_out <= ~clk_out;
            cntr <= 0;
        end 
        
       
    end
endmodule

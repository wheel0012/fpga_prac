`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 01:25:56
// Design Name: 
// Module Name: pipo_reg_2
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


module pipo_reg_2(
    input [3:0] in,
    input clk,
    input reset,
    output reg [3:0] out,
    input wd,
    input rd
    );
    
    always @(negedge clk or negedge reset) begin
        if(!reset)out<=4'b0;
        else
            begin
                //rd == 0
                if (~rd) begin
                    //ld == 0 save
                    if(~wd) out<=in;
                    //;d == 1
                    else out<= 4'b0;
                end
                else
                    out<=out;   
            end
    end    
    
endmodule

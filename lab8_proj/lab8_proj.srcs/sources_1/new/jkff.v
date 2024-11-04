`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/01 12:11:40
// Design Name: 
// Module Name: jkff
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


module jkff(
        input j,
        input k,
        output reg q,
        input set,
        input clk, 
        input resetN,
        input pr_b
    );
    
    always @(posedge clk, negedge resetN, negedge pr_b) begin
    
        if(resetN == 0) q <= set;
        else if(pr_b == 0) q <= 1;
        else if (j == 0 && k == 1) q <= 0;
        else if (j == 1 && k == 0) q <= 1;
        else if( j == 1 && k == 1) q <= ~q;
    end
    
    
    
    
    
endmodule

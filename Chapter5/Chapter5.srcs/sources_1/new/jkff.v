`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/04 09:53:32
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
    input pr_b,
    input clr_b,
    output q,
    input clk
    );
    reg q;
    
    always @(posedge clk or negedge pr_b or negedge clr_b)
    begin
        if(pr_b==0)
            q<=1;
        else
        if (clr_b == 0)
            q<=0;
        else
        begin
            if      ( j == 0 && k == 1) q <= 0;
            else if ( j == 1 && k == 0) q <= 1;
            else if ( j == 1 && k == 1) q <= ~q;
        end
    end
    
    
endmodule

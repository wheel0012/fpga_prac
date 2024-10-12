`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/11 13:47:34
// Design Name: 
// Module Name: graycntr_3bit
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


module graycntr_3bit(
    input pr_b,
    input clr_b,
    input clk,
    output [2:0] q
    );
    
    wire [7:0] decout;
    wire [2:0] jk_t;
    wire [2:0] q;
    decoder3x8 u_dec (.in(q), .out(decout));
    
    assign jk_t[0] = decout[0] | 
                    decout[3] | 
                    decout[6] | 
                    decout[5];
    assign jk_t[1] = decout[1] | decout[7];
    assign jk_t[2] = decout[2] | decout[4];
    
    jkff jkffs[2:0] (.j(jk_t), .k(jk_t), 
                .clk(clk), 
                .pr_b(pr_b), .clr_b(clr_b),
                .q(q));
    
    
endmodule

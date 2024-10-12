`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/11 14:46:31
// Design Name: 
// Module Name: bincntr
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


module bincntr #(parameter BIT = 4) (
    input pr_b,
    input clr_b,
    output [BIT-1:0] q,
    input clk
    );
    
    wire [BIT-1:0] q;
    wire one;
    assign one = 1;
    wire [BIT-1:0] carry;
    genvar i;
    generate
    for(i = 0; i < BIT;i=i+1)
        begin
            if(i == 0)
                assign carry[i] = one;
            else if(i == 1)
                assign carry[i] = q[i-1]; 
            else
                assign carry[i] = q[i-1] & carry[i-1];
         end
    endgenerate 

    jkff jkffs[BIT-1:0] (.j(carry), .k(carry),
        .pr_b(pr_b), .clr_b(clr_b),
        .clk(clk_1khz), .q(q)
        );

    wire clk_1khz;
    clock_divider #(49999) div1(.clk_in(clk), .clk_out(clk_1khz));
    
endmodule

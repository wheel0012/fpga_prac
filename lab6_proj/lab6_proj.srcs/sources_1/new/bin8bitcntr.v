`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/11 12:56:11
// Design Name: 
// Module Name: bin8bitcntr
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


module bin8bitcntr(
    input pr_b,
    input clr_b,
    output [7:0] q,
    input clk
    );
    
    wire [7:0] q;
    wire one;
    assign one = 1;
    wire [7:0] carry;
    genvar i;
    generate
    for(i = 0; i < 8;i=i+1)
        begin
            if(i == 0)
                assign carry[i] = one;
            else if(i == 1)
                assign carry[i] = q[i-1]; 
            else
                assign carry[i] = q[i-1] & carry[i-1];
         end
    endgenerate 

    jkff jkffs[7:0] (.j(carry), .k(carry),
        .pr_b(pr_b), .clr_b(clr_b),
        .clk(clk), .q(q)
        );
     
    
endmodule

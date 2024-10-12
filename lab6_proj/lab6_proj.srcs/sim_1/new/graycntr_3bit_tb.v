`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/11 13:47:02
// Design Name: 
// Module Name: graycntr_3bit_tb
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


module graycntr_3bit_tb(

    );
    reg pr_b, clr_b, clk;
    wire [2:0] q;
    graycntr_3bit uut(.pr_b(pr_b), .clr_b(clr_b), .clk(clk),.q(q));
    
    initial begin
        pr_b = 0; clr_b = 1; clk = 0;
        #100
        pr_b = 1; clr_b = 0;
        #100
        clr_b = 1;
        
        #2000 $finish;
    end
    
    always #50 clk = ~clk;

endmodule

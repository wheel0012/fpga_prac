`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/01 13:21:21
// Design Name: 
// Module Name: ring_tb
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


module ring_tb(

    );
    reg clk, resetn;
    wire [3:0] q;
    ring4bitcntr #(1) ringcntr(
        .clk(clk),
        .resetn(resetn),
        .q(q)
        );
        
    initial begin
        clk = 0; resetn = 0;
        #10 resetn = 1;
        #2000 $finish;
    end
    
    always #5 clk = ~clk;
endmodule

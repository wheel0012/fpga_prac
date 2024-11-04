`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/01 14:12:56
// Design Name: 
// Module Name: updn_sat_tb
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


module updn_sat_tb(

    );
    reg clk, resetn, x;
    wire [1:0] q;
    sync_updn_satcntr #(1) cntr0 (
        .clk(clk),
        .x(x),
        .resetn(resetn),
        .q(q)
    );
    
    initial begin
        x = 0;
        clk  = 0;
        resetn = 0;
        #10 resetn = 1;
        #2000 $finish;
    end
    
    always #5 clk = ~clk;
    always #500 x = ~x;
endmodule

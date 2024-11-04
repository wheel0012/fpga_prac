`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/01 12:32:29
// Design Name: 
// Module Name: sync3bitUPDNcntr_tb
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


module sync3bitUPDNcntr_tb(

    );
    
    reg sel, clk, resetn;
    wire [2:0] q;
    
    sync3bitUPDNcntr cntr0 (
        .q(q),
        .sel(sel),
        .clk(clk),
        .resetn(resetn)
    );
    
    initial begin
        sel = 0; clk = 0; resetn = 0;
        #10
        resetn = 1;
        
        #2000 $finish;
    end
    
    always #5 clk = ~clk;
    always #500 sel = ~sel;
    
endmodule

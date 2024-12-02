`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/02 13:25:31
// Design Name: 
// Module Name: tb
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


module tb(

    );
    
    reg [9:0] DI;
    reg en;
    reg reset;
    wire reset_o;
    wire [9:0] DO;
    reg clk;
    
    io_test #(0) t(DI, en, reset, reset_o, DO, clk);
    
    initial begin
        DI =0; en = 0; reset = 0; clk = 0;
        #10 reset = 1;
        #20 en=1;
        
        #100 DI = 10'b0010_1100;
        
        #2000 $finish;
    end
    
    always #5 clk = ~clk;
    
    
endmodule

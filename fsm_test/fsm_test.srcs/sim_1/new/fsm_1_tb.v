`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/30 20:08:20
// Design Name: 
// Module Name: fsm_1_tb
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


module fsm_1_tb(

    );
    
    reg in;
    reg clk, reset;
        wire q;
        wire [3:0] state;
        
    fsm_1 fsm(in, clk, reset,q, state);
    
    initial begin
    in = 0; clk = 0; reset = 0;
    
    #10 reset = 1;
    
    #2000 $finish;
    end
    
    always #5 clk = ~clk;
    
    always #100 in = ~in;
    
        
endmodule

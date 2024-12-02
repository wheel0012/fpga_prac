`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/29 14:10:02
// Design Name: 
// Module Name: simul_1
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


module simul_1(

    );
    reg clk;
    reg reset;
    reg sw_1;
    
    wire buzz;
    wire LED1;
    wire current;
    wire [15:0] cnt;
    schoolbell_fsm fsm (clk, reset, sw_1, buzz, led1, current, cnt);
    
    initial begin
    clk = 0; reset = 0; sw_1 = 0;
    #10 reset = 1;
    #10 sw_1 = 1;
    #10 sw_1 = 0;
    #10 sw_1 = 1;
    #10 sw_1 = 0;
    #10 sw_1 = 1;
    #1000 $finish;
    end
    
    always #5 clk = ~clk;
endmodule

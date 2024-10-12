`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/20 16:52:19
// Design Name: 
// Module Name: d_latch_tb
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


module d_latch_tb();

    reg d, g;
    wire q;
    d_latch uut(.d(d),.g(g), .q(q));
    
    initial begin
    d = 0;
    g = 0;
    
    #50
    begin
     d = 1;
     g = 0;
    end
    
    #50
    begin
    d=0;
    g=0;
    end
    
    #50 begin
    d=0;
    g=1;
    end
    
    #50
    begin
    d=0;
    g=0;
    end
    
    #100 $finish;
    end
endmodule

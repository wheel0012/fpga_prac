`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/20 16:32:38
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb();

    reg s, r;
    wire q, p;
    sr_latch uut(.s(s), .r(r), .q(q), .p(p));
    
    initial begin
    
    s = 0;
    r = 1;
    
    #50
    begin
     s = 1;
     r = 0;
    end
    
    #50
    begin
    s=0;
    r=0;
    end
    
    #50 begin
    s=0;
    r=1;
    end
    
    #50
    begin
    s=0;
    r=0;
    end
    
    #100 $finish;
    end
endmodule

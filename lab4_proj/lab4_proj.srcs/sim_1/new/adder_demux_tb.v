`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/27 12:44:10
// Design Name: 
// Module Name: demux1x8_tb
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


module adder_demux_tb();

    reg a, b, cin;
    wire s, cout;
    
    adder_demux uut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));
    
    
    initial begin
    a = 0;
    b = 0;
    cin = 0;
    
    #3000 $finish;
    end
    
    always #50 a = ~a;
    always #100 b = ~b;
    always #200 cin = ~cin;
    
endmodule

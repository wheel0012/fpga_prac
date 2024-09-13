`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/13 02:25:44
// Design Name: 
// Module Name: fa1_tb
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


module fa1_tb();

    fa1 uut(
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
    );
    reg a, b, cin;
    wire s, cout;
    
    initial begin
    a = 0;
    b = 0;
    cin = 0;
    
    #1000 $stop;
    end
    
    always #50 a = ~a;
    always #100 b = ~b;
    always #200 cin = ~cin;
    
endmodule

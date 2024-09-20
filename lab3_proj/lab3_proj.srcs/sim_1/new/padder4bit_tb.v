`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/20 13:52:46
// Design Name: 
// Module Name: padder4bit_tb
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


module padder4bit_tb();

    reg [3:0] in_a;
    reg [3:0] in_b;
    reg sign;
    wire [3:0] out;
    wire cout;
    wire of_d;
    
    padder4bit uut(.in_a(in_a),
     .in_b(in_b),
     .sign(sign), 
     .out(out),
     .cout(cout),
     .overflow_detect(of_d));
     
    initial begin
    in_a = 0;
    in_b = 0;
    sign = 0;
    
    #4000 $finish;
    end
    
    always #10 in_a[0] = ~in_a[0];
    always #20 in_a[1] = ~in_a[1];
    always #40 in_a[2] = ~in_a[2];
    always #80 in_a[3] = ~in_a[3];
    
    always #160 in_b[0] = ~in_b[0];
    always #320 in_b[1] = ~in_b[1];
    always #640 in_b[2] = ~in_b[2];
    always #1280 in_b[3] = ~in_b[3];
    
    always #2560 sign = ~sign;
    
endmodule

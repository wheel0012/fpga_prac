`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/01 16:21:02
// Design Name: 
// Module Name: mux_3x1_tb
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


module mux_3x1_tb(

    );
    
    reg [9:0] in_a, in_b, in_c;
    reg [1:0] sel;
    wire [9:0] out;
    
    mux_3x1_10bitwidth_block mux1 (in_a, in_b, in_c, sel, out);
    
    initial begin
        in_a = 10'b00_0110_0100; in_b = 10'b01_1011_0010; in_c = 10'b10_0011_1100;
        sel =0;
        
        #2000 $finish;
    end
    
    always #5 in_a = ~in_a;
    always #5 in_b = ~in_b;
    always #5 in_c = ~in_c;
    always #20 sel[0] = ~sel[0];
    always #40 sel[1] = ~sel[1];
    
endmodule

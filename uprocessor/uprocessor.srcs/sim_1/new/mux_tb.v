`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/22 22:19:25
// Design Name: 
// Module Name: mux_tb
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


module mux_tb(

    );
    
    reg [3:0] in_a, in_b;
    reg sel;
    wire [3:0] out;
    
    mux_2x1_4bitwidth_block mux1 (in_a, in_b, sel, out);
    
    initial begin
        in_a = 4'b1010; in_b = 4'b1100;
        sel =0;
        
        #2000 $finish;
    end
    
    always #5 in_a = ~in_a;
    always #5 in_b = ~in_b;
    always #50 sel = ~sel;
    
endmodule

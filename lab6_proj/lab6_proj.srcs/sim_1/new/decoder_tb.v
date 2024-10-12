`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/11 14:15:24
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb(

    );
    
    reg [2:0] in;
    wire [7:0] out;
    
    decoder3x8 uut(.in(in) ,.out(out));
    
    initial begin
        in =0;
        #2000 $finish;
    end
    
    always #10 in[0] = ~in[0];
    always #20 in[1] = ~in[1];
    always #40 in[2] = ~in[2];
    
endmodule

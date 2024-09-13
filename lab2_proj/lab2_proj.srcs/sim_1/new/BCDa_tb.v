`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/13 15:26:07
// Design Name: 
// Module Name: BCDa_tb
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


module BCDa_tb(

    );
    
    BCDa uut(
    .in1(in1),
    .in2(in2),
    .out(out),
    .c(c)
    );
    
    reg [3:0] in1;
    reg [3:0] in2;
    wire [3:0] out;
    wire c;
    
    initial begin
    in1 = 0;
    in2 = 0;
    #50
    in1 = 4'b0000;
    in1 = 4'b0001;
    
    #50
    in1 = 4'b0000;
    in1 = 4'b0010;
    
    #50
    in1 = 4'b0000;
    in1 = 4'b0011;
    
    #50
    in1 = 4'b0000;
    in1 = 4'b0100;
    
    #50
    in1 = 4'b0000;
    in1 = 4'b0101;
    
    #50
    in1 = 4'b0000;
    in2 = 4'b0110;
    
    #50
    in1 = 4'b0000;
    in2 = 4'b0111;
    
    #50
    in1 = 4'b0000;
    in2 = 4'b1000;
    
    #50
    in1 = 4'b0000;
    in2 = 4'b1001;
    
    #50
    in1 = 4'b0001;
    in2 = 4'b1001;
    
    #50
    in1 = 4'b0010;
    in2 = 4'b1001;
    
    #50
    in1 = 4'b0011;
    in2 = 4'b1001;
    
    #50
    in1 = 4'b0100;
    in2 = 4'b1001;
    
    #50
    in1 = 4'b0101;
    in2 = 4'b1001;
    
    #50
    in1 = 4'b0110;
    in2 = 4'b1001;
    
    #50
    in1 = 4'b0111;
    in2 = 4'b1001;
    
    #50
    in1 = 4'b1000;
    in2 = 4'b1001;
    
    #50
    in1 = 4'b1001;
    in2 = 4'b1001;
    
    #1000 $stop;
    end
endmodule

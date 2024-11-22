`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/22 16:25:55
// Design Name: 
// Module Name: main_tb
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


module main_tb();
    reg [7:0] in_a;
    reg [7:0] in_b;
    reg [2:0] op;
    reg clk;
    reg reset;
    wire [7:0] q;
    
    main_for_test main_circuit(
        in_a,
        in_b,
        op,
        clk,
        reset,
        q
        );
    
    
    
    initial begin
        in_a = 0;
        in_b = 0;
        op=0;
        clk=0;
        reset = 0;
        #10 reset = 1;
        
        #50
        op = 3'b000;
        in_a = 2'h03;
        in_b = 2'h03;
        
        #50
        op = 3'b001;
        in_a = 2'h03;
        in_b = 2'h03;
        
        #50
        op = 3'b010;
        in_a = 2'h03;
        in_b = 2'h03;
        
        #50
        op = 3'b011;
        in_a = 2'h03;
        in_b = 2'h03;
        
        #50
        op = 3'b100;
        in_a = 2'h03;
        in_b = 2'h03;
        
        #50
        op = 3'b101;
        in_a = 2'h03;
        in_b = 2'h03;
        
        #50
        op = 3'b110;
        in_a = 2'h01;
        in_b = 2'h03;
        
        #50
        op = 3'b111;
        in_a = 2'h01;
        in_b = 2'h03;
        
        #100 $finish;
    end
    
    always #5 clk = ~clk;
endmodule

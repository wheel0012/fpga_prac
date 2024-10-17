`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 01:09:44
// Design Name: 
// Module Name: pipo_reg_tb
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


module pipo_reg_tb(

    );
    
    
    reg [3:0] in;
    reg clk, reset, read, load;
    wire [3:0] out;
    
    pipo_reg pipo1 (.clk(clk),.rd(read),.ld(load), .reset(reset),
        .in(in), .out(out));
        
    
   initial begin
        in = 0; clk = 0; load = 0; read = 0;  reset = 0;
        #10 reset = 1;
        
        #20 in = 4'b1011;
        #100 load = 1;
        #100 in = 4'b0101;
        #300 read=1;
        #60 read = 0;
   end     
   
   always #25 clk = ~clk;
endmodule

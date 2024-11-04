`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 12:13:54
// Design Name: 
// Module Name: dff_tb
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


module dff_tb(

    );
    
    reg in, clk, reset;
    wire out;
    
    dff dff1(.d(in), .clk(clk), .reset(reset), .q(out));
    
    initial begin
        in =0; clk = 0; reset = 0;
        #50 reset = 1; in = 1;
        
    end
    
    always #25 clk = ~clk;
    //always #33 in = 1;
    
endmodule

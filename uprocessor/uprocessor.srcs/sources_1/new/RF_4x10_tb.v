`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/28 14:57:41
// Design Name: 
// Module Name: RF_4x10_tb
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


module RF_4x10_tb(

    );
    reg we;
    reg [3:0] wa;
    reg rae;
    wire [15:0] raa;
    reg rbe;
    wire [15:0] rba;
    reg clk;
    reg reset;
    
    initial begin
        we = 0; wa = 0; rae = 0; rbe = 0; clk = 0; reset = 0;
        #10 reset = 1;
        
        #50 ;
            
    end
    
endmodule

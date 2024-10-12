`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/20 16:27:50
// Design Name: 
// Module Name: d_latch
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


module d_latch(
    input d,
    input g,
    output q
    );
    
    wire q, and_s,and_r;
    assign and_s = d & g;
    assign and_r = ~d & g;
    
    sr_latch latch(and_s, and_r, q, z);
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/27 12:33:50
// Design Name: 
// Module Name: adder_demux
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


module adder_demux(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    
    wire s, cout;
    wire [7:0] mux_o;
    wire one;
    assign one = 1;
    
    demux1x8 demux(
        .in(one),
        .s({cin,b,a}), 
        .out(mux_o));
    
    assign s = mux_o[1] | mux_o[2] | mux_o[4] | mux_o[7];
    assign cout = mux_o[3] | mux_o[5] | mux_o[6] | mux_o[7];
    
endmodule

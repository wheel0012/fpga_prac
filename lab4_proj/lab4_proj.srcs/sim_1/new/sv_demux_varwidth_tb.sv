`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/27 13:32:55
// Design Name: 
// Module Name: demux_varwidth_tb
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

module sv_demux_varwidth_tb(
    );
    
    parameter bitwidth = 32, s_bit = 4, o_chan = 10;
    reg [bitwidth-1:0] din;
    reg [s_bit-1 :0] ds;
    wire [bitwidth-1:0] dout [o_chan-1:0];
    
    demux_varwidth #(.BIT_WIDTH(bitwidth), .SELECT_BIT(s_bit), .OUTPUT_CHANNEL(o_chan))
    uut(
        .in(din),
        .s(ds),
        .out(dout)
    );
    
    integer a = 16'b0100101000100111;
    
    initial begin
        din=a;
        ds=0;
    #10000 $finish;
    end
    
    always #50 din = ~din;
    
    always #400 ds[0] = ~ds[0];
    always #800 ds[1] = ~ds[1];
    always #1600 ds[2] = ~ds[2];
    always #3200 ds[3] = ~ds[3];
    
    
    
endmodule

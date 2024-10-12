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

module demux_varwidth_tb(
    );
    
    
    reg [15:0] din;
    reg [2:0] ds;
    wire [15:0] dout [7:0];
    
    demux_varwidth #(.BIT_WIDTH(16))
    uut(
        .in(din),
        .s(ds),
        .out(dout)
    );
    
    
    
    initial begin
        din=0;
        ds=0;
    #10000 $finish;
    end
    
    always #50 din[3] = ~din[3];
    always #100 din[2] = ~din[2];
    
    always #400 ds[0] = ~ds[0];
    always #800 ds[1] = ~ds[1];
    always #1600 ds[2] = ~ds[2];
    
    
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/27 13:06:28
// Design Name: 
// Module Name: demux_varwidth
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


module demux_varwidth #(parameter BIT_WIDTH = 2, SELECT_BIT=3, OUTPUT_CHANNEL=8)(
    input [BIT_WIDTH-1:0] in,
    input [SELECT_BIT-1:0] s,
    output [BIT_WIDTH-1:0] out [OUTPUT_CHANNEL-1:0]
    );
    
    wire [BIT_WIDTH-1:0] out [OUTPUT_CHANNEL-1:0];
    wire zero;
    assign zero = 0;
    
    genvar i;
    
    generate
        for(i = 0; i < OUTPUT_CHANNEL; i=i+1) begin
            assign out[i] = s == i ? in : zero;
        end
    endgenerate
    
endmodule

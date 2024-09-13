`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/13 14:07:32
// Design Name: 
// Module Name: fa4bit
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


module fa4bit(
    input [3:0] in1,
    input [3:0] in2,
    output [3:0] out,
    output cout4
    );
    
    integer i;
    reg [4:0] cin;
    reg [4:0] out;
    wire cout4;
    assign cout4 = cin[4];
    initial begin
        cin[0] = 0;
    end
    
    always @(in1, in2) begin
        
        for(i = 0; i < 4; i=i+1)
            begin
                if      (in1[i] == 0 && in2[i] == 0 && cin[i] == 0) begin out[i] = 0; cin[i+1] = 0; end
                else if (in1[i] == 0 && in2[i] == 0 && cin[i] == 1) begin out[i] = 1; cin[i+1] = 0; end
                else if (in1[i] == 0 && in2[i] == 1 && cin[i] == 0) begin out[i] = 1; cin[i+1] = 0; end
                else if (in1[i] == 0 && in2[i] == 1 && cin[i] == 1) begin out[i] = 0; cin[i+1] = 1; end
                else if (in1[i] == 1 && in2[i] == 0 && cin[i] == 0) begin out[i] = 1; cin[i+1] = 0; end
                else if (in1[i] == 1 && in2[i] == 0 && cin[i] == 1) begin out[i] = 0; cin[i+1] = 1; end
                else if (in1[i] == 1 && in2[i] == 1 && cin[i] == 0) begin out[i] = 0; cin[i+1] = 1; end
                else if (in1[i] == 1 && in2[i] == 1 && cin[i] == 1) begin out[i] = 1; cin[i+1] = 1; end
            end
            
        //cout4 = cin[4];
    end

    
endmodule

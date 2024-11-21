`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/21 19:26:07
// Design Name: 
// Module Name: alu
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


module alu(
input [7:0] in_a, 
    input [7:0] in_b,
    input [2:0] op,
    output reg [7:0] q
    );
    
    
    always @(op) begin
        case(op)
            3'b000: begin // Addition
                q <= in_a + in_b;
            end
            3'b001: begin // Subtraction
                q <= in_a - in_b;
            end
            3'b010: begin // Increment A
                q <= in_a + 1;
            end
            3'b011: begin // Decrement A
                q <= in_a - 1;
            end
            3'b100: begin // LT(nonzero if A < B)
                q <= (in_a < in_b) ? 1 : 0;
            end
            3'b101: begin // NOT A
                q <= ~in_a;
            end
            3'b110: begin // Logic AND
                q <= in_a & in_b;
            end
            3'b111: begin // Logic OR
                q <= in_a | in_b;
            end
            
            default:
                q <= in_a;
        endcase
    
    
    end
endmodule

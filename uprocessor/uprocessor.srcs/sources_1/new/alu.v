`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/22 20:28:33
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

module alu #(parameter BIT_WIDTH = 8, OPCODE_WIDTH = 3)(
    input [BIT_WIDTH-1:0] in_a, 
    input [BIT_WIDTH-1:0] in_b,
    input [OPCODE_WIDTH-1:0] op,
    output reg [BIT_WIDTH-1:0] q
    );
    
/// includes    
`include "defines.v"
///


    //from risc-v github. better propagation delay.
    wire [7:0] sub_res_w = in_a - in_b;
    
    
    always @(op or in_a or in_b or sub_res_w) begin
        case(op)
            `ALU_ADD: begin // Addition
                q <= (in_a + in_b);
            end
            
            `ALU_SUB: begin // Subtraction
                q <= sub_res_w;
            end
            
            //`ALU_INC: begin // Increment A
              //  q <= in_a + in_b;
            //end
            
            `ALU_PASS: begin
                q<=in_a;
            end 
            
            `ALU_DEC: begin // Decrement A
                q <= in_a - in_b;
            end
            
            `ALU_LT: begin // LT(nonzero if A < B)
                q <= (in_a < in_b) ? 1 : 0;
            end
            
            `ALU_NOT: begin // NOT A
                q <= ~in_a;
            end
            
            `ALU_AND: begin // Logic AND
                q <= in_a & in_b;
            end
            
            `ALU_OR: begin // Logic OR
                q <= in_a | in_b;
            end
            
            default:
                q <= in_a;
        endcase
    
    
    end
endmodule

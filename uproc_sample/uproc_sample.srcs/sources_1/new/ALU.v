`timescale 1ns/1ps
module ALU(
    input [2:0] op,
    input [9:0] A,
    input [9:0] B,

    output reg [9:0] Q
);

    always @(*) begin
        case(op)
        3'b000: Q <= (A < B); // LT
        3'b001: Q <= A + B; // ADD
        3'b010: Q <= A - B; // SUB
        3'b011: Q <= A & B; // AND
        3'b100: Q <= A | B; // OR
        3'b101: Q <= !A; // NOT
        3'b110: Q <= A; // MOV
        default: Q <= 0;
        endcase
    end

endmodule
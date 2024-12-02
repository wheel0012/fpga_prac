`include "cpu_defs.v"
`timescale 1ns/1ps

 module  decode(
    input [9:0] IR,
    input wire reset,
    output reg halt,
    output reg WE,
    output reg [1:0] WA,
    output reg RAE,
    output reg [1:0] RAA,
    output reg RBE,
    output reg [1:0] RBA,
    output reg [2:0] op,
    output reg [1:0] IE,
    output reg [9:0] N,
    output reg ZE,
    output reg OE
);

    always @(IR, reset) begin
    if(!reset) begin
        halt <= 0;
        WE <= 0;
        WA <= 0;
        RAE <= 0;
        RAA <= 0;
        RBE <= 0;
        RBA <= 0;
        op <= `OPCODE_NOT_USE;
        ZE <= 0;
        IE <= `MUX_NOT_USE;
        N <= 0;
        OE <= 0;
        end
    else begin
        case(IR[9:6])
        4'b0000: begin // HALT
            halt <= 1;
            WE <= 0;
            WA <= 0;
            RAE <= 0;
            RAA <= 0;
            RBE <= 0;
            RBA <= 0;
            op <= `OPCODE_NOT_USE;
            ZE <= 0;
            IE <= `MUX_NOT_USE;
            N <= 0;
            OE <= 0;
        end
        4'b0001: begin // MOV Rd, Rs
            halt <= 0;
            WE <= 1;
            WA <= IR[3:2];
            RAE <= 1;
            RAA <= IR[1:0];
            RBE <= 0;
            RBA <= 0;
            op <= `MOV;
            ZE <= 0;
            IE <= `MUX_RB;
            N <= 0;
            OE <= 0;
        end
        4'b0010: begin // IN Rd
            halt <= 0;
            WE <= 1;
            WA <= IR[1:0];
            RAE <= 0;
            RAA <= 0;
            RBE <= 0;
            RBA <= 0;
            op <= `OPCODE_NOT_USE;
            ZE <= 0;
            IE <= `MUX_DI;
            N <= 0;
            OE <= 0;
        end
        4'b0011: begin // OUT Rd
            halt <= 0;
            WE <= 0;
            WA <= 0;
            RAE <= 1;
            RAA <= IR[1:0];
            RBE <= 0;
            RBA <= 0;
            op <= `MOV;
            ZE <= 0;
            IE <= `MUX_NOT_USE;
            N <= 0;
            OE <= 1;
        end
        4'b0100: begin // NOT Rd, Rs
            halt <= 0;
            WE <= 1;
            WA <= IR[3:2];
            RAE <= 1;
            RAA <= IR[1:0];
            RBE <= 0;
            RBA <= 0;
            op <= `NOT;
            ZE <= 1;
            IE <= `MUX_RB;
            N <= 0;
            OE <= 0;
        end
        4'b0101, //JMP, JNZ, JN
        4'b0110,
        4'b0111: begin
            halt <= 0;
            WE <= 0;
            WA <= 0;
            RAE <= 0;
            RAA <= 0;
            RBE <= 0;
            RBA <= 0;
            op <= `OPCODE_NOT_USE;
            ZE <= 0;
            IE <= `MUX_NOT_USE;
            N <= 0;
            OE <= 0;
        end
        4'b1000: begin // LT Rr, Rq
            halt <= 0;
            WE <= 0;
            WA <= 0;
            RAE <= 1;
            RAA <= IR[3:2];
            RBE <= 1;
            RBA <= IR[1:0];
            op <= `LT;
            ZE <= 1;
            IE <= `MUX_NOT_USE;
            N <= 0;
            OE <= 0;
        end
        4'b1001: begin // INC Rr, N
            halt <= 0;
            WE <= 1;
            WA <= IR[5:4];
            RAE <= 1;
            RAA <= IR[5:4];
            RBE <= 0;
            RBA <= 0;
            op <= `ADD;
            ZE <= 1;
            IE <= `MUX_RB;
            N <= IR[3:0];
            OE <= 0;
        end
        4'b1010: begin // DEC Rr, N
            halt <= 0;
            WE <= 1;
            WA <= IR[5:4];
            RAE <= 1;
            RAA <= IR[5:4];
            RBE <= 0;
            RBA <= 0;
            op <= `SUB;
            ZE <= 1;
            IE <= `MUX_RB;
            N <= IR[3:0];
            OE <= 0;
        end
        4'b1011: begin // ADD Rr, Rq
            halt <= 0;
            WE <= 1;
            WA <= IR[5:4];
            RAE <= 1;
            RAA <= IR[3:2];
            RBE <= 1;
            RBA <= IR[1:0];
            op <= `ADD;
            ZE <= 1;
            IE <= `MUX_RB;
            N <= 0;
            OE <= 0;
        end
        4'b1100: begin // SUB Rr, Rq
            halt <= 0;
            WE <= 1;
            WA <= IR[5:4];
            RAE <= 1;
            RAA <= IR[3:2];
            RBE <= 1;
            RBA <= IR[1:0];
            op <= `SUB;
            ZE <= 1;
            IE <= `MUX_RB;
            N <= 0;
            OE <= 0;
        end
        4'b1101: begin // AND Rr, Rq
            halt <= 0;
            WE <= 1;
            WA <= IR[5:4];
            RAE <= 1;
            RAA <= IR[3:2];
            RBE <= 1;
            RBA <= IR[1:0];
            op <= `AND;
            ZE <= 1;
            IE <= `MUX_RB;
            N <= 0;
            OE <= 0;
        end
        4'b1110: begin // OR Rr, Rq
            halt <= 0;
            WE <= 1;
            WA <= IR[5:4];
            RAE <= 1;
            RAA <= IR[3:2];
            RBE <= 1;
            RBA <= IR[1:0];
            op <= `OR;
            ZE <= 1;
            IE <= `MUX_RB;
            N <= 0;
            OE <= 0;
        end
        4'b1111: begin // MOV Rd, N
            halt <= 0;
            WE <= 1;
            WA <= IR[5:4];
            RAE <= 0;
            RAA <= 0;
            RBE <= 0;
            RBA <= 0;
            op <= `MOV;
            ZE <= 0;
            IE <= `MUX_N;
            N <= IR[3:0];
            OE <= 0;
        end
        
        default : begin
            halt <= 0;
            WE <= 0;
            WA <= 0;
            RAE <= 0;
            RAA <= 0;
            RBE <= 0;
            RBA <= 0;
            op <= `OPCODE_NOT_USE;
            ZE <= 0;
            IE <= `MUX_NOT_USE;
            N <= 0;
            OE <= 0;
        end    
        endcase
    end
    end

endmodule
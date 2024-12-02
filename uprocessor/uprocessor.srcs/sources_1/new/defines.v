`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/22 20:31:58
// Design Name: 
// Module Name: defines
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


`define ALU_ADD 3'b000
`define ALU_SUB 3'b001
`define ALU_PASS 3'b010
//`define ALU_INC 3'b010
`define ALU_DEC 3'b011
`define ALU_LT 3'b100
`define ALU_NOT 3'b101
`define ALU_AND 3'b110
`define ALU_OR 3'b111

`define CTRL_FETCH_STATE 2'b00
`define CTRL_DECODE_STATE 2'b01
`define CTRL_EXCUTE_STATE 2'b10


`define OP_HALT     4'b0000
`define OP_MOV      4'b0001
`define OP_IN       4'b0010
`define OP_OUT      4'b0011
`define OP_NOT      4'b0100
`define OP_JMP      4'b0101
`define OP_JNZ      4'b0110
`define OP_JN       4'b0111
`define OP_LT       4'b1000
`define OP_INC      4'b1001
`define OP_DEC      4'b1010
`define OP_ADD      4'b1011
`define OP_SUB      4'b1100
`define OP_AND      4'b1101
`define OP_OR       4'b1110
`define OP_MOVI     4'b1111

`define MUX_IRCONST 2'b00
`define MUX_INPUT   2'b01
`define MUX_ALUOUT  2'b10
`define MUX_EMPTY   2'b11
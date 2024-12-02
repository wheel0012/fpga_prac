`define NOPE 0

// opcode
`define LT 3'b000
`define ADD 3'b001
`define SUB 3'b010
`define AND 3'b011
`define OR 3'b100
`define NOT 3'b101
`define MOV 3'b110
`define OPCODE_NOT_USE 3'b111

// execute mux sel
`define MUX_N 2'b00
`define MUX_DI 2'b01
`define MUX_RB 2'b10
`define MUX_NOT_USE 2'b11

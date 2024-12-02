`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/01 10:09:54
// Design Name: 
// Module Name: ROM_16x10_block
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

`
module ROM_16x10_block(
        input [3:0] r_addr,
        input clk,
        output reg [9:0] r_out
    );
    reg [9:0] rom_reg [0:15];
    initial begin
        rom_reg[0] = 10'b0010000000; // IN r0
        rom_reg[1] = 10'b1111011011; // MOV r1, 11
        rom_reg[2] = 10'b1111100000; // MOV r2, 0
        rom_reg[3] = 10'b1000000001; // LT r0, r1
        rom_reg[4] = 10'b0110001000; // JNZ 8
        rom_reg[5] = 10'b1100000001; // SUB r0, r0, r1
        rom_reg[6] = 10'b1001100001; // INC r2, 1
        rom_reg[7] = 10'b0101000011; // JMP 3
        rom_reg[8] = 10'b0011000010; // OUT r2
        rom_reg[9] = 10'b0000000000; // HALT
    end

    always @(posedge clk) begin
        r_out <= rom_reg[r_addr];
    end
endmodule

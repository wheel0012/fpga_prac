`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/01 12:39:39
// Design Name: 
// Module Name: uprocessor_10bit
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


`include "defines.v"

module uprocessor_10bit(
    input clk,
    input [9:0] data_in,
    output [9:0] data_out,
    input reset
    );
    
    reg ctrl_jmp_sig,
        pc_in,
        
        ctrl_irload_sig,
        ctrl_pcload_sig,
        
        aluop_sig,
        z_en_sig,
        rf_w_en_sig,
        rf_w_sel_sig,
        rf_r_a_en_sig,
        rf_r_b_en_sig,
        z_in,
        z_en_sig,
        data_out_sig;


    reg [1:0] rf_w_addr, rf_ra_addr, rf_rb_addr;
    reg [3:0]   i_const;
    wire [2:0] ctrl_alu_op_sig;
    wire [3:0] rom_addr, rom_next_addr;
    wire [9:0] rom_instr, ir_out, rf_in, alu_out;

    ///ROM and IR
    ROM_16x10_block rom (.rom_addr(rom_addr), .clk(clk), .r_out(rom_instr));
    IR_block IR (.load(), .in(rom_instr), .out(ir_out), .clk(clk));
    ///
    
    always @(ir_out) begin
        case(ir_out[9:6])
        4'b0000: begin // HALT
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        4'b0001: begin // MOV Rd, Rs
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        4'b0010: begin // IN Rd
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        4'b0011: begin // OUT Rd
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        4'b0100: begin // NOT Rd, Rs
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        4'b0101, //JMP, JNZ, JN
        4'b0110,
        4'b0111: begin
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        4'b1000: begin // LT Rr, Rq
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        4'b1001: begin // INC Rr, N
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        4'b1010: begin // DEC Rr, N
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        4'b1011: begin // ADD Rr, Rq
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        4'b1100: begin // SUB Rr, Rq
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        4'b1101: begin // AND Rr, Rq
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        4'b1110: begin // OR Rr, Rq
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        4'b1111: begin // MOV Rd, N
            halt <= 1;
            
            aluop_sig <= `ALU_ADD;
            
            rf_w_sel_sig <= `MUX_EMPTY;
            rf_w_en_sig <= 0;
            rf_w_addr <= 0;
            
            rf_r_a_en_sig <= 0;
            rf_ra_addr <= 0;
            rf_r_b_en_sig <= 0;
            rf_rb_addr <= 0;
            
            z_en_sig <= 0;
            i_const <= 0;
            data_out_sig <= 0;
        end
        endcase
    end
    
    
    ///PC SECTION
    inc_4bitwidth_block inc(rom_addr, rom_next_addr);
    mux_2x1_4bitwidth_block mux2x1_1(.in_a(ir_out[3:0]), .in_b(rom_next_addr), .sel(ctrl_jmp_sig), .out(pc_in));
    pc_block pc(.pc_load(ctrl_pc_load), .reset(reset),.pc_in(pc_in), .pc_out(rom_addr), .clk(clk));
    ///
    
    
    
    
    mux_3x1_10bitwidth_block mux_3x1_1 (.in_a(data_in), .in_b(alu_out), .in_c( {{6'b0}, {ir_out[3:0]}} ), .sel(ctrl_RF_w_sel), .out(rf_in));
    
    RF_4x10_block rf(.we(ctrl_rf_we), .wa(ctrl_rf_wa), .in_w(rf_in),
                .rae(ctrl_ra_sig), .raa(rf_ra_addr),
                .rbe(ctrl_rb_sig), .rba(rf_rb_addr),
                .rf_out_a(rf_out_a), .rf_out_b(rf_out_b),
                .clk(clk), .reset(reset));

    alu_block alu ( .in_a(rf_out_a), .in_b(rf_out_b), .op(ctrl_aluop_sig), .out(alu_out));

    dff dff1 (.d(alu_out), .clk(clk), .en(ctrl_z_en_sig),.q(ctrl_z_in));

    buffer_3_state(.in(alu_out), .enable(ctrl_dataout_sig), .out(data_out));


endmodule

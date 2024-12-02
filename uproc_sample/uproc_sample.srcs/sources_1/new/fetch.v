`timescale 1ns/1ps
module fetch(
    input clk,
    input IRload,
    output [9:0] IR,
    input ZF,
    input PCload,
    input reset,
    output [3:0] RA,
    input [9:0] RQ
);

    reg [3:0] pcd;
    wire [3:0] pc;
    reg [3:0] pci;
    
    always @(*) begin: address_mux
        case(IR[9:6])
            4'b0101: pcd <= IR[3:0];
            4'b0110: pcd <= ZF ? pci : IR[3:0];
            4'b0111: pcd <= ZF ? IR[3:0] : pci;
            default: pcd <= pci;
        endcase
    end

    FF #(
        .WIDTH(4)
    ) pc_4_bit(
        .load    (PCload),
        .clear   (reset),
        .clear_value ('b0),
        .clk     (clk),
        .D       (pcd),
        .Q       (pc)
    );

    always @(*) begin
        pci <= pc + 1;
    end

    assign RA = pc;

    FF ir_10_bit(
        .load  (IRload),
        .clear (reset),
        .clear_value('b1),
        .clk   (clk),
        .D     (RQ),
        .Q     (IR)
    );
endmodule
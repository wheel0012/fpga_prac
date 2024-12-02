`timescale 1ns/1ps

module execute(
    input clk,
    input reset,
    input [9:0] DI,
    input [9:0] N,
    input [1:0] IE,
    input WE,
    input [1:0] WA,
    input RAE,
    input [1:0] RAA,
    input RBE,
    input [1:0] RBA,
    input [2:0] op,
    input ZE,
    input ZF,
    input OE,
    output reg [9:0] DO
);
    wire [9:0] Q;
    wire [9:0] A;
    wire [9:0] B;
    reg [9:0] mux_result;

    always @(*) begin
        case(IE)
        2'b00: mux_result <= N;
        2'b01: mux_result <= DI;
        2'b10: mux_result <= Q;
        default: mux_result <= 0;
        endcase
    end

    RF regfile(
        .clk  (clk),
        .reset(reset),
        .WE   (WE),
        .WA   (WA),
        .RAE  (RAE),
        .RAA  (RAA),
        .RBE  (RBE),
        .RBA  (RBA),
        .I    (mux_result),
        .A    (A),
        .B    (B),
        .N    (N)
    );

    ALU alu(
        .op(op),
        .A(A),
        .B(B),
        .Q(Q)
    );
    
    FF #(.WIDTH(1)) Zreg(
        .clk    (clk),
        .D     (~Q),
        .Q     (ZF),
        .clear (reset),
        .clear_value ('bz),
        .load  (ZE)
    );
    
    always @(posedge clk, negedge reset) begin
        if(!reset) begin
            DO <= 10'bz;
            end
        else if(OE) begin
            DO <= Q;
            end 
    end
endmodule
`timescale 1ns/1ps
module FF#(
    parameter WIDTH = 10
)(
    input clk,
    input load,
    input clear,
    input clear_value,

    input [WIDTH - 1: 0] D,
    output reg [WIDTH - 1: 0] Q
);

    always @(posedge clk, negedge clear) begin
        if(!clear) begin
            Q <= {WIDTH{clear_value}};
        end
        else if(load) begin
            Q <= D;
        end
    end

endmodule
`timescale 1ns/1ps

module cpu_test();

    reg clk;
    reg reset;
    wire [9:0] DI = 10'h20;
    wire [9:0] DO;

    initial begin
        clk <= 0;
        forever begin
            #5 clk <= ~clk;
        end
    end

    initial begin
        reset <= 1;
        #500 reset <= 0;
    end

    flow CPU(
        .clk(clk),
        .reset(reset),
        .DI(DI),
        .DO(DO)
    );

endmodule
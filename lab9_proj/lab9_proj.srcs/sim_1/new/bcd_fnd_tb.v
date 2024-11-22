`timescale 1ps/1ns


module bcd_fnd_tb ();

    reg clk, rstb;

    wire [7:0] digit;
    wire [7:0] seg_data;

    bcd_fnd #(1) module1 (clk, rstb, digit, seg_data);

    initial begin
        clk = 0; rstb = 1;
        #
    end

    always #5 clk = ~clk;

endmodule


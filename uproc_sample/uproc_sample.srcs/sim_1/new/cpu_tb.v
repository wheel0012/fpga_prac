`timescale 1ns/1ps

module cpu_test();

    reg clk;
    reg reset;
    reg [9:0] DI;
    wire [9:0] DO;
    wire [7:0] fnd_digit, fnd_value;
    wire clk_out;
    wire [2:0] state_led;

    flow #(0) CPU(
        .clk(clk),
        .reset(reset),
        .DI(DI),
        .DO(DO),
        .fnd_digit(fnd_digit),
        .fnd_value(fnd_value),
        .clk_out_1(clk_out),
        .state_led(state_led)
    );
    
    initial begin
        clk = 0;
        reset = 0;
        DI =  10'b00_0011_1111;
        #1000 reset = 1;
        
        
        #300 reset = 0;
        DI =  10'b00_1011_1110;
        #100 reset = 1;
        
        
        
        #3000 $finish;
    end

    
    always #5 clk = ~clk;
    

endmodule
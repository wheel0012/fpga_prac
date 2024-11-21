`timescale 1ns / 1ps

module jkff_tb;

reg j, k, clk, rstb;
wire out;

jkff ff0(j,k,clk,rstb,out);

initial begin
    j = 0; k = 0; rstb = 0; clk = 0;
    
    #10 rstb = 1;
    
end

always #25 clk <= ~clk;
always #100 j <= ~j;
always #170 k = ~k;

endmodule
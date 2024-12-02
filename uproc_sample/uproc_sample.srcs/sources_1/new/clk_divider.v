`timescale 1ns/1ps
module clk_divider #(parameter divide = 49999999)(
    input wire clk_in,
    input wire reset,
    output reg clk_out
    );
    
    //save counts
    reg [25:0] cntr;
    
    //0-initialize. might not be synthesized.
    
    
    //if cntr reaches to 
    always @(posedge clk_in, negedge reset) begin
        if(!reset) begin
        cntr = 0;
        clk_out <= 0;
        end
        else begin
            cntr = cntr + 1;
            
            if(cntr > divide) begin
                clk_out <= ~clk_out;
                cntr <= 0;
            end 
        
       end
    end
endmodule

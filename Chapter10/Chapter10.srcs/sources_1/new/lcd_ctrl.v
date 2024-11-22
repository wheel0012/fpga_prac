`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/22 03:26:21
// Design Name: 
// Module Name: lcd_ctrl
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


module lcd_ctrl(
    input clk,
    input reset,
    output [7:0] lcd_d,
    output lcd_rs,
    output lcd_rw,
    output lcd_e
    );
    
    wire clk_50hz;
    clk_divider #(99_9999) divider (clk, clk_50hz);
    
    reg [8:0] lcd_cnt;
    reg [7:0] lcd_db;
    wire [7:0] lcd_state;
    
    always @(posedge clk_50hz or negedge reset) begin
        if(!reset) lcd_cnt <= 9'd0;
        else begin
            if (lcd_cnt == 9'b0_0110_1001) lcd_cnt <= lcd_cnt;
            else lcd_cnt <= lcd_cnt + 1'b1;
        end
    
   end
   
   assign lcd_rw = 1'b0;
   assign lcd_e = lcd_cnt[0];
   
   assign lcd_rs = ~((lcd_state >= 8'h00 && lcd_state <= 8'h05) 
                    || (lcd_state == 8'h16)
                    || (lcd_state >= 8'h27 && lcd_state <= 8'h34));
                    
    assign lcd_d = lcd_db;
    
    assign lcd_state = lcd_cnt[8:1];
    
    always @(*) begin
        case (lcd_state)
            8'h00 : lcd_db = 8'b0011_1000;
            8'h01 : lcd_db = 8'b0000_1000;
            8'h02 : lcd_db = 8'b0000_0001;
            8'h03 : lcd_db = 8'b0000_0110;
            8'h04 : lcd_db = 8'b0000_1100;
            8'h05 : lcd_db = 8'b0000_0011;
            
            8'h06 : lcd_db = 8'h4C; //L
            8'h07 : lcd_db = 8'h49; //I
            8'h08 : lcd_db = 8'h42; //B
            8'h09 : lcd_db = 8'h45; //E
            8'h0A : lcd_db = 8'h52; //R
            8'h0B : lcd_db = 8'h54; //T
            8'h0C : lcd_db = 8'h52; //R
            8'h0D : lcd_db = 8'h4F; //O
            8'h0E : lcd_db = 8'h4E; //N
            8'h0F : lcd_db = 8'h20; //NULL
            8'h10 : lcd_db = 8'h43; //C
            8'h11 : lcd_db = 8'h6F; //o
            8'h12 : lcd_db = 8'h20; //NULL
            8'h13 : lcd_db = 8'h4C; //L
            8'h14 : lcd_db = 8'h74; //t
            8'h15 : lcd_db = 8'h64; //d
            
            8'h16 : lcd_db = 8'hC0; //NULL
            
            8'h17 : lcd_db = 8'h46; //F
            8'h18 : lcd_db = 8'h50; //P
            8'h19 : lcd_db = 8'h47; //G
            8'h1A : lcd_db = 8'h41; //A
            8'h1B : lcd_db = 8'h20; // NULL
            8'h1C : lcd_db = 8'h53; //S
            8'h1D : lcd_db = 8'h74; //t
            8'h1E : lcd_db = 8'h61; //a
            8'h1F : lcd_db = 8'h74; //t
            8'h20 : lcd_db = 8'h65; //e
            8'h21 : lcd_db = 8'h72; //r
            8'h22 : lcd_db = 8'h20; //NULL
            8'h23 : lcd_db = 8'h4B; //K
            8'h24 : lcd_db = 8'h69; //i
            8'h25 : lcd_db = 8'h74; //t
            8'h26 : lcd_db = 8'h33; //3
            
            8'h27 : lcd_db = 8'h08; // Display OFF
            8'h28 : lcd_db = 8'h08; // Display OFF
            8'h29 : lcd_db = 8'h08; // Display OFF
            8'h2A : lcd_db = 8'h08; // Display OFF
            
            8'h2B : lcd_db = 8'h0C; // Display ON
            8'h2C : lcd_db = 8'h0C; // Display ON
            8'h2D : lcd_db = 8'h0C; // Display ON
            8'h2E : lcd_db = 8'h0C; // Display ON
            
            8'h2F : lcd_db = 8'h08; // Display OFF
            8'h30 : lcd_db = 8'h08; // Display OFF
            8'h31 : lcd_db = 8'h08; // Display OFF
            8'h32 : lcd_db = 8'h08; // Display OFF
            
            8'h33 : lcd_db = 8'h0C; // Display ON
            8'h34 : lcd_db = 8'h0C; // Display ON
            default : lcd_db = 8'h00;
        endcase
    end


            
endmodule

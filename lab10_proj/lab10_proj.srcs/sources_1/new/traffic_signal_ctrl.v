`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/22 11:42:39
// Design Name: 
// Module Name: calendarNclock
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


module traffic_signal_ctrl(
    input clk,
    input reset,
    output [7:0] lcd_d,
    output lcd_rs,
    output lcd_rw,
    output lcd_e
    );
    
    reg [11:0] year;
    reg [3:0] month;
    reg [4:0] day;
    reg [4:0] hour;
    reg [5:0] min;
    reg [5:0] sec;
    
    wire clk_1hz;
    wire clk_100hz;
    wire clk_1khz;
    wire clk_10khz;
    wire clk_1mhz;
    
    clk_divider #(4999_9999) div1hz (clk, clk_1hz, reset);
    clk_divider #(49_9999) div100hz (clk, clk_100hz, reset);
    clk_divider #(4_9999) div1khz (clk, clk_1khz, reset);
    clk_divider #(4999) div10khz (clk, clk_10khz, reset);
    clk_divider #(4999) div1mhz (clk, clk_1mhz, reset);
    
    reg [8:0] lcd_cnt;
    reg [8:0] init_cnt;
    reg [8:0] clear_cnt;
    reg [7:0] lcd_db;
    
    wire [7:0] lcd_state;
    wire [7:0] init_state;
    wire [7:0] clear_state;
    
    //FSM
    
    parameter [1:0] init_writing =0, lcd_writing = 1, clear_writing = 2;
    reg [1:0] state, next;
    
    wire init, lcd, clear;
    
    assign init = (init_cnt == 9'b0_0000_1101);
    assign lcd = (lcd_cnt == 9'b0_0010_0111);
    assign clear = (clear_cnt == 9'b0_0000_0011);
    
    always @(*) begin
        case(state)
            init_writing : next = init ? lcd_writing : init_writing;
            lcd_writing : next = lcd ? clear_writing : lcd_writing;
            clear_writing : next = clear ? lcd_writing : clear_writing;
        endcase
   end 
    
    always @(posedge clk,negedge reset) begin
        if(!reset) state <= init_writing;
        else state <= next;
    end
    
    //lcd control
    
    assign lcd_rw = 1'b0;
    reg lcd_e_signal;
    always @(*) begin
        if(state == init_writing) lcd_e_signal <= init_cnt[0];
        else if(state == lcd_writing) lcd_e_signal <= lcd_cnt[0];
        else if (state == clear_writing) lcd_e_signal <= clear_cnt[0];
    end 
   
   assign lcd_e = lcd_e_signal;
   
   assign lcd_rs = (state==lcd_writing) && (~(lcd_state == 8'h0A));
   assign lcd_d = lcd_db;
   assign init_state = init_cnt[8:1];
   assign lcd_state = lcd_cnt[8:1];
   assign clear_state = clear_cnt[8:1];
   
   always @(posedge clk_1khz, negedge reset) begin
        if(!reset)begin
            init_cnt <= 9'b0;
        end
        else begin 
            if(state == init_writing) init_cnt <= init_cnt + 1'b1;
            else init_cnt <= 9'd0;
        end
   end
   
   always @(posedge clk_1khz, negedge reset) begin
        if(!reset)begin
            clear_cnt <= 9'b0;
        end
        else begin 
            if(state == clear_writing) clear_cnt <= clear_cnt + 1'b1;
            else clear_cnt <= 9'd0;
        end
   end
   
   always @(posedge clk_1mhz, negedge reset) begin
        if(!reset)begin
            lcd_cnt <= 9'b0;
        end
        else begin 
            if(state == lcd_writing) lcd_cnt <= lcd_cnt + 1'b1;
            else lcd_cnt <= 9'd0;
        end
   end
   
   always @(posedge clk_100hz, negedge reset) begin
    if(!reset) begin
        sec<= 6'd0;
        min <= 6'd0;
        hour <= 5'd0;
    end
    else begin
        if(!(sec == 59)) sec <=sec + 1'b1;
        else begin
            if(!(min==59)) min <= min + 1'b1;
            else begin
                if(!(hour == 23)) hour <= hour + 1'b1;
                else
                    hour <= 5'b0;
                min <= 6'd0;
            end
            sec <= 6'd0;
        end
    end
   end
   
   always @(posedge clk_100hz, negedge reset)begin
        if(!reset) begin
            day  <= 5'd1;
            month <= 4'd1;
            year <= 12'd2024;
        end 
   end
   
   reg [3:0] c1, c2, c3, c4, c5, c6, c7,c8, c9, c10,
    c11, c12, c13, c14, c15, c16, c17, c18;
    
    wire [7:0] digit[0:11];
    assign digit[0] = 8'h45; // E 
    assign digit[1] = 8'h57; // W
    assign digit[2] = 8'h;
    assign digit[3] = 8'h33;
    assign digit[4] = 8'h34;
    assign digit[5] = 8'h35;
    assign digit[6] = 8'h36;
    assign digit[7] = 8'h37;
    assign digit[8] = 8'h38;
    assign digit[9] = 8'h39;
    
    assign digit[10] = 8'h2F;
    assign digit[11] = 8'h3A;
    
    always @(*) begin
        c1 <= (year/1000) %10;
        c2 <= (year/100) %10;
        c3 <= (year/10) %10;
        c4 <= year % 10;
        c5 <= 4'd10;
        c6 <= (month/10) % 10;
        c7 <= month % 10;
        c8 <= 4'd10;
        c9<= (day/10)%10;
        c10 <= (day)%10;
        c11 <= (hour/10) %10;
        c12 <= hour % 10;
        c13 <= 4'd11;
        c14 <= (min/10) %10;
        c15 <= min % 10;
        c16 <= 4'd11;
        c17 <= (sec/10)%10;
        c18 <= sec % 10;
    end 
    
    reg delay;
    initial begin
        delay = 0;
    end 
    
    always @(*) begin
        if(state == init_writing) begin
            case (init_state)
                8'h00 : lcd_db = 8'b0011_1000;
                8'h01 : lcd_db = 8'b0000_1000;
                8'h02 : lcd_db = 8'b0000_0001;
                8'h03 : lcd_db = 8'b0000_0110;
                8'h04 : lcd_db = 8'b0000_1100;
                8'h05 : lcd_db = 8'b0000_0011;
                8'h06 : delay = ~delay;
                default : lcd_db = 8'h00;
            endcase
        end
        else if(state == lcd_writing) begin
            case (lcd_state)
                8'h00 : lcd_db = digit[c1];
                8'h01 : lcd_db = digit[c2];
                8'h02 : lcd_db = digit[c3];
                8'h03 : lcd_db = digit[c4];
                8'h04 : lcd_db = digit[c5];
                8'h05 : lcd_db = digit[c6];
                8'h06 : lcd_db = digit[c7];
                8'h07 : lcd_db = digit[c8];
                8'h08 : lcd_db = digit[c9];
                8'h09 : lcd_db = digit[c10];
                8'h0A : lcd_db = 8'hC0;
                
                8'h0B : lcd_db = digit[c11];
                8'h0C : lcd_db = digit[c12];
                8'h0D : lcd_db = digit[c13];
                8'h0E : lcd_db = digit[c14];
                8'h0F : lcd_db = digit[c15];
                8'h10 : lcd_db = digit[c16];
                8'h11 : lcd_db = digit[c17];
                8'h12 : lcd_db = digit[c18];
                8'h13 : delay = ~delay;
                default: lcd_db = 8'h20;
            endcase 
        end 
        else if(state == clear_writing) begin
            case (clear_state)
                8'h00 : lcd_db = 8'b0000_0011;
                8'h01 : delay = ~delay;
                default : lcd_db = 8'h00;
            endcase
        end  
        else delay = ~delay;
    end           
endmodule

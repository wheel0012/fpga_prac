// Phase
// 0: pcload
// 1: irload
// 2: decode
// 3: reg read & execute & writeback
`timescale 1ns/1ps
module flow #(parameter divider_cnt = 499_9999)(
    input clk,
    input reset,
    input [9:0] DI,
    input [1:0] program_sel,
    output [9:0] DO,
    output [7:0] fnd_digit,
    output [7:0] fnd_value
    ,output clk_out_1,
    output [2:0] state_led
);
    reg [1:0] phase;
    reg [2:0] state_led = 3'b000;

    reg PCload;
    reg IRload;
    reg IRdecode;
    wire [9:0] IR;
    wire ZF;
    wire [3:0] RA;
    wire [9:0] RQ;
    wire WE;
    wire [1:0] WA;
    wire RAE;
    wire [1:0] RAA;
    wire RBE;
    wire [1:0] RBA;
    wire [2:0] op;
    wire [1:0] IE;
    wire [9:0] N;
    wire ZE;
    wire OE;
    wire halt;
    
    wire clk_2hz;
    clk_divider #(divider_cnt) div00 (clk,reset, clk_2hz);
    assign clk_out_1 = clk_2hz;
    always @(posedge clk_2hz, negedge reset) begin
        if(!reset)
            phase <= -1;
        else begin
            if(halt == 1) begin
                phase <= phase;
            end
            else begin
                if(phase < 2) begin
                    phase <= phase + 1;
                end
                else begin
                    phase <= 0;
                end 
            end
        end
    end

    always @(*) begin
        if(halt == 1) begin
            PCload <= 0;
            IRload <= 0;
            state_led <= 3'b111;
        end
        else begin
            case(phase)
            0: begin
                PCload <= 0;
                IRload <= 1;
                IRdecode <= 0;
                state_led <= 3'b001;
            end
            1: begin
                PCload <= 0;
                IRload <= 0;
                IRdecode <= 1;
                state_led <= 3'b010;
            end
            2: begin
                PCload <= 1;
                IRload <= 0;
                IRdecode <= 0;
                state_led <= 3'b100;
            end
            default: begin
            end
            endcase
        end
        
    end

    fetch U0(
        .clk       (clk_2hz),
        .IRload    (IRload),
        .PCload    (PCload),
        .IR        (IR),
        .ZF        (ZF),
        .reset     (reset),
        .RA        (RA),
        .RQ        (RQ)
    );
    
    (* keep_hierarchy = "yes" *)  decode U1(
        .IR(IR),
        .reset(reset),
        .halt(halt),
        .WE(WE),
        .WA(WA),
        .RAE(RAE),
        .RAA(RAA),
        .RBE(RBE),
        .RBA(RBA),
        .op(op),
        .IE(IE),
        .N(N),
        .ZE(ZE),
        .OE(OE)
    );

    execute U2(
        .clk(clk_2hz),
        .reset(reset),
        .DI(DI),
        .N(N),
        .IE(IE),
        .WE(WE & IRdecode),
        .WA(WA),
        .RAE(RAE),
        .RAA(RAA),
        .RBE(RBE),
        .RBA(RBA),
        .op(op),
        .ZE(ZE),
        .ZF(ZF),
        .OE(OE),
        .DO(DO)
    );

    ROM U3(
        .clk(clk_2hz),
        .address(RA),
        .program_sel(program_sel),
        .Q(RQ)
    );

    wire clk_out;
    clk_divider #(49999) div0 (clk,reset, clk_out);
    
    fnd_ctrl ctrl(
        DO,
        clk_out,
        reset,
        fnd_digit, 
        fnd_value
        );
endmodule
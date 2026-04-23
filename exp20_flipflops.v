module sr_flipflop(clk, s, r, q, qo);
    input  clk, s, r;
    output q, qo;
    assign q  = ~(~(s & clk) & qo);
    assign qo = ~(~(r & clk) & q);
endmodule

module jk_flipflop(j, k, clk, q);
    input      j, k, clk;
    output reg q;
    always @(posedge clk)
    begin
        case({j, k})
            2'b00: q = q;
            2'b01: q = 1'b0;
            2'b10: q = 1'b1;
            2'b11: q = ~q;
        endcase
    end
endmodule

module d_flipflop(d, clk, q);
    input      d, clk;
    output reg q;
    always @(posedge clk)
    begin
        case(d)
            1'b0: q = 0;
            1'b1: q = 1;
        endcase
    end
endmodule

module t_flipflop(t, rst, clk, q);
    input      clk, t, rst;
    output reg q;
    always @(posedge clk)
    begin
        if (!rst)
            q = 1'b0;
        else if (t)
            q = ~q;
    end
endmodule

module master_slave_ff(clk, rst, d, master, q);
    input      clk, d, rst;
    output reg q;
    output reg master;
    always @(posedge clk, negedge rst)
    begin
        if (!rst)
            master <= 0;
        else
            master <= d;
    end
    always @(negedge clk, negedge rst)
    begin
        if (!rst)
            q <= 0;
        else
            q <= master;
    end
endmodule

module d_latch(d, en, q);
    input      d, en;
    output reg q;
    always @(d, en)
    begin
        if (en)
            q = d;
    end
endmodule

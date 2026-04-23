module tb_sr_flipflop();
    reg  clk, s, r;
    wire q, qo;
    sr_flipflop uut(clk, s, r, q, qo);
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial
    begin
        $dumpfile("exp20_srff.vcd");
        $dumpvars(0, tb_sr_flipflop);
        s=0; r=0; #10;
        s=0; r=1; #10;
        s=1; r=0; #10;
        s=1; r=1; #10;
        s=0; r=0; #10;
        s=0; r=1; #10;
        s=1; r=0; #10;
        $finish;
    end
endmodule

module tb_jk_flipflop();
    reg  clk, j, k;
    wire q;
    jk_flipflop uut(j, k, clk, q);
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial
    begin
        $dumpfile("exp20_jkff.vcd");
        $dumpvars(0, tb_jk_flipflop);
        j=0; k=0; #10;
        j=0; k=1; #10;
        j=1; k=0; #10;
        j=1; k=1; #10;
        j=0; k=0; #10;
        $finish;
    end
endmodule

module tb_d_flipflop();
    reg  clk, d;
    wire q;
    d_flipflop uut(d, clk, q);
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial
    begin
        $dumpfile("exp20_dff.vcd");
        $dumpvars(0, tb_d_flipflop);
        d=0; #10;
        d=1; #10;
        d=0; #10;
        d=1; #10;
        d=1; #10;
        d=0; #10;
        $finish;
    end
endmodule

module tb_t_flipflop();
    reg  clk, t, rst;
    wire q;
    t_flipflop uut(t, rst, clk, q);
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial
    begin
        $dumpfile("exp20_tff.vcd");
        $dumpvars(0, tb_t_flipflop);
        rst=0; #7;
        rst=1; t=0; #10;
        t=1; #10;
        t=1; #10;
        rst=0; t=0; #10;
        rst=1; t=1; #10;
        t=0; #10;
        $finish;
    end
endmodule

module tb_master_slave_ff();
    reg  clk, rst, d;
    wire master, q;
    master_slave_ff uut(clk, rst, d, master, q);
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial
    begin
        $dumpfile("exp20_msff.vcd");
        $dumpvars(0, tb_master_slave_ff);
        d=1; rst=1; #10;
        d=1; rst=0; #5;
        d=1; rst=1; #10;
        d=0; rst=1; #10;
        d=1; rst=1; #10;
        d=0; rst=1; #10;
        d=1; rst=1; #10;
        $finish;
    end
endmodule

module tb_d_latch();
    reg  d, en;
    wire q;
    d_latch uut(d, en, q);
    initial
    begin
        $dumpfile("exp20_dlatch.vcd");
        $dumpvars(0, tb_d_latch);
        d=0; en=0; #5;
        d=1; en=1; #10;
        d=0; #5;
        d=1; #5;
        en=0; d=0; #5;
        d=1; #5;
        en=1; d=0; #5;
        d=1; #5;
        $finish;
    end
endmodule

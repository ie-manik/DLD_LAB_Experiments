module tb_johnson_counter();
    reg  clk, rst;
    wire [3:0] q;
    johnson_counter uut(clk, rst, q);
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial
    begin
        $dumpfile("exp21_johnson.vcd");
        $dumpvars(0, tb_johnson_counter);
        rst=1; #5;
        rst=0; #5;
        rst=1; #90;
        $finish;
    end
endmodule

module tb_ring_counter();
    reg  clk, rst;
    wire [3:0] q;
    ring_counter uut(clk, rst, q);
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial
    begin
        $dumpfile("exp21_ring.vcd");
        $dumpvars(0, tb_ring_counter);
        rst=1; #5;
        rst=0; #10;
        rst=1; #50;
        $finish;
    end
endmodule

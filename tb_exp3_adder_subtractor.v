module tb_half_adder();
    reg a, b;
    wire sum, carry;
    half_adder uut(a, b, sum, carry);
    initial
    begin
        $dumpfile("exp3_ha.vcd");
        $dumpvars(0, tb_half_adder);
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule

module tb_full_adder();
    reg a, b, c;
    wire sum, carry;
    full_adder uut(a, b, c, sum, carry);
    initial
    begin
        $dumpfile("exp3_fa.vcd");
        $dumpvars(0, tb_full_adder);
        a=0; b=0; c=0; #10;
        a=0; b=0; c=1; #10;
        a=0; b=1; c=0; #10;
        a=0; b=1; c=1; #10;
        a=1; b=0; c=0; #10;
        a=1; b=0; c=1; #10;
        a=1; b=1; c=0; #10;
        a=1; b=1; c=1; #10;
        $finish;
    end
endmodule

module tb_half_subtractor();
    reg a, b;
    wire d, bo;
    half_subtractor uut(a, b, d, bo);
    initial
    begin
        $dumpfile("exp3_hs.vcd");
        $dumpvars(0, tb_half_subtractor);
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule

module tb_full_subtractor();
    reg a, b, c;
    wire d, bo;
    full_subtractor uut(a, b, c, d, bo);
    initial
    begin
        $dumpfile("exp3_fs.vcd");
        $dumpvars(0, tb_full_subtractor);
        a=0; b=0; c=0; #10;
        a=0; b=0; c=1; #10;
        a=0; b=1; c=0; #10;
        a=0; b=1; c=1; #10;
        a=1; b=0; c=0; #10;
        a=1; b=0; c=1; #10;
        a=1; b=1; c=0; #10;
        a=1; b=1; c=1; #10;
        $finish;
    end
endmodule

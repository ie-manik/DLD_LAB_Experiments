module tb_exp10();
    reg  a, b, s;
    wire out;
    mux_2x1 uut(a, b, s, out);
    initial
    begin
        $dumpfile("exp10.vcd");
        $dumpvars(0, tb_exp10);
        a=0; b=1; s=0; #10;
        a=0; b=1; s=1; #10;
        a=1; b=0; s=0; #10;
        a=1; b=0; s=1; #10;
        $finish;
    end
endmodule

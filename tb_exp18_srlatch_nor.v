module tb_exp18();
    reg  s, r;
    wire q, qo;
    srlatch_nor uut(s, r, q, qo);
    initial
    begin
        $dumpfile("exp18.vcd");
        $dumpvars(0, tb_exp18);
        s=0; r=0; #10;
        s=0; r=1; #10;
        s=1; r=0; #10;
        s=1; r=1; #10;
        $finish;
    end
endmodule

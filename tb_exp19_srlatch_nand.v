module tb_exp19();
    reg  s, r;
    wire q, qo;
    srlatch_nand uut(s, r, q, qo);
    initial
    begin
        $dumpfile("exp19.vcd");
        $dumpvars(0, tb_exp19);
        s=0; r=0; #10;
        s=0; r=1; #10;
        s=1; r=0; #10;
        s=1; r=1; #10;
        s=0; r=0; #10;
        s=1; r=0; #10;
        s=0; r=1; #10;
        s=1; r=1; #10;
        $finish;
    end
endmodule

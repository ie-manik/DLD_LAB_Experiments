module tb_even_parity_gen();
    reg  [3:0] in;
    wire       p;
    even_parity_gen uut(.p(p), .in(in));
    initial
    begin
        $dumpfile("exp17_epg.vcd");
        $dumpvars(0, tb_even_parity_gen);
        in=4'b1010; #10;
        in=4'b1110; #10;
        in=4'b0101; #10;
        in=4'b1011; #10;
        $finish;
    end
endmodule

module tb_odd_parity_gen();
    reg  [3:0] in;
    wire       p;
    odd_parity_gen uut(.p(p), .in(in));
    initial
    begin
        $dumpfile("exp17_opg.vcd");
        $dumpvars(0, tb_odd_parity_gen);
        in=4'b1010; #10;
        in=4'b1110; #10;
        in=4'b0101; #10;
        in=4'b1011; #10;
        $finish;
    end
endmodule

module tb_even_parity_check();
    reg  [3:0] in;
    reg        p;
    wire       error;
    even_parity_check uut(in, p, error);
    initial
    begin
        $dumpfile("exp17_epc.vcd");
        $dumpvars(0, tb_even_parity_check);
        in=4'b0101; p=1'b0; #10;
        in=4'b1101; p=1'b1; #10;
        in=4'b0111; p=1'b0; #10;
        in=4'b1001; p=1'b1; #10;
        $finish;
    end
endmodule

module tb_odd_parity_check();
    reg  [3:0] in;
    reg        p;
    wire       error;
    odd_parity_check uut(in, p, error);
    initial
    begin
        $dumpfile("exp17_opc.vcd");
        $dumpvars(0, tb_odd_parity_check);
        in=4'b0101; p=1'b0; #10;
        in=4'b1101; p=1'b1; #10;
        in=4'b0111; p=1'b0; #10;
        in=4'b1001; p=1'b1; #10;
        $finish;
    end
endmodule

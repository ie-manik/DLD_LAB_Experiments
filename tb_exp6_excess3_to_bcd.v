module tb_exp6();
    reg  [3:0] x;
    wire [3:0] b;
    excess3_to_bcd uut(x, b);
    initial
    begin
        $dumpfile("exp6.vcd");
        $dumpvars(0, tb_exp6);
        x=4'b0011; #10;
        x=4'b0100; #10;
        x=4'b0101; #10;
        x=4'b0110; #10;
        x=4'b0111; #10;
        x=4'b1000; #10;
        x=4'b1001; #10;
        x=4'b1010; #10;
        x=4'b1011; #10;
        x=4'b1100; #10;
        $finish;
    end
endmodule

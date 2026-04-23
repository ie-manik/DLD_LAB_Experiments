module tb_exp14();
    reg  [7:0] in;
    wire [2:0] out;
    encoder_8x3 uut(in, out);
    initial
    begin
        $dumpfile("exp14.vcd");
        $dumpvars(0, tb_exp14);
        in=8'b00000001; #10;
        in=8'b00000010; #10;
        in=8'b00000100; #10;
        in=8'b00001000; #10;
        in=8'b00010000; #10;
        in=8'b00100000; #10;
        in=8'b01000000; #10;
        in=8'b10000000; #10;
        $finish;
    end
endmodule

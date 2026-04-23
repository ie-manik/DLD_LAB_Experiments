module tb_exp8();
    reg  [3:0] gray;
    wire [3:0] bin;
    gray_binary_conv uut(gray, bin);
    initial
    begin
        $dumpfile("exp8.vcd");
        $dumpvars(0, tb_exp8);
        gray=4'b1010; #10;
        gray=4'b1000; #10;
        gray=4'b0101; #10;
        gray=4'b1110; #10;
        gray=4'b0010; #10;
        $finish;
    end
endmodule

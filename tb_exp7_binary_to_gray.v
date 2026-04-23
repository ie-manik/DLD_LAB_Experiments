module tb_exp7();
    reg  [3:0] bin;
    wire [3:0] gray;
    binary_gray_conv uut(bin, gray);
    initial
    begin
        $dumpfile("exp7.vcd");
        $dumpvars(0, tb_exp7);
        bin=4'b1010; #10;
        bin=4'b1000; #10;
        bin=4'b0101; #10;
        bin=4'b1110; #10;
        bin=4'b0010; #10;
        $finish;
    end
endmodule

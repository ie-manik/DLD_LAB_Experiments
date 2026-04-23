module tb_exp4();
    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       carry;
    ripple_carry_adder uut(a, b, cin, sum, carry);
    initial
    begin
        $dumpfile("exp4.vcd");
        $dumpvars(0, tb_exp4);
        a=4'b0000; b=4'b0101; cin=0; #10;
        a=4'b0110; b=4'b0101; cin=1; #10;
        a=4'b0110; b=4'b1111; cin=0; #10;
        a=4'b1111; b=4'b1111; cin=1; #10;
        $finish;
    end
endmodule

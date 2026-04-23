module mux_2x1(a, b, s, out);
    input  a, b, s;
    output out;
    assign out = ((~s) & a) | (s & b);
endmodule

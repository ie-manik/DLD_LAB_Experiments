module even_parity_gen(in, p);
    input  [3:0] in;
    output       p;
    assign p = in[3] ^ in[2] ^ in[1] ^ in[0];
endmodule

module odd_parity_gen(in, p);
    input  [3:0] in;
    output       p;
    assign p = ~(in[3] ^ in[2] ^ in[1]) ^ in[0];
endmodule

module even_parity_check(in, p, error);
    input  [3:0] in;
    input        p;
    output       error;
    assign error = in[3] ^ in[2] ^ in[1] ^ in[0] ^ p;
endmodule

module odd_parity_check(in, p, error);
    input  [3:0] in;
    input        p;
    output       error;
    assign error = ~(in[3] ^ in[2] ^ in[1] ^ in[0]) ^ p;
endmodule

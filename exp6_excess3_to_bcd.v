module excess3_to_bcd(x, b);
    input  [3:0] x;
    output [3:0] b;
    assign b[3] =  x[3] & (x[2] | x[1] | x[0]) | x[3] & ~x[2] & ~x[1];
    assign b[2] = (x[3] & ~x[2] & ~x[1] & ~x[0]) |
                  (~x[3] & x[2] & ~x[1] & ~x[0]) |
                  (~x[3] & x[2] & ~x[1] &  x[0]) |
                  (~x[3] & x[2] &  x[1] &  x[0]);
    assign b[1] = (~x[2] & x[1] & ~x[0]) |
                  (~x[2] & ~x[1] & x[0]) |
                  ( x[2] &  x[1] & x[0]);
    assign b[0] = ~x[0];
endmodule

module srlatch_nand(s, r, q, qo);
    input  s, r;
    output q, qo;
    assign q  = ~(r & qo);
    assign qo = ~(s & q);
endmodule

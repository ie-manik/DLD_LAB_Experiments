module half_adder(input a, b, output sum, carry);
    assign sum   = a ^ b;
    assign carry = a & b;
endmodule

module full_adder(input a, b, c, output sum, carry);
    assign sum   = a ^ b ^ c;
    assign carry = (a & b) | (b & c) | (a & c);
endmodule

module half_subtractor(input a, b, output d, bo);
    assign d  = a ^ b;
    assign bo = (~a) & b;
endmodule

module full_subtractor(input a, b, c, output d, bo);
    assign d  = a ^ b ^ c;
    assign bo = ((~a) & b) | ((~a) & c) | (b & c);
endmodule

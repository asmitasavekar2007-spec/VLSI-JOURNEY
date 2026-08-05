module comparator1bit(
    input a,
    input b,
    output agtb,
    output aeqb,
    output altb
);

assign agtb = a & ~b;
assign aeqb = ~(a ^ b);
assign altb = ~a & b;

endmodule
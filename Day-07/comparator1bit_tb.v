`timescale 1ns/1ps

module comparator1bit_tb;

reg a;
reg b;
wire agtb;
wire aeqb;
wire altb;

comparator1bit uut(
    .a(a),
    .b(b),
    .agtb(agbt),
    .aeqb(aeqb),
    .altb(altb)
);

initial begin
    $dumpfile("comparator1bit.vcd");
    $dumpvars(0, comparator1bit_tb);

    a = 0; b = 0;
    #10;
    a = 1; b = 0;
    #10;
    a = 0; b = 1;
    #10;
    a = 1; b = 1;
    #10;

$finish;
end
endmodule
`timescale 1ns/1ps

module expression_1_tb;
reg a;
reg b;
reg c;
wire y;

expression_1 uut(
    .a(a),
    .b(b),
    .c(c),
    .y(y)
);
initial begin 

$dumpfile("expression_1.vcd");
$dumpvars(0,expression_1_tb);

    a = 0; b = 0; c = 0;
    #10;

    a = 0; b = 0; c = 1;
    #10;

    a = 0; b = 1; c = 0;
    #10;

    a = 0; b = 1; c = 1;
    #10;

    a = 1; b = 0; c = 0;
    #10;

    a = 1; b = 0; c = 1;
    #10;

    a = 1; b = 1; c = 0;
    #10;

    a = 1; b = 1; c = 1;
    #10;

    $finish;

end

endmodule
`timescale 1ns/1ps

module encoder4x2_tb;

reg i0;
reg i1;
reg i2;
reg i3;

wire a;
wire b;

encoder4x2 uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3)
);

initial begin
    $dumpfile("encoder4x2.vcd");
    $dumpvars(0, encoder4x2_tb);

    i0 = 1; i1 = 0; i2 = 0; i3 = 0;
    #10;

    i0 = 0; i1 = 1; i2 = 0; i3 = 0;
    #10;

    i0 = 0; i1 = 0; i2 = 1; i3 = 0;
    #10;

    i0 = 0; i1 = 0; i2 = 0; i3 = 1;
    #10;
    $finish;
end
endmodule
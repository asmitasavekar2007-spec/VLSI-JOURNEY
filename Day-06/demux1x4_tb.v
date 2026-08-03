`timescale 1ns/1ps

module demux1x4_tb;

reg d;
reg s1;
reg s0;

wire y0;
wire y1;
wire y2;
wire y3;

demux1x4 uut(
    .d(d),
    .s1(s1),
    .s0(s0),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin

    $dumpfile("demux1x4.vcd");
    $dumpvars(0, demux1x4_tb);

    d = 1; s1 = 0; s0 = 0;
    #10;

    d = 1; s1 = 0; s0 = 1;
    #10;

    d = 1; s1 = 1; s0 = 0;
    #10;

    d = 1; s1 = 1; s0 = 1;
    #10;

    $finish;

end

endmodule
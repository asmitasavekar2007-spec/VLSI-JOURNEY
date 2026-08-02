`timescale 1ns/1ps

module mux4x1_tb;
reg i0;
reg i1;
reg i2;
reg i3;
reg s0;
reg s1;

wire y;

mux4x1 uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s0(s0),
    .s1(s1),
    .y(y)
);

initial begin 
$dumpfile("mux4x1.vcd");
$dumpvars(0, mux4x1_tb);

i0 = 0; 
i1 = 1; 
i2 = 0;
i3 = 1;

s0 = 0; s1 = 0;
#10;
s0 = 0; s1 = 1;
#10;
s0 = 1; s1 = 0;
#10;
s0 = 1; s1 = 1;
#10;
$finish;
end
endmodule
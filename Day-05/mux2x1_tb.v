`timescale 1ns/1ps

module mux2x1_tb;

reg i0;
reg i1;
reg s;

wire y;

mux2x1 uut(
    .i0(i0),
    .i1(i1),
    .s(s),
    .y(y)
);

initial begin 

$dumpfile("mux2x1.vcd");
$dumpvars(0, mux2x1_tb);

i0 = 0; i1 = 0; s = 0;
#10;
i0 = 0; i1 = 0; s = 1;
#10;
i0 = 0; i1 = 1; s = 0;
#10;
i0 = 0; i1 = 1; s = 1;
#10;
i0 = 1; i1 = 0; s = 0;
#10;
i0 = 1; i1 = 0; s = 1;
#10;
i0 = 1; i1 = 1; s = 0;
#10;
i0 = 1; i1 = 1; s = 1;
#10;
$finish;
end
endmodule
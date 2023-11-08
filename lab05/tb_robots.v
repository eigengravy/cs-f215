`include "r1_counter.v"
`include "r2_counter.v"
`include "r3_counter.v"

module tb_robots;
reg clk = 0;
reg rstA, rstB, rstC;
wire[3:0] A;
wire[1:0] B;
wire C;

always #2 clk = ~clk;
r1_counter r1(clk, rstA, A);
r2_counter r2(A[3], rstB, B);
r3_counter r3(B[1], rstC, C);

initial begin
    $dumpfile("tb_robots.vcd");
    $dumpvars(0, tb_robots);
    rstA=1'b1;
    rstB=1'b1;
    rstC=1'b1;
    #2 rstA=1'b0;rstB=1'b0; rstC=1'b0;
    #300 $finish;
end

initial begin
    $monitor("A=%d B=%d C=%d",A,B,C);
end

endmodule

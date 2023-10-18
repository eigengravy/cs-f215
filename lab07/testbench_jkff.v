`include "jkff.v"
module testbench_jkff();
    wire Q, nQ;
    reg J, K, rst, clk = 1'b0;
    always #5 clk<=~clk;
    jkff ff(Q, nQ, J, K, clk, rst);
    initial #41 $finish;
    initial begin
        $dumpfile("jkff.vcd");
        $dumpvars(0, testbench_jkff);
        J=1'bx; K=1'bx; rst=1'b0;
        #10 J=1'b1; K=1'b0; rst=1'b1;
        #5 J=1'b0; K=1'b1;
        #5 J=1'b0; K=1'b1;
        #5 J=1'b1; K=1'b1;
        #5 J=1'b1; K=1'b1;
        #10 J=1'b0; K=1'b0;
    end
    initial begin
        $monitor("time = %d rst = %b clk = %b J = %b K = %b Q = %b nQ = %b", $time, rst, clk, J, K, Q, nQ);
    end
endmodule

// Reset time J K
// 0 0 x x
// 1 10 1 0
// 1 15 0 1
// 1 20 0 1
// 1 25 1 1
// 1 30 1 1
// 1 40 0 0
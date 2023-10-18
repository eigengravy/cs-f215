`include "tff.v"
module testbench_tff();
    wire Q, nQ;
    reg T, rst, clk = 1'b0;
    always #5 clk<=~clk;
    tff ff(Q, nQ, T, clk, rst);
    initial #31 $finish;
    initial begin
        $dumpfile("tff.vcd");
        $dumpvars(0, testbench_tff);
        T=1'bx; rst=1'b0;
        #10 T=1'b0; rst=1'b1;
        #5 T=1'b1;
        #5 T=1'b1;
        #5 T=1'b0;
        #5 T=1'b1;
    end
    initial begin
        $monitor("time = %d rst = %b clk = %b T = %b Q = %b nQ = %b", $time, rst, clk, T, Q, nQ);
    end
endmodule
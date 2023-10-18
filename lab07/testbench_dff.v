`include "dff.v"
module testbench_dff();
    wire Q, nQ;
    reg D, rst, clk = 1'b0;
    always #5 clk<=~clk;
    dff ff(Q, nQ, D, clk, rst);
    initial #31 $finish;
    initial begin
        $dumpfile("dff.vcd");
        $dumpvars(0, testbench_dff);
        D=1'bx; rst=1'b0;
        #5 D=1'b0; rst=1'b1;
        #5 D=1'b1;
        #5 D=1'b0;
        #5 D=1'b1;
        #5 D=1'b1;
    end
    initial begin
        $monitor("time = %d rst = %b clk = %b D = %b Q = %b nQ = %b", $time, rst, clk, D, Q, nQ);
    end
endmodule
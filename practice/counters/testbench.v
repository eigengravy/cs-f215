`include "counter.v"
module testbench;

reg clk = 0, reset;
wire [3:0]counter;
counter c(clk,reset,counter);
always #5 clk=~clk;

initial begin
    $dumpfile("out.vcd");
    $dumpvars(0, testbench);
    reset = 1;
    #13 reset = 0;
    #200 $finish;
end

initial begin
    $monitor("clk=%d reset=%b counter=%b", $time, reset, counter);
end

endmodule
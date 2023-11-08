`include "counter.v"
module tb_counter;

reg clk = 0, rst;
wire [2:0] counter; 
wire R,Y,G;

always #5 clk=~clk;

counter c(clk, rst, counter, R,Y,G);

initial begin
    $dumpfile("tb_counter.vcd");
    $dumpvars(0, tb_counter);
    rst=1;
    #10 rst=0;
    #200 $finish;
end

initial begin
    $monitor("time=%3d counter=%b RYG=%b%b%b",$time,counter,R,Y,G);
end

endmodule


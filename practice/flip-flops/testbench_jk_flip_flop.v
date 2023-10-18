`include "jk_flip_flop.v"
module testbench ();
    wire Q, nQ;
    reg J, K, clk = 1'b0;
    jk_flip_flop jkff(Q, nQ, J, K, clk);
    always #10 clk = ~clk;
    initial begin
        D = 1'b1;
        #10 D = 1'b0;
        #10 D = 1'b1;
        #10 D = 1'b1;
        #10 D = 1'b0;
        #10 D = 1'b1;
        #10 D = 1'b0;
        #10 D = 1'b0;
        #10 D = 1'b1;
    end 
    initial #105 $finish;
    initial begin
        $monitor("J = %b K = %b  clk = %b Q = %b Q' = %b",J, K, clk, Q, nQ);
    end
endmodule
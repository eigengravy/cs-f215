`include "t_flip_flop.v"
module testbench ();
    wire Q, nQ;
    reg T, clk = 1'b0;
    t_flip_flop tff(Q, nQ, T, clk);
    always #10 clk = ~clk;
    initial begin
        T = 1'b1;
        #10 T = 1'b0;
        #10 T = 1'b1;
        #10 T = 1'b1;
        #10 T = 1'b0;
        #10 T = 1'b1;
        #10 T = 1'b0;
        #10 T = 1'b0;
        #10 T = 1'b1;
    end 
    initial #105 $finish;
    initial begin
        $monitor("T = %b  clk = %b Q = %b Q' = %b",T, clk, Q, nQ);
    end
endmodule
`include "posedge_d_flip_flop.v"
module testbench ();
    wire Q, nQ;
    reg D, clk = 1'b0;
    posedge_d_flip_flop dff(Q, nQ, D, clk);
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
        $monitor("D = %b  clk = %b Q = %b Q' = %b",D, clk, Q, nQ);
    end
endmodule
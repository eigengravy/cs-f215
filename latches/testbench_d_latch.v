`include "d_latch.v"
module testbench ();
    wire t_Q;
    reg t_En, t_D;

    d_latch d1(t_En, t_D, t_Q);
    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0,testbench);
        t_En = 1'b0; t_D = 1'b1;
        #10 t_En = 1'b1; t_D = 1'b0;
        #10 t_En = 1'b1; t_D = 1'b1;
        #10 t_En = 1'b0; t_D = 1'b0;
        #10 t_En = 1'b1; t_D = 1'b0;          
        #10 $finish;
    end

    initial begin
        $monitor("En = %b D = %b  Q = %b",t_En,t_D,t_Q);
    end
endmodule
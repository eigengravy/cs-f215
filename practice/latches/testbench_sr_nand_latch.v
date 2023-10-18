`include "sr_nand_latch.v"
module testbench ();
    wire t_Q;
    reg t_S, t_R;

    sr_nand_latch sr1(t_S, t_R, t_Q);
    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0,testbench);
        t_S = 1'b1; t_R = 1'b0;
        #10 t_S = 1'b1; t_R = 1'b1;
        #10 t_S = 1'b0; t_R = 1'b1;
        #10 t_S = 1'b1; t_R = 1'b1;
        #10 t_S = 1'b0; t_R = 1'b0;          
        #10 $finish;
    end

    initial begin
        $monitor("S = %b R = %b  Q = %b",t_S,t_R,t_Q);
    end
endmodule
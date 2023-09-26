`include "mux_2to1.v"
module testbench ();
    //inputs
    reg [1:0] t_in;
    reg t_select;

    //outputs
    wire out;

    mux_2to1 m1(t_in,t_select,out);
    initial begin
        $dumpfile("mux_out.vcd");
        $dumpvars(0,testbench);

                t_in = 2'b01; t_select = 1'b0;
            #10 t_in = 2'b10; t_select = 1'b1;
            
            
            #10 t_in = 2'b10; t_select = 1'b0;
            #10 t_in = 2'b01; t_select = 1'b1;
        #10 $finish;
    end

    initial begin
        $monitor("time : %0d in = %b select = %b  out = %b",$time,t_in,t_select,out);
    end
endmodule
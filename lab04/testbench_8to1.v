`include "mux_8to1.v"
module testbench ();
    //inputs
    reg [7:0] t_in;
    reg [2:0] t_select;

    //outputs
    wire out;

    mux_8to1 m1(t_in,t_select,out);
    initial begin
        $dumpfile("mux_out.vcd");
        $dumpvars(0,testbench);

                t_in = 8'b00000001; t_select = 3'b000;
            #10 t_in = 8'b00000010; t_select = 3'b001;
            #10 t_in = 8'b00000100; t_select = 3'b010;
            #10 t_in = 8'b00001000; t_select = 3'b011;
            #10 t_in = 8'b00010000; t_select = 3'b100;
            #10 t_in = 8'b00100000; t_select = 3'b101;
            #10 t_in = 8'b01000000; t_select = 3'b110;
            #10 t_in = 8'b10000000; t_select = 3'b111;
            
            #10 t_in = 8'b11111110; t_select = 3'b000;
            #10 t_in = 8'b11111101; t_select = 3'b001;
            #10 t_in = 8'b11111011; t_select = 3'b010;
            #10 t_in = 8'b11110111; t_select = 3'b011;
            #10 t_in = 8'b11101111; t_select = 3'b100;
            #10 t_in = 8'b11011111; t_select = 3'b101;
            #10 t_in = 8'b10111111; t_select = 3'b110;
            #10 t_in = 8'b01111111; t_select = 3'b111;
        #10 $finish;
    end

    initial begin
        $monitor("time : %0d in = %b select = %b  out = %b",$time,t_in,t_select,out);
    end
endmodule
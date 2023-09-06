// Testbench

module t_func ;

wire t_out;
reg t_A, t_B;
parameter  stop_time = 50;

func F1 (t_out, t_A, t_B);

initial #stop_time $finish;

initial begin
    $dumpfile("xor.vcd");
    $dumpvars(0, t_func);
        t_A = 0; t_B = 0;
    #10 t_A = 0; t_B = 1;
    #10 t_A = 1; t_B = 0;
    #10 t_A = 1; t_B = 1;
end

initial begin
    $monitor("time = %0d A = %b B = %b OUT = %b", $time, t_A, t_B, t_out);
end

endmodule

// XOR function

module func(out, A, B);

output out;
input A, B;
assign out = ( A && (!B)) || ((!A) && B);

endmodule
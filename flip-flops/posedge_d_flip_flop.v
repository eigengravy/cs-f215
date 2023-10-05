module posedge_d_flip_flop (
   output reg Q, nQ, input D, clk
);
    always @(posedge clk) begin
        Q<=D;
        nQ<=~D;
    end
endmodule
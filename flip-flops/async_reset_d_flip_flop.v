module async_reset_d_flip_flop (
   output reg Q, nQ input D, clk, rst
);
    always @(posedge clk, negedge rst) begin
        Q <= rst && D;
        nQ <= ~(rst && D)
    end
endmodule
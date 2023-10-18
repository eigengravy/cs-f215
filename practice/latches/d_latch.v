module d_latch (
    input En, input D, output reg Q
);
    always @ (En, D) begin
        if (En) Q <= D;
    end
endmodule
module t_flip_flop (
   output reg Q, nQ, input T, clk
);
    always @(posedge clk) begin
        if(T) begin 
            Q<=~Q;
            nQ<=Q;
        end
    end
endmodule
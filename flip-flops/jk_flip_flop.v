module jk_flip_flop (
   output reg Q, nQ, input J, K, clk
);
    always @(posedge clk) begin
        case({J,K})
            2'b00: begin 
                Q<=Q;
                nQ<=~Q;
            end
            2'b01: begin
                Q<=1'b0;
                nQ<=1'b1;
            end
            2'b10: begin
                Q<=1'b1;
                Q<=1'b0;
            end
            2'b11: begin
                Q<=~Q;
                nQ<=Q;
            end
        endcase
    end
endmodule
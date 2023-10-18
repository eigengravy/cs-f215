module jkff(output reg Q, nQ, input J, K , clk, rst);
    always@(negedge clk, negedge rst) begin
        if (rst) begin
            case({J,K})
                2'b00: begin
                    Q<=Q;
                    nQ<=nQ;
                end
                2'b01: begin
                    Q<=1'b0;
                    nQ<=1'b1;
                end
                2'b10: begin
                    Q<=1'b1;
                    nQ<=1'b0;
                end
                2'b11: begin
                    Q<=~Q;
                    nQ<=~nQ;
                end
            endcase
        end
        else begin
            Q<=1'b0;
            nQ<=1'b1;
        end
    end
endmodule
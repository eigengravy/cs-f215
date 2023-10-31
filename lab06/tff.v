module tff(output reg Q, nQ, input T, clk, rst);
    always@(negedge clk, negedge rst) begin
        if (rst) begin
            if(T) begin 
                Q<=~Q;
                nQ<=~nQ;
            end
        end
        else begin
            Q<=1'b0;
            nQ<=1'b1;
        end
    end
endmodule
module dff(output reg Q, nQ, input D, clk, rst);
    always@(negedge clk, negedge rst) begin
        if (rst) begin
            Q<=D;
            nQ<=~D;
        end
        else begin
            Q<=1'b0;
            nQ<=1'b1;
        end
    end
endmodule
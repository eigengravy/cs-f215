module sr_ctrl_latch (input En, input S, input R, output reg Q);
    always @(En, S, R) 
        if (En) begin
            if (S && R) Q <= 1'bx;
            else if(S || R) Q <= S;
        end 
endmodule

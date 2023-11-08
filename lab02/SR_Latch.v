module SR (input S,input R,input en,output reg Q,output reg n_Q);
    always@(S,R,en) begin
        if (en) begin
            if(S && R) begin
                Q<=1;
                n_Q<=1;
            end
            else if (S || R) begin
                Q<=S;
                n_Q<=R;
            end
        end
    end
endmodule
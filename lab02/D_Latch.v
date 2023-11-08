module D (input D,input en,output reg Q);
    always@(D,en) begin
        if (en) Q<=D;
    end
endmodule
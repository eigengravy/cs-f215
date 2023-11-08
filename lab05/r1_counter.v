module r1_counter (
    input clk, rst,
    output reg[3:0] A
);
    always @(negedge clk, posedge rst) begin
       if (rst || A==4'd9) A <= 4'd0;
       else A <= A + 4'd1; 
    end  
endmodule
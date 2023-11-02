module counter (
    input clk,
    input reset,
    output reg[3:0] counter
);
always @(posedge clk or reset) begin
    if (reset) counter <= 4'd0;
    else begin
        if (counter == 4'b1111) counter <= 4'd0;
        else counter <= counter + 4'd1;
    end
end
endmodule
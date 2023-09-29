`include "D_Latch.v"
module t_D();
    wire t_Q; //outputs
    reg en,D; //inputs
    
    D d(D, en, t_Q);

    initial begin
        D=1'b1;en=1'b1;
        #10 D=1'bx; en=1'b0;
        #10 D=1'b0; en=1'b1;
        #10 D=1'bx; en=1'b0;
        #10 $finish;
    end

    initial begin
        $monitor("time : %0d D : %d en : %d Q : %d",$time,D,en,t_Q);
    end
endmodule

// D EN
// 1 1
// x 0
// 0 1
// x 0
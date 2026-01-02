`timescale 1ns / 1ps


module half_subtractor_tb();
reg a,b;
wire diff,borrow;
half_subtractor DUT(a,b,diff,borrow);
initial 
begin
    a=1'b0;b=1'b0;
#10 a=1'b0;b=1'b1;
#10 a=1'b1;b=1'b0;
#10 a=1'b1;b=1'b1;
#10 $finish;
end

endmodule

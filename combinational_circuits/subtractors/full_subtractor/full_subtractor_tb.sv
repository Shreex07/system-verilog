`timescale 1ns / 1ps


module full_subtractor_tb();
reg a,b,bin;
wire diff,bout;
full_subtractor DUT(a,b,bin,diff,bout);
initial 
begin
    a=1'b0;b=1'b0;bin=1'b0;
#10 a=1'b0;b=1'b0;bin=1'b1;
#10 a=1'b0;b=1'b1;bin=1'b0;
#10 a=1'b0;b=1'b1;bin=1'b1;
#10 a=1'b1;b=1'b0;bin=1'b0;
#10 a=1'b1;b=1'b0;bin=1'b1;
#10 a=1'b1;b=1'b1;bin=1'b0;
#10 a=1'b1;b=1'b1;bin=1'b1;
#10 $finish;
end

endmodule

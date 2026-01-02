`timescale 1ns / 1ps


module half_adder_tb();
reg a,b;
wire sum,carry;
half_adder DUT(a,b,sum,carry);
initial 
begin
    a=1'b0;b=1'b0;
#10 a=1'b0;b=1'b1;
#10 a=1'b1;b=1'b0;
#10 a=1'b1;b=1'b1;
#10 $finish;
end

endmodule

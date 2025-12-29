`timescale 1ns / 1ps


module NOTgate_tb;
reg a;
wire y;
NOTgate DUT(a,y);

initial
begin
    a=1'b0;
#10 a=1'b1;
#10 $finish;
end
endmodule

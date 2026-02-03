`timescale 1ns / 1ps


module mux_4to1_tb();
reg a,b,c,d,en0,en1;
wire Y;
mux_4to1 DUT(a,b,c,d,en0,en1,Y);

initial
begin
    a=1'b0;b=1'b0;c=1'b0;d=1'b0;en0=1'b0;en1=1'b0;
#10 en0=1'b0;en1=1'b0;a=1'b0;
#10 a=1'b1;
#10 en0=1'b0;en1=1'b1;b=1'b0;a=1'b0;
#10 b=1'b1;
#10 en0=1'b1;en1=1'b0;c=1'b0;b=1'b0;
#10 c=1'b1;
#10 en0=1'b1;en1=1'b1;d=1'b0;c=1'b0;
#10 d=1'b1;
#10 $finish;
end
endmodule

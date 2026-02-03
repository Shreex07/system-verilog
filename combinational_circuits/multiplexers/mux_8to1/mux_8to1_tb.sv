`timescale 1ns / 1ps


module mux_8to1_tb();
reg [7:0]a;
reg en0,en1,en2;
wire Y;
mux_8to1 DUT(a, en0,en1,en2,Y);

initial
begin
    a=8'b0;en0=1'b0;en1=1'b0;en2=1'b0;
#10 a=8'b0;en0=1'b0;en1=1'b0;en2=1'b0;a[0]=1'b0;
#10 a[0]=1'b1;
#10 a=8'b0;en0=1'b0;en1=1'b0;en2=1'b1;a[1]=1'b0;
#10 a[1]=1'b1;
#10 a=8'b0;en0=1'b0;en1=1'b1;en2=1'b0;a[2]=1'b0;
#10 a[2]=1'b1;
#10 a=8'b0;en0=1'b0;en1=1'b1;en2=1'b1;a[3]=1'b0;
#10 a[3]=1'b1;
#10 a=8'b0;en0=1'b1;en1=1'b0;en2=1'b0;a[4]=1'b0;
#10 a[4]=1'b1;
#10 a=8'b0;en0=1'b1;en1=1'b0;en2=1'b1;a[5]=1'b0;
#10 a[5]=1'b1;
#10 a=8'b0;en0=1'b1;en1=1'b1;en2=1'b0;a[6]=1'b0;
#10 a[6]=1'b1;
#10 a=8'b0;en0=1'b1;en1=1'b1;en2=1'b1;a[7]=1'b0;
#10 a[7]=1'b1;
#10 $finish;
end
endmodule

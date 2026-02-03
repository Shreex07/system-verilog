`timescale 1ns / 1ps


module mux_2to1_tb();
reg a,b,en;
wire Y;
mux_2to1 DUT(a,b,en,Y);

initial 
begin
    a=1'b0;b=1'b0;en=1'b0;
#10 en=1'b0;a=1'b0;
#10 a=1'b1;
#10 en=1'b1;b=1'b0;
#10 b=1'b1; 
#10 $finish;
end
endmodule

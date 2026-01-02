`timescale 1ns / 1ps


module tristate_buffer_tb();
reg en,a;
wire y;
tristate_buffer DUT(en,a,y);

initial
begin
    en=1'b0;a=1'b1;
#10 en=1'b0;a=1'b0;
#10 en=1'b1;a=1'b1;
#10 en=1'b1;a=1'b0;
#10 $finish;
end 
endmodule

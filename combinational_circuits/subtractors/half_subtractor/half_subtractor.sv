`timescale 1ns / 1ps


module half_subtractor(input logic a,b,
    output logic diff,borrow
    );
assign diff=a^b;
assign borrow=(~a)&b;
endmodule

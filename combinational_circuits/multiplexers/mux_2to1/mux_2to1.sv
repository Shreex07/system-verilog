`timescale 1ns / 1ps


module mux_2to1(input logic a,b,en,
    output logic y
    );
assign y = (~en & a)|(en & b);
//alternate method:
//conditional statement: y = en ? b : a;
endmodule

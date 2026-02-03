`timescale 1ns / 1ps


module mux_4to1(input logic a,b,c,d,en0,en1,
    output logic y
    );
assign y = (~en0 & ~en1 & a)|(~en0 & en1 & b)|(en0 & ~en1 & c)|(en0 & en1 & d);
//alternate method:
//conditional statement: y = en0 ? (en1 ? d:c):(en1 ? b:a);
endmodule

`timescale 1ns / 1ps


module mux_8to1(input logic [7:0] a,
    input logic en0,en1,en2,
    output logic y
    );
assign y = (~en0 & ~en1 & ~en2 & a[0])|(~en0 & ~en1 & en2 & a[1])|
           (~en0 &  en1 & ~en2 & a[2])|(~en0 &  en1 & en2 & a[3])|
           ( en0 & ~en1 & ~en2 & a[4])|( en0 & ~en1 & en2 & a[5])|
           ( en0 &  en1 & ~en2 & a[6])|( en0 &  en1 & en2 & a[7]);
//alternate method:
//conditional statement: y = en2 ? (en1 ? (en0 ? a[7]:a[6]) : (en0 ? a[5]:a[4])) : (en1 ? (en0 ? a[3]:a[2]) : (en0 ? a[1]:a[0]));
endmodule

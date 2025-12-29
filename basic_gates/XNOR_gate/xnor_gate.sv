`timescale 1ns / 1ps


module XNORgate(input logic a,b,
    output logic y
    );
assign y = ~(a^b);
endmodule

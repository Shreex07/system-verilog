`timescale 1ns / 1ps


module tristate_inverter(input logic en,a,
    output logic y
    );
assign y = en? ~a: 1'bz;
endmodule

`timescale 1ns / 1ps


module tristate_buffer(input logic en,a,
    output logic y
    );
assign y = en? a: 1'bz;
endmodule

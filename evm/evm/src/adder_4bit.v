//-----------------------------------------------------------------------------
//
// Title       : adder
// Design      : evm
// Author      : Saugata
// Company     : KUET
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/Saugata/Desktop/DSD Project/evm/evm/src/adder.v
// Generated   : Sat Jan 11 10:54:33 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------


`timescale 1ps / 1ps

module adder_4bit (
    input [3:0] a,         
    input [3:0] b,		   
    output [3:0] sum,     
    output carry_out       
);
    
    wire c1, c2, c3;

   
    full_adder fa0 (
        .a(a[0]),
        .b(b[0]),
        .cin(1'b0),  
        .sum(sum[0]),
        .cout(c1)
    );

    full_adder fa1 (
        .a(a[1]),
        .b(b[1]),
        .cin(c1),    
        .sum(sum[1]),
        .cout(c2)
    );

    full_adder fa2 (
        .a(a[2]),
        .b(b[2]),
        .cin(c2),   
        .sum(sum[2]),
        .cout(c3)
    );

    full_adder fa3 (
        .a(a[3]),
        .b(b[3]),
        .cin(c3),    
        .sum(sum[3]),
        .cout(carry_out) 
    );

endmodule

//-----------------------------------------------------------------------------
//
// Title       : comparator
// Design      : evm
// Author      : Saugata
// Company     : KUET
//
//-----------------------------------------------------------------------------
//
// File        : C:/Users/Saugata/Desktop/DSD Project/evm/evm/src/comparator.v
// Generated   : Wed Jan  8 22:30:49 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {comparator}}

module comparator_4bit (
    input [3:0] A,      
    input [3:0] B,
	input enable,
    output A_equal_B,    
    output A_greater_B,  
    output A_less_B     
);
   
    wire x3, x2, x1, x0;

    
    assign x3 = ~(A[3] ^ B[3]); 
    assign x2 = ~(A[2] ^ B[2]); 
    assign x1 = ~(A[1] ^ B[1]); 
    assign x0 = ~(A[0] ^ B[0]); 

   
    assign A_equal_B = enable & x3 & x2 & x1 & x0;

   
    assign A_greater_B = enable & ((A[3] & ~B[3]) |
                         (x3 & A[2] & ~B[2]) |
                         (x3 & x2 & A[1] & ~B[1]) |
                         (x3 & x2 & x1 & A[0] & ~B[0]));

    
    assign A_less_B = enable & ((~A[3] & B[3]) |
                      (x3 & ~A[2] & B[2]) |
                      (x3 & x2 & ~A[1] & B[1]) |
                      (x3 & x2 & x1 & ~A[0] & B[0]));

endmodule

`timescale 1ps / 1ps

module adder_4bit_tb;

   
    reg [3:0] a;         
    reg [3:0] b;          
    wire [3:0] sum;       
    wire carry_out;       

   
    adder_4bit uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry_out(carry_out)
    );

   
    initial begin
       
        $display("Time\t a      b      | sum    carry_out");

       
        a = 4'b0000; b = 4'b0000; #5; $display("%0t\t %b  %b  |  %b  %b", $time, a, b, sum, carry_out);
        a = 4'b0001; b = 4'b0001; #5; $display("%0t\t %b  %b  |  %b  %b", $time, a, b, sum, carry_out);
        a = 4'b0010; b = 4'b0011; #5; $display("%0t\t %b  %b  |  %b  %b", $time, a, b, sum, carry_out);
        a = 4'b0100; b = 4'b0111; #5; $display("%0t\t %b  %b  |  %b  %b", $time, a, b, sum, carry_out);
        a = 4'b0110; b = 4'b1010; #5; $display("%0t\t %b  %b  |  %b  %b", $time, a, b, sum, carry_out);
        a = 4'b1111; b = 4'b1111; #5; $display("%0t\t %b  %b  |  %b  %b", $time, a, b, sum, carry_out);

       
        #5 $finish;
    end

    
    initial begin
        $monitor("At time %0t: a=%b, b=%b => sum=%b, carry_out=%b", $time, a, b, sum, carry_out);
    end

endmodule

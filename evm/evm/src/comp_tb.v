`timescale 1ps / 1ps

module comparator_4bit_tb;

   
    reg [3:0] A;                  
    reg [3:0] B;                  
    wire A_equal_B;              
    wire A_greater_B;            
    wire A_less_B;                

   
    comparator_4bit uut (
        .A(A),
        .B(B),
		.enable(1),
        .A_equal_B(A_equal_B),
        .A_greater_B(A_greater_B),
        .A_less_B(A_less_B)
    );

    
    initial begin
       
        $display("Time\t A      B      | A_equal_B A_greater_B A_less_B");

        
        A = 4'b0000; B = 4'b0000; #5; $display("%0t\t %b  %b  |     %b          %b          %b", $time, A, B, A_equal_B, A_greater_B, A_less_B);
        A = 4'b0001; B = 4'b0000; #5; $display("%0t\t %b  %b  |     %b          %b          %b", $time, A, B, A_equal_B, A_greater_B, A_less_B);
        A = 4'b0010; B = 4'b0010; #5; $display("%0t\t %b  %b  |     %b          %b          %b", $time, A, B, A_equal_B, A_greater_B, A_less_B);
        A = 4'b0101; B = 4'b0110; #5; $display("%0t\t %b  %b  |     %b          %b          %b", $time, A, B, A_equal_B, A_greater_B, A_less_B);
        A = 4'b1111; B = 4'b1111; #5; $display("%0t\t %b  %b  |     %b          %b          %b", $time, A, B, A_equal_B, A_greater_B, A_less_B);
        A = 4'b1010; B = 4'b1001; #5; $display("%0t\t %b  %b  |     %b          %b          %b", $time, A, B, A_equal_B, A_greater_B, A_less_B);
        A = 4'b1000; B = 4'b1100; #5; $display("%0t\t %b  %b  |     %b          %b          %b", $time, A, B, A_equal_B, A_greater_B, A_less_B);

       
        #5 $finish;
    end

   
    initial begin
        $monitor("At time %0t: A=%b, B=%b => A_equal_B=%b, A_greater_B=%b, A_less_B=%b", $time, A, B, A_equal_B, A_greater_B, A_less_B);
    end

endmodule

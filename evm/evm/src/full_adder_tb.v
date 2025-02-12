`timescale 1ps / 1ps

module full_adder_tb;

    
    reg a;         
    reg b;          
    reg cin;       
    wire sum;      
    wire cout;      

   
    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    
    initial begin
        
        $display("Time\t a b cin | sum cout");

       
        a = 0; b = 0; cin = 0; #5; $display("%0t\t %b %b  %b   |  %b   %b", $time, a, b, cin, sum, cout);
        a = 0; b = 0; cin = 1; #5; $display("%0t\t %b %b  %b   |  %b   %b", $time, a, b, cin, sum, cout);
        a = 0; b = 1; cin = 0; #5; $display("%0t\t %b %b  %b   |  %b   %b", $time, a, b, cin, sum, cout);
        a = 0; b = 1; cin = 1; #5; $display("%0t\t %b %b  %b   |  %b   %b", $time, a, b, cin, sum, cout);
        a = 1; b = 0; cin = 0; #5; $display("%0t\t %b %b  %b   |  %b   %b", $time, a, b, cin, sum, cout);
        a = 1; b = 0; cin = 1; #5; $display("%0t\t %b %b  %b   |  %b   %b", $time, a, b, cin, sum, cout);
        a = 1; b = 1; cin = 0; #5; $display("%0t\t %b %b  %b   |  %b   %b", $time, a, b, cin, sum, cout);
        a = 1; b = 1; cin = 1; #5; $display("%0t\t %b %b  %b   |  %b   %b", $time, a, b, cin, sum, cout);

        
        #5 $finish;
    end

   
    initial begin
        $monitor("At time %0t: a=%b, b=%b, cin=%b => sum=%b, cout=%b", $time, a, b, cin, sum, cout);
    end

endmodule

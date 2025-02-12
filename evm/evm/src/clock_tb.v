`timescale 1ps / 1ps

module clock_tb;

   
    reg strt_clk; 
    wire clk;      

  
    clock clk_gen (
        .strt_clk(strt_clk),
        .clk(clk)
    );

    
    initial begin
        
        strt_clk = 0;
        #5 strt_clk = 1; 
        #5 strt_clk = 0; 
    end

    
    initial begin
        $monitor("At time %t, clk = %b", $time, clk);
    end

  
    initial begin
        #100;
        $finish;
    end

endmodule

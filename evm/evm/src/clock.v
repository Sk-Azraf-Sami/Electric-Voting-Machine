`timescale 1ps / 1ps

module clock (
    input strt_clk, 
    output reg clk
);

    initial clk = 0;

    always @(posedge strt_clk) begin
        forever begin
            #1 clk = ~clk; 
        end
    end

endmodule

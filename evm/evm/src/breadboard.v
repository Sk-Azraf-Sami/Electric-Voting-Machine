`timescale 1ps / 1ps

module breadboard;
    reg [1:0] candidate_number;
    reg [2:0] voter_number;
    reg vote_signal;
    reg strt_clk;
    wire clk;
    wire [1:0] winner_candidate;
    wire [2:0] out_vote;

   
    clock clk_gen (
        .strt_clk(strt_clk),
        .clk(clk)
    );

    
    memory_control_unit dut (
        .candidate_number(candidate_number),
        .voter_number(voter_number),
        .vote_signal(vote_signal),
        .clk(clk),
        .winner_candidate(winner_candidate),
        .out_vote(out_vote)
    );

   
    initial begin
        strt_clk = 0; 
        #1 strt_clk = 1;

        candidate_number = 2'b00;
        voter_number = 3'b000;
        vote_signal = 1'b0;

       
        #10;

       
        voter_number = 3'b000;
        candidate_number = 2'b00;
        vote_signal = 1'b1;
        #10;
        vote_signal = 1'b0;
        $display("Test Case 1: Voter %0d votes for Candidate %0d", voter_number, candidate_number);
        $display("Out Vote Count: %0d, Winner Candidate: %0d", out_vote, winner_candidate);

      
        voter_number = 3'b001;
        candidate_number = 2'b01;
        vote_signal = 1'b1;
        #10;
        vote_signal = 1'b0;
        $display("Test Case 2: Voter %0d votes for Candidate %0d", voter_number, candidate_number);
        $display("Out Vote Count: %0d, Winner Candidate: %0d", out_vote, winner_candidate);

     
        voter_number = 3'b010;
        candidate_number = 2'b01;
        vote_signal = 1'b1;
        #10;
        vote_signal = 1'b0;
        $display("Test Case 3: Voter %0d votes for Candidate %0d", voter_number, candidate_number);
        $display("Out Vote Count: %0d, Winner Candidate: %0d", out_vote, winner_candidate);

       
        voter_number = 3'b000;
        candidate_number = 2'b01;
        vote_signal = 1'b1;
        #10;
        vote_signal = 1'b0;
        $display("Test Case 4: Voter %0d tries to vote again for Candidate %0d", voter_number, candidate_number);
        $display("Out Vote Count: %0d, Winner Candidate: %0d (No change expected)", out_vote, winner_candidate);
														 
        voter_number = 3'b100;
        candidate_number = 2'b10;
        vote_signal = 1'b1;
        #10;
        vote_signal = 1'b0;
        $display("Test Case 5: Voter %0d votes for Candidate %0d", voter_number, candidate_number);
        $display("Out Vote Count: %0d, Winner Candidate: %0d", out_vote, winner_candidate);	
		
		
		voter_number = 3'b011;
        candidate_number = 2'b01;
        vote_signal = 1'b1;
        #10;
        vote_signal = 1'b0;
        $display("Test Case 6: Voter %0d votes for Candidate %0d", voter_number, candidate_number);
        $display("Out Vote Count: %0d, Winner Candidate: %0d", out_vote, winner_candidate);	

       
        $display("Final Results:");
        $display("Winner Candidate: %0d with %0d votes", winner_candidate, out_vote);

        
        $stop;
    end
endmodule

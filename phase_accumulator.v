`timescale 1ns / 1ps

module phase_accumulator(
    clock,  // clock @ 1MHz
    reset,  // reset signal
    phase   // returns the 10-bit phase register   
    );
    
    parameter max_val = 1024;  // 2^10
    
    parameter increment = 3 ; // (max_val * desired_frequency) / clk_frequency
        
    input  clock,
           reset;
    
    output [9:0] phase;
    reg    [9:0] phase;
    
    always @ (posedge clock or 
              posedge reset) begin
              
        if (reset) phase <= 10'b00_0000_0000;
        
        else if (phase >= max_val)
            phase <= 10'b00_0000_0000;
            
        else 
            phase <= phase + increment; 
        end
endmodule
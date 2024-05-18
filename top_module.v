`timescale 1ns / 1ps

module top_module(
    clk, 
    reset,
    address,
    filtered_data,
    ROM_Data
    );
    
    parameter word_size_in = 8;
    parameter word_size_out = (2*word_size_in);
    parameter ADDR_WIDTH = 10; // Number of address bits (1024 addresses for example)
  
    
    input clk, reset;
    input [ADDR_WIDTH-1:0] address;
    output signed [word_size_out-1:0] filtered_data;

    output signed [word_size_in-1:0] ROM_Data;
    
    // DECLARRING THE MODULES
    ROM_100Hz    ROM(clk,
                    address,
                    ROM_Data);
                    
    fir_low_pass_filter  LPF(filtered_data,
                             ROM_Data,
                             clk,
                             reset);
                  
    
endmodule

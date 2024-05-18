`timescale 1ns/1ps

module rom_8000(clk,
                address,
               	data);
  
  // Define parameters for the ROM
  parameter DATA_WIDTH = 8;  // Width of each data word (8 bits for example)
  parameter ADDR_WIDTH = 10; // Number of address bits (1024 addresses for example)
  
  input clk;
  input [ADDR_WIDTH-1:0] address;
  output reg signed [DATA_WIDTH-1:0] data;
  
  // Define ROM contents using an initial block
  always@(posedge clk)
    begin

      case(address)
          10'd0: data <= 8'b00000000; // Address 0
          10'd1: data <= 8'b01111001; // Address 1
          10'd2: data <= 8'b01001011; // Address 2
          10'd3: data <= 8'b10110101; // Address 3
          10'd4: data <= 8'b10000111;
          10'd5: data <= 8'b00000000;
          // Add more cases as needed
          default: data = 8'b00000000; // Default case (optional)
      endcase
      
	end
  
endmodule
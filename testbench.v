`timescale 1ns/1ps

module tb_module();
  // for the ROM  
   parameter DATA_WIDTH = 8;  // Width of each data word (8 bits for example)
   parameter ADDR_WIDTH = 10; // Number of address bits (1024 addresses for example)
    
   // for the LPF
   parameter order = 32;
   parameter word_size_in = 8;
   parameter word_size_out = (2*word_size_in);

  
   reg clk, reset;
   reg [ADDR_WIDTH-1:0] address;
   wire signed [word_size_out-1:0] filtered_data;
   wire [word_size_in-1:0] ROM_Data; 
   
   top_module   UUT(clk, 
                    reset,
                    address,
                    filtered_data,
                    ROM_Data
                    );
                
    always  begin
        #5 clk=~clk;
//        forever #5 clk = ~clk;
    end
    
    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;
        address = 0;
        
        repeat (401) @ (posedge clk)
        	address = address + 1;
    end
   
    always @(posedge clk) begin
     $display("Time=%t, Filtered_Output= %b", $time, filtered_data);
    end

endmodule
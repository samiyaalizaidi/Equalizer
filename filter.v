`timescale 1ns/1ps

module fir_low_pass_filter(Data_out,
                           Data_in,
                           clk,
                           rst);
  
      parameter order = 32;
      parameter word_size_in = 8;
      parameter word_size_out = (2*word_size_in) ;

      parameter signed [9:0] b0  = 10'sd9;
      parameter signed [9:0] b1  = 10'sd10;
      parameter signed [9:0] b2  = 10'sd11;
      parameter signed [9:0] b3  = 10'sd12;
      parameter signed [9:0] b4  = 10'sd13;
      parameter signed [9:0] b5  = 10'sd14;
      parameter signed [9:0] b6  = 10'sd15;
      parameter signed [9:0] b7  = 10'sd16;
      parameter signed [9:0] b8  = 10'sd17;
      parameter signed [9:0] b9  = 10'sd18;
      parameter signed [9:0] b10 = 10'sd18;
      parameter signed [9:0] b11 = 10'sd19;
      parameter signed [9:0] b12 = 10'sd20;
      parameter signed [9:0] b13 = 10'sd20;
      parameter signed [9:0] b14 = 10'sd20;
      parameter signed [9:0] b15 = 10'sd20;
      parameter signed [9:0] b16 = 10'sd20;
      parameter signed [9:0] b17 = 10'sd20;
      parameter signed [9:0] b18 = 10'sd20;
      parameter signed [9:0] b19 = 10'sd20;
      parameter signed [9:0] b20 = 10'sd19;
      parameter signed [9:0] b21 = 10'sd18;
      parameter signed [9:0] b22 = 10'sd18;
      parameter signed [9:0] b23 = 10'sd17;
      parameter signed [9:0] b24 = 10'sd16;
      parameter signed [9:0] b25 = 10'sd15;
      parameter signed [9:0] b26 = 10'sd14;
      parameter signed [9:0] b27 = 10'sd13;
      parameter signed [9:0] b28 = 10'sd12;
      parameter signed [9:0] b29 = 10'sd11;
      parameter signed [9:0] b30 = 10'sd10;
      parameter signed [9:0] b31 = 10'sd9;

      output signed [word_size_out-1:0] Data_out;

      input signed [word_size_in-1:0] Data_in;
      input clk,rst;
  
      reg signed [word_size_in-1:0] Samples [1:order];

      integer k;

      assign Data_out = b0  * (Data_in >>> 3) +
                        b1  * (Samples[1] >>> 3) +
                        b2  * (Samples[2] >>> 3) +
                        b3  * (Samples[3] >>> 3) +
                        b4  * (Samples[4] >>> 3) +
                        b5  * (Samples[5] >>> 3) +
                        b6  * (Samples[6] >>> 3) +
                        b7  * (Samples[7] >>> 3) +
                        b8  * (Samples[8] >>> 3) +
                        b9  * (Samples[9] >>> 3) +
                        b10 * (Samples[10] >>> 3) +
                        b11 * (Samples[11] >>> 3) +
                        b12 * (Samples[12] >>> 3) +
                        b13 * (Samples[13] >>> 3) +
                        b14 * (Samples[14] >>> 3) +
                        b15 * (Samples[15] >>> 3) +
                        b16 * (Samples[16] >>> 3) +
                        b17 * (Samples[17] >>> 3) +
                        b18 * (Samples[18] >>> 3) +
                        b19 * (Samples[19] >>> 3) +
                        b20 * (Samples[20] >>> 3) +
                        b21 * (Samples[21] >>> 3) +
                        b22 * (Samples[22] >>> 3) +
                        b23 * (Samples[23] >>> 3)+
                        b24 * (Samples[24] >>> 3) +
                        b25 * (Samples[25] >>> 3) +
                        b26 * (Samples[26] >>> 3) +
                        b27 * (Samples[27] >>> 3) +
                        b28 * (Samples[28] >>> 3) +
                        b29 * (Samples[29] >>> 3) +
                        b30 * (Samples[30] >>> 3) +
        				b31 * (Samples[31] >>> 3);
  
      
      always @ (posedge clk) begin
        if(rst == 1)
          begin
            for(k=1;k<=order;k=k+1)
              Samples[k] <= 0;
          end
      else
        begin
          Samples[1] <= Data_in;
          for(k=2;k<=order;k=k+1)
            Samples[k] <= Samples[k-1];
        end
        end
endmodule
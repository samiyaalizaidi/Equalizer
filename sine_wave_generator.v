`timescale 1ns / 1ps

module sine_wave_generator( 
    // TOP LEVEL MODULE 
    clock,     // clock @ 1MHz
    reset,     // reset signal
    phase,     // phase accumulator
    data_sin   // output sine wave values
    );    
    
    input   clock,
            reset;
    
    output signed [9:0] data_sin;
    
    output [9:0] phase; // 10 bit phase register from the phase accumulator
    
    phase_accumulator            accumulator_inst (clock, reset, phase);
    phase_to_amplitude_converter converter_inst   (reset, phase, data_sin);
endmodule
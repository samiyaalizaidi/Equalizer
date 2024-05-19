# Equalizer

This project focuses on implementing a 32-tap low-pass Finite Impulse Response (FIR) filter for audio applications. Using a fixed-point representation, the filter is designed to allow frequencies below 500Hz while attenuating those above 1kHz. Verilog code is developed to create the filter's hardware architecture, and audio files are stored in ROM to test the filter's functionality. The project demonstrates effective low-pass filtering by passing a 100Hz tone while suppressing an 8kHz tone, validating its use in audio processing.

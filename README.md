# Audio Equalizer Using FIR Filters

This project focuses on implementing a 32-tap low-pass Finite Impulse Response (FIR) filter for audio applications. Using a fixed-point representation, the filter is designed to allow frequencies below 500Hz while attenuating those above 1KHz. Verilog code is developed to create the filter's hardware architecture, and audio files are stored in ROM to test the filter's functionality. The project demonstrates effective low-pass filtering by passing a 100Hz tone while suppressing an 8KHz tone, validating its use in audio processing.

<p alight="center">
  <img src="img/process.png" alt="process">
</p>

## Filter Coefficients

For this project, we extracted the filters using the ``MATLAB filterDesigner``. The following parameters were used to create the required filter:
- Least-Squares Filter
- Sampling Frequency, Fs: 40kHz
- Transition Band: 500-1000Hz
- Order: 31
- Wpass: 1
- Wstop: 1
  
As a result, this was the magnitude response of the designed filter:
<p align="center">
  <img src="img/filter.PNG" alt="Filter">
</p>

## Input Audio

Two audio tones were used to test the designed filter: one low frequency audio of 100Hz, and other high frequency tone of 8kHz. The plots of the audio tones are shown below:

<p align="center">
  <img alt="100Hz" src="img/100_original.png">
</p>

<p align="center">
  <img alt="8kHz" src="img/8000_original.png">
</p>

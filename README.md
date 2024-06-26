# Audio Equalizer Using FIR Filters

This project focuses on implementing a 32-tap low-pass Finite Impulse Response (FIR) filter for audio applications. Using a fixed-point representation, the filter is designed to allow frequencies below 500Hz while attenuating those above 1KHz. Verilog code is developed to create the filter's hardware architecture, and audio files are stored in ROM to test the filter's functionality. The project demonstrates effective low-pass filtering by passing a 100Hz tone while suppressing an 8KHz tone, validating its use in audio processing.

<p alight="center">
  <img src="img/process.png" alt="process">
</p>

## Filter Coefficients

### Filter Design

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

### Conversion to Binary
To represent the coefficients in signed 10-bit binary numbers, we scaled the coefficients by ``512`` and then converted the resulting fixed-point number into signed binary. These numbers were then used as parameters for the ``fir_low_pass_filter`` module in ``filter.v``. A ``MATLAB`` script was used for this process.

## Input Audio

### Generated Tones

Two audio tones were used to test the designed filter: one low-frequency audio of 100Hz, and the other high-frequency tone of 8kHz. The plots of the audio tones are shown below:

<p align="center">
  <img alt="100Hz" src="img/100_original.png">
</p>

<p align="center">
  <img alt="8kHz" src="img/8000_original.png">
</p>

### Conversion to Binary
To convert the audio signals into 8-bit signed binary numbers, we first scaled the audio signal coefficients by a factor of ``128`` and then converted the fixed point numbers into signed binary numbers. These numbers were stored in a ``.txt`` file, and then eventually into a ``ROM`` module. For this process, a ``MATLAB`` script was used.

## Verilog Implementation

There were three modules involved in the ``Verilog`` Implementation of this project: ROM, FIR Filter, and the Top-level Module.

### ROM

The ROM module stores the values of the audio signal for both signals used in this case (in ``ROM_100Hz.v`` and ``ROM_8000Hz.v``). This module takes as input the address of the value that needs to be returned and returns the value associated with it on the positive edge of the clock.

### FIR Filter

The module (in ``filter.v``) has the coefficients of the filter as signed parameters and takes the audio data as input. The audio data is first scaled down by a factor of 8, and then the convolution operation is performed. Shift registers are used to introduce the delays in the input signals.

### Top-Level Module
The top-level module (in ``top_module.v``) simply connects the previous two modules, by passing the output of the ROM as the input into the FIR Filter.

## Simulation

The testbench used for this module (in ``testbench.v``) instantiates the top-level module. There's also a ``repeat`` command used to increment the address of the value to be obtained from the ROM.

The waveform obtained when the ``100Hz`` signal was passed through the filter:
<p align="center">
  <img src="img/100hz.png" alt="wf 100hz">
</p>

The waveform obtained when the ``8kHz`` signal was passed through the filter:
<p align="center">
  <img src="img/8khz.png" alt="wf 8khz">
</p>

---

### Contributors
- [Samiya Ali Zaidi](https://github.com/samiyaalizaidi)
- [Huzaifah Tariq Ahmed](https://github.com/huzaifahtariqahmed)

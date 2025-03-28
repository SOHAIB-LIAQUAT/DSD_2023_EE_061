# Combinational Circuits: Structural Modeling Simulation
The folder contains the System Verilog code for structural modelling and test bench code for simulating the following circuit:

## Circuit Diagram
![Circuit-Diagram](https://github.com/user-attachments/assets/a0e37593-8a1b-4c2f-ab41-17865e8fecfd)

<figure style="text-align: center;">
 	<figcaption>Figure 1: Circuit diagram of the combinational circuit</figcaption>
</figure>

## Truth Table

The truth table for the above circuit is:

| a   | b   | c   | x   | y   |
| --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 1   | 0   |
| 0   | 0   | 1   | 0   | 0   |
| 0   | 1   | 0   | 0   | 0   |
| 0   | 1   | 1   | 1   | 0   |
| 1   | 0   | 0   | 0   | 0   |
| 1   | 0   | 1   | 1   | 0   |
| 1   | 1   | 0   | 0   | 1   |
| 1   | 1   | 1   | 1   | 1   |

## System Verilog Code (rtl)
### Module
The Module lab2 describes the structural behaviour of the above combinational circuit with three inputs **a**, **b**, and **c** and two outputs **x** and **y**.

### Local Signals
Local signals of the circuit include:
- Output of NOT gate with input c.
- Output of two OR gates with inputs a and b.
- Output of NAND gate with inputs a and b.
- Output of the second XOR gate with inputs from one of the OR gates and the NAND gate.

## Test Bench Code
Five test bench module signals; three for inputs and two for outputs are initialized for simulating the circuit.

An instance lab3_inst is created for the module lab3. 8 possible input combinations according to the truth table are provided at an interval of 1ns and output waveform is simulated.

## Documents
Iamge of the simulated wevform is provided as documentation.
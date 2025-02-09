# Combinational Circuits: Structural Modeling using Vivado

This folder includes the system verilog code for structural modelling and constraint file for synthesizing the circuit to **Neuxs A7-100t FPGA board**.The following circuit has been implemented:

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

## Constraint File
The constraint file is for mapping the three inputs to three switches and the two outputs to two LEDs available on the Neuxs A7-100t FPGA board.
The package pins used are:
- LEDs
	- V11 (LED 15)
	- V12 (LED 14)
- Switches
	- V10 (Switch 15)
	- U11 (Switch 14)
	- U12 (Switch 13)

## Documents
RTL schematic, maximum combinational delay and resource utilization are provided as documentation.
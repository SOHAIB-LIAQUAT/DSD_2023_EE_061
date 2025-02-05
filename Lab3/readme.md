# Combinational Circuits: Structural Modeling using Vivado

This folder includes the system verilog code for structural modelling and constraint file for synthesizing the circuit to **Neuxs A7-100t FPGA board**.The following circuit has been implemented:

## Circuit Diagram
![Circuit-Diagram](https://github.com/user-attachments/assets/a0e37593-8a1b-4c2f-ab41-17865e8fecfd)

<figure style="text-align: center;">
 	<figcaption>Figure 1: Circuit Diagram of the Combinational Circuit</figcaption>
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

## Summary

The system verilog code is implemented for the above combinational circuit with three inputs and two outputs.
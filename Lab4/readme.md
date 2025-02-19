# Combinational Circuit Design: RGB LED using K-Maps
The folder contains the System Verilog code for structural modelling, consraint file for synthesizing the circuit to **Neuxs A7-100t FPGA board** , and test bench code for simulating the circuit provided in Figure 1, along with supporting documentation :

## Description (Circuit Requirements)
A module containing two 2-bit inputs a and b such that  the following output is observed on the tri-color RGB LED.

<center>

if a > b then Purple

if a = b then Yellow

if a < b then Cyan</center>

Truth table according to the requirement (a[1], a[0], b[1] and b[0] will be
the inputs and red, green and blue will be the outputs) is developed and then then minimized expression is obtained from the output using
K-maps.

## Truth Table

The truth table for the above circuit is:

| a   | b   | a[1]| a[0]| b[1]| b[0]|red |green |blue |
|-----|-----|-----|-----|-----|-----|----|----- |-----|
| 0   | 0   | 0   | 0   | 0   |   0 | 1  |  1   | 0   |
| 0   | 1   | 0   | 0   | 0   |   1 | 0  |  1   | 1   |
| 0   | 2   | 0   | 0   | 1   |   0 | 0  |  1   | 1   |
| 0   | 3   | 0   | 0   | 1   |   1 | 0  |  1   | 1   |
| 1   | 0   | 0   | 1   | 0   |   0 | 1  |  0   | 1   |
| 1   | 1   | 0   | 1   | 0   |   1 | 1  |  1   | 0   |
| 1   | 2   | 0   | 1   | 1   |   0 | 0  |  1   | 1   |
| 1   | 3   | 0   | 1   | 1   |   1 | 0  |  1   | 1   |
| 2   | 0   | 1   | 0   | 0   |   0 | 1  |  0   | 1   |
| 2   | 1   | 1   | 0   | 0   |   1 | 1  |  0   | 1   |
| 2   | 2   | 1   | 0   | 1   |   0 | 1  |  1   | 0   |
| 2   | 3   | 1   | 0   | 1   |   1 | 0  |  1   | 1   |
| 3   | 0   | 1   | 1   | 0   |   0 | 1  |  0   | 1   |
| 3   | 1   | 1   | 1   | 0   |   1 | 1  |  0   | 1   |
| 3   | 2   | 1   | 1   | 1   |   0 | 1  |  0   | 1   |
| 3   | 3   | 1   | 1   | 1   |   1 | 1  |  1   | 0   |



## K-Maps
![Image](https://github.com/user-attachments/assets/a3ae7902-0beb-445c-bf50-dbf879a6c6c8)

<figure style="text-align: center;">
 	<figcaption>Figure 1: K-Maps for the RGB combinational circuit</figcaption>
</figure>

## Implemented Minimzed Expressions through K-Maps
**red** = (~b[1]) & (~b[0])  |  (a[1]) & (a[0])  |  (a[0]) & (~b[1])  |  (a[1]) & (~b[1])  |  (a[1]) & (~b[0])

**green** = (~a[1]) & (~a[0])  |  (b[1]) & (b[0])  |  (~a[1]) & (b[0])  |  (~a[1]) & (b[1])  |  (~a[0]) & (b[1])

**blue** = (a[1]) & (~b[1])  |  (~a[1]) & (b[1])  |  (~a[0]) & (b[0])  |  (a[0]) & (~b[0])

The reduced  circuit from these expressions is as follows. 

## Circuit Diagram
![Circuit Diagram](https://github.com/user-attachments/assets/c2a820a9-4072-49ae-bfaa-25eefb2c3e2f)

<figure style="text-align: center;">
 	<figcaption>Figure 2: Circuit diagram of the RGB combinational circuit</figcaption>
</figure>


## System Verilog Code (rtl)
### Module
The Module lab4_rgb describes the structural behaviour of the above combinational circuit with 2 two-bit inputs **a** and **b** and three outputs **red**, **green** and **blue**.

### Local Signals
Local signals of the circuit correspond to the intermediate terms withing the reduced expression for each output.
## Constraints
The constraint file is for mapping the four inputs (a[1], a[0], b[1] and b[0]) to four switches and the three outputs to the three pins of the tri-color RGB LED available on the Neuxs A7-100t FPGA board.
The package pins used are:
- Switches
	- V10 (Switch 15)
	- U11 (Switch 14)
	- U12 (Switch 13)
    - H6  (Switch 12)
- RGB LED No. 16 with three pins as:
    - N15 (r)
    - M16 (g)
    - R12 (b) 
## Test Bench Code
Five test bench module signals; two for inputs and three for outputs are initialized for simulating the circuit.

An instance lab4_rgb_inst is created for the module lab4_rgb. 16 possible input combinations according to the truth table are provided at an interval of 1ns and output waveform is simulated and verified.

## Documents
Iamge of the simulated wevform along with the circuit diagram and draw.io file is provided as documentation.
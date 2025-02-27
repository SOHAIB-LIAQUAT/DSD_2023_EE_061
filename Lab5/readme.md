# Combinational Circuit Design: Seven Segment Display using K-Maps
The folder contains the System Verilog code for structural modelling, consraint file for synthesizing the circuit to **Neuxs A7-100t FPGA board** , and test bench code for simulating the circuit provided in Figure 1, along with supporting documentation :

## Description (Circuit Requirements)
A module containing a **4-bit input num** to control the cathodes (for controlling the LEDs) and a **3-bit input sel** to control the anodes which will enable the required seven segment out of the 8 provided on the board.

### Anodes
- The hexadecimal equivalent of 4-bit input num will be displayed on the seven segment when the respective input is provided at the provided pins.
- The cathode which is to be turned ON will be provided logic 0.

### Cathodes
- The decimal equivalent of 3-bit input sel will turn ON the respective seven segment.
- The Anode of the seven segment connected with a MOSFET inverter, is turned ON by providing logic 0 at the prvided pin.


Truth table according to the above requirements is developed and then then minimized expression is obtained from the output using
K-maps.

## Truth Table for Cathodes

The truth table for cathodes is:

|char |num[3]|num[2]|num[1]|num[0]| SegA | SegB | SegC | SegD | SegE | SegF | SegG |
|-----|------|------|------|------|------|------|------|------|------|------|------|
| 0   | 0    | 0    | 0    | 0    |   0  | 0    |  0   | 0    |0     |  0   |   1  |
| 1   | 0    | 0    | 0    | 1    |   1  | 0    |  0   | 1    |1     |  1   |   1  |
| 2   | 0    | 0    | 1    | 0    |   0  | 0    |  1   | 0    |0     |  1   |   0  |
| 3   | 0    | 0    | 1    | 1    |   0  | 0    |  0   | 0    |1     |  1   |   0  |
| 4   | 0    | 1    | 0    | 0    |   1  | 0    |  0   | 1    |1     |  0   |   0  |
| 5   | 0    | 1    | 0    | 1    |   0  | 1    |  0   | 0    |1     |  0   |   0  |
| 6   | 0    | 1    | 1    | 0    |   0  | 1    |  0   | 0    |0     |  0   |   0  |
| 7   | 0    | 1    | 1    | 1    |   0  | 0    |  0   | 1    |1     |  1   |   1  |
| 8   | 1    | 0    | 0    | 0    |   0  | 0    |  0   | 0    |0     |  0   |   0  |
| 9   | 1    | 0    | 0    | 1    |   0  | 0    |  0   | 0    |1     |  0   |   0  |
| A   | 1    | 0    | 1    | 0    |   0  | 0    |  0   | 1    |0     |  0   |   0  |
| B   | 1    | 0    | 1    | 1    |   1  | 1    |  0   | 0    |0     |  0   |   0  |
| C   | 1    | 1    | 0    | 0    |   0  | 1    |  1   | 0    |0     |  0   |   1  |
| D   | 1    | 1    | 0    | 1    |   1  | 0    |  0   | 0    |0     |  1   |   0  |
| E   | 1    | 1    | 1    | 0    |   0  | 1    |  1   | 0    |0     |  0   |   0  |
| F   | 1    | 1    | 1    | 1    |   0  | 1    |  1   | 1    |0     |  0   |   0  |

## Truth Table for Anodes

The truth table for Anodes is:

|sel[2]|sel[1]|sel[0]|Seg0 |Seg1  | Seg2 | Seg3 | Seg4 | Seg5 | Seg6 | Seg6 |
|-----|------|------|------|------|------|------|------|------|------|------|
| 0   | 0    | 0    | 0    | 1    |   1  | 1    |  1   | 1    |1     |  1   |
| 0   | 0    | 1    | 1    | 0    |   1  | 1    |  1   | 1    |1     |  1   |
| 0   | 1    | 0    | 1    | 1    |   0  | 1    |  1   | 1    |1     |  1   |
| 0   | 1    | 1    | 1    | 1    |   1  | 0    |  1   | 1    |1     |  1   | 
| 1   | 0    | 0    | 1    | 1    |   1  | 1    |  0   | 1    |1     |  1   |
| 1   | 0    | 1    | 1    | 1    |   1  | 1    |  1   | 0    |1     |  1   |
| 1   | 1    | 0    | 1    | 1    |   1  | 1    |  1   | 1    |0     |  1   |
| 1   | 1    | 1    | 1    | 1    |   1  | 1    |  1   | 1    |1     |  0   |



## K-Maps for Cathodes
![Image](https://github.com/user-attachments/assets/6cd60924-0c64-44e1-8b40-fbc8b114c79d)
![Image](https://github.com/user-attachments/assets/9fb8ac31-4c39-47e3-bd9b-4e2aac18c571)

<figure style="text-align: center;">
 	<figcaption>Figure 1: K-Maps for the Seven Segment Anodes</figcaption>
</figure>


## Circuit Diagram
![Circuit Diagram](https://github.com/user-attachments/assets/263bee48-023a-4b96-bab0-813bad583bb7)

<figure style="text-align: center;">
 	<figcaption>Figure 2: Circuit diagram of the Seven Segment</figcaption>
</figure>



## Documents
Iamge of the simulated wevform along with the circuit diagram and draw.io file is provided as documentation.
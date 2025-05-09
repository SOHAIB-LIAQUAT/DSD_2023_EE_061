`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UET Lahore
// Engineer: Sohaib Liaquat
// 
// Create Date: 02/09/2025 03:55:05 PM
// Design Name: Combinational Circuit
// Module Name: Lab3
// Project Name:Combinational Circuits Structural Modeling Simulation
// Target Devices: Nexus A7 FPGA
// Tool Versions: 
// Description: Writing system verilog code and test bench code for simulating a combinational circuit
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//-----Combinatorial Circuit Module Description-----//
module lab3(

    input  logic a,
    input  logic b,
    input  logic c,
    output logic x,
    output logic y

    );
    
    //-----Local Signals-----//
    logic not_out;
    logic or_1_out;
    logic nand_out;
    logic or_2_out;
    logic xor_out;
    
    //-----Circuit Description-----//
    assign not_out = ~c;
    assign or_1_out = a | b;
    assign nand_out = ~(a & b);
    assign or_2_out = a | b;
    assign xor_out = nand_out ^ or_2_out;
    
    //-----Output Signals-----//
    assign x = not_out ^ or_1_out;
    assign y = or_1_out & xor_out;
    
endmodule

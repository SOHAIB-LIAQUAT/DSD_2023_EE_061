`timescale 1 ns / 10 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UET Lahore
// Engineer: Sohaib Liaquat
// 
// Create Date: 02/17/2025 10:19:36 PM
// Design Name: RGB LED 
// Module Name: lab4_rgb
// Project Name: Combinational Circuit Design: RGB LED using K-Maps
// Target Devices: Nexus A7-100t
// Tool Versions: 
// Description: Structural behaviour of combinational circuit for RGB LED control under given constraints,
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//-----Module Description-----//
module lab4_rgb(
    input  logic [1:0] a,
    input  logic [1:0] b,
    output logic red,
    output logic green,
    output logic blue
    );
    
    //-----Local Signals to RED LED-----//
    logic r_1;
    logic r_2;
    logic r_3;
    logic r_4;
    logic r_5;
    
    //-----Structural Behaviour of RED LED-----//
    assign r_1 = (~b[1]) & (~b[0]);
    assign r_2 =    a[1] & a[0];
    assign r_3 =    a[0] & (~b[1]);
    assign r_4 =    a[1] & (~b[1]);
    assign r_5 =    a[1] & (~b[0]);
    assign red = r_1 | r_2 | r_3 | r_4 | r_5;
    
     //-----Local Signals to GREEN LED-----//
    logic g_1;
    logic g_2;
    logic g_3;
    logic g_4;
    logic g_5;
    
    //-----Structural Behaviour of GREEN LED-----//
    assign g_1   = (~a[1]) & (~a[0]);
    assign g_2   =  b[1]   & b[0];
    assign g_3   = (~a[1]) & b[0];
    assign g_4   = (~a[1]) & b[1];
    assign g_5   = (~a[0]) & b[1];
    assign green = g_1 | g_2 | g_3 | g_4 | g_5;
       
    //-----Local Signals to BLUE LED-----//
    logic b_1;
    logic b_2;
    logic b_3;
    logic b_4;
    
    //-----Structural Behaviour of BLUE LED-----//
    assign b_1   = (a[1])  & (~b[1]);
    assign b_2   = (~a[1]) & (b[1]);
    assign b_3   = (~a[0]) & b[0];
    assign b_4   = (a[0])  & (~b[0]);
    assign blue  = b_1 | b_2 | b_3 | b_4;
    
    
endmodule

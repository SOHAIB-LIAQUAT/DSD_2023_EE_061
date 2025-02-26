`timescale 1ns / 10 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UET Lahore
// Engineer: Sohaib Liaquat
// 
// Create Date: 02/23/2025 04:42:13 PM
// Design Name: Seven Segment 
// Module Name: lab5_seven_seg
// Project Name: Seven Segment Display using K-Maps
// Target Devices: Nexus A7-100t
// Tool Versions: 
// Description: Controlling seven segment display.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//-----Module Structural Description-----//
module lab5_seven_seg_structural(

    input  logic [3:0] num,
    input  logic [2:0] sel,
    output logic seg_a,
    output logic seg_b,
    output logic seg_c,
    output logic seg_d,
    output logic seg_e,   
    output logic seg_f,
    output logic seg_g,
    output logic seg_no_0,
    output logic seg_no_1,
    output logic seg_no_2,
    output logic seg_no_3,
    output logic seg_no_4,
    output logic seg_no_5,
    output logic seg_no_6,
    output logic seg_no_7
    );
    
    //-----Local Signals to SegA-----//
    logic a1;
    logic a2;
    logic a3;
    logic a4;
    logic a5;
    logic a6;
    
    //-----Structural Behaviour of SegA-----//
    assign a1 = num[3] | (~num[1]);
    assign a2 = (~num[2]) | (~num[1]);
    assign a3 = (~num[3]) | (num[0]);
    assign a4 = (~num[3]) | num[2] | num[1];
    assign a5 = num[2] | num[1] | num[0];
    assign a6 = num[3] | (~num[2]) | (~num[0]);
    assign seg_a = a1 & a2 & a3 & a4 & a5 & a6;
    
    //-----Local Signals to SegB-----//
    logic b1;
    logic b2;
    logic b3;
    logic b4;
    logic b5;
    
    //-----Structural Behaviour of Segb-----//
    assign b1 = num[3] | num[2];
    assign b2 = num[3] | num[1] | num[0];
    assign b3 = num[3] | (~num[1]) | (~num[0]);
    assign b4 = (~num[3]) | num[2] | num[0];
    assign b5 = (~num[3]) | num[1] | (~num[0]);
    assign seg_b = b1 & b2 & b3 & b4 & b5;
    
    //-----Local Signals to SegC-----//
    logic c1;
    logic c2;
    logic c3;
    logic c4;
    logic c5;
    
    //-----Structural Behaviour of SegC-----//
    assign c1 = num[3] | num[1];
    assign c2 = num[3] | (~num[0]);
    assign c3 = (~num[3]) | num[2];
    assign c4 = num[3] | (~num[2]);
    assign c5 = num[1] | (~num[0]);
    assign seg_c = c1 & c2 & c3 & c4 & c5;
    
    //-----Local Signals to SegD-----//
    logic d1;
    logic d2;
    logic d3;
    logic d4;
    
    //-----Structural Behaviour of SegD-----//
    assign d1 = (~num[3]) & num[2] & (~num[1]) & (~num[0]);
    assign d2 = (~num[3]) & (~num[2]) & (~num[1]) & (num[0]);
    assign d3 = num[3] & (~num[2]) & num[1] & (~num[0]);
    assign d4 = num[2] & num[1] & num[0];
    assign seg_d = d1 | d2 | d3 | d4;
    
    //-----Local Signals to SegE-----//
    logic e1;
    logic e2;
    logic e3;
    
    //-----Structural Behaviour of SegE-----//
    assign e1 = (~num[3]) & num[0];
    assign e2 = (~num[3]) & num[2] & (~num[1]);
    assign e3 = (~num[2]) & (~num[1]) & num[0];
    assign seg_e = e1 | e2 | e3;
    
    //-----Local Signals to SegF-----//
    logic f1;
    logic f2;
    logic f3;
    logic f4;
    logic f5;
    
    //Structural Behaviour of SegF-----//
    assign f1 = num[1] | num[0];
    assign f2 = (~num[3]) | num[2];
    assign f3 = (~num[3]) | (~num[1]);
    assign f4 = (~num[2]) | (~num[1]) | num[0];
    assign f5 = num[3] | (~num[2]) | num[1];
    assign seg_f = f1 & f2 & f3 & f4 & f5;
    
    //-----Local Signals to SegG-----//
    logic g1;
    logic g2;
    logic g3;
    logic g4;
    logic g5;
    
    //Structural Behaviour of SegG-----//
    assign g1 = (~num[1]) | num[0];
    assign g2 = (~num[3]) | num[2];
    assign g3 = (~num[3]) | (~num[0]);
    assign g4 = num[3] | (~num[2]) | num[1];
    assign g5 = num[2] | (~num[1]) | (~num[0]);
    assign seg_g = g1 & g2 & g3 & g4 & g5;
    
    //-----Structural Behviour of Segment Selection-----//
    assign seg_no_0 = sel[2]    | sel[1]    | sel[0];
    assign seg_no_1 = sel[2]    | sel[1]    | (~sel[0]);
    assign seg_no_2 = sel[2]    | (~sel[1]) | sel[0];
    assign seg_no_3 = sel[2]    | (~sel[1]) | (~sel[0]);
    assign seg_no_4 = (~sel[2]) | sel[1]    | sel[0];
    assign seg_no_5 = (~sel[2]) | sel[1]    | (~sel[0]);
    assign seg_no_6 = (~sel[2]) | (~sel[1]) | sel[0];
    assign seg_no_7 = (~sel[2]) | (~sel[1]) | (~sel[0]);

endmodule

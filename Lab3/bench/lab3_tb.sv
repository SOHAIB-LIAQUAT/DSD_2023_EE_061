//-----Time Scale: 1 Big Box = 1ns and 1 Small Box = 10ps with 100 small boxes-----//
`timescale 1ns / 10ps

//-----Test Bench Module Description-----//
module lab3_tb();

logic in_1;
logic in_2;
logic in_3;
logic out_1;
logic out_2;

//-----Mapping-----//
lab3 lab3_inst(

    .a(in_1),
    .b(in_2),
    .c(in_3),
    .x(out_1),
    .y(out_2)
    
);

//-----Initial Block for Providing 8 Input Combinations for 3 Inputs-----//
initial begin

    in_1 = 0; in_2 = 0; in_3 = 0;   //-----Input 1-----//
    #10;
    in_1 = 0; in_2 = 0; in_3 = 1;   //-----Input 2-----//
    #10;
    in_1 = 0; in_2 = 1; in_3 = 0;   //-----Input 3-----//
    #10;
    in_1 = 0; in_2 = 1; in_3 = 1;   //-----Input 4-----//
    #10;
    in_1 = 1; in_2 = 0; in_3 = 0;   //-----Input 5-----//
    #10;
    in_1 = 1; in_2 = 0; in_3 = 1;   //-----Input 6-----//
    #10;
    in_1 = 1; in_2 = 1; in_3 = 0;   //-----Input 7-----//
    #10;
    in_1 = 1; in_2 = 1; in_3 = 1;   //-----Input 8-----//
    #10;
    $stop;

end

//-----Initial Block for Displaying Waveforms-----//
initial begin
    
    $monitor("a = %b, b = %b, c = %b, x = %b, y = %b", in_1, in_2, in_3, out_1, out_2);

end

endmodule

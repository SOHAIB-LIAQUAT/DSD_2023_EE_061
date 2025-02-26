`timescale 1 ns / 10 ps

//-----Test Bench Module Description-----//
module lab5_seven_seg_tb();

logic [3:0] in_num;
logic [2:0] in_sel;
logic out_seg_a;
logic out_seg_b;
logic out_seg_c;
logic out_seg_d;
logic out_seg_e;
logic out_seg_f;
logic out_seg_g;
logic out_seg_no_0;
logic out_seg_no_1;
logic out_seg_no_2;
logic out_seg_no_3;
logic out_seg_no_4;
logic out_seg_no_5;
logic out_seg_no_6;
logic out_seg_no_7;

//-----Mapping-----//
lab5_seven_seg lab5_seven_seg_inst (
    .num(in_num),
    .sel(in_sel),
    .seg_a(out_seg_a),
    .seg_b(out_seg_b),
    .seg_c(out_seg_c),
    .seg_d(out_seg_d),
    .seg_e(out_seg_e),
    .seg_f(out_seg_f),
    .seg_g(out_seg_g),
    .seg_no_0(out_seg_no_0),
    .seg_no_1(out_seg_no_1),
    .seg_no_2(out_seg_no_2),
    .seg_no_3(out_seg_no_3),
    .seg_no_4(out_seg_no_4),
    .seg_no_5(out_seg_no_5),
    .seg_no_6(out_seg_no_6),
    .seg_no_7(out_seg_no_7)

);

//-----Initial Block for Providing 16 Input Combinations for 4 Inputs-----//
initial begin
    in_num = 4'b0000; in_sel = 3'b000;    //-----Input 1-----//
    #10;
    in_num = 4'b0001; in_sel = 3'b001;    //-----Input 2-----//
    #10;
    in_num = 4'b0010; in_sel = 3'b010;    //-----Input 3-----//
    #10;
    in_num = 4'b0011; in_sel = 3'b011;    //-----Input 4-----//
    #10;
    in_num = 4'b0100; in_sel = 3'b100;    //-----Input 5-----//
    #10;
    in_num = 4'b0101; in_sel = 3'b101;    //-----Input 6-----//
    #10;
    in_num = 4'b0110; in_sel = 3'b110;    //-----Input 7-----//
    #10;
    in_num = 4'b0111; in_sel = 3'b111;    //-----Input 8-----//
    #10;
    in_num = 4'b1000;                     //-----Input 9-----//
    #10;
    in_num = 4'b1001;                     //-----Input 10-----//
    #10;
    in_num = 4'b1010;                     //-----Input 11-----//
    #10;
    in_num = 4'b1011;                     //-----Input 12-----//
    #10;
    in_num = 4'b1100;                     //-----Input 13-----//
    #10;
    in_num = 4'b1101;                     //-----Input 14-----//
    #10;
    in_num = 4'b1110;                     //-----Input 15-----//
    #10;
    in_num = 4'b1111;                     //-----Input 16-----//
    #10;
    $stop;
end

//-----Prinitng truth table of Seven Segment LEDs-----//
initial begin
    $monitor("num[3] = %b  num[2] = %b  num[1] = %b  num[0] = %b  | segA = %b  segB = %b  segC = %b  segD = %b  segE = %b  segF = %b  segG = %b", in_num[3], in_num[2], in_num[1], in_num[0], out_seg_a, out_seg_b, out_seg_c, out_seg_d, out_seg_e, out_seg_f, out_seg_g );
end    

endmodule


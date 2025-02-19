`timescale 1 ns / 10 ps

//-----Test Bench Module Description-----//
module lab4_rgb_tb();

logic [1:0] in_a;
logic [1:0] in_b;
logic out_red;
logic out_green;
logic out_blue;

//-----Mapping-----//
lab4_rgb lab4_rgb_inst (
    .a(in_a),
    .b(in_b),
    .red(out_red),
    .green(out_green),
    .blue(out_blue)
);

//-----Initial Block for Providing 16 Input Combinations for 4 Inputs-----//
initial begin
    in_a = 2'b00; in_b = 2'b00;    //-----Input 1-----//
    #10;
    in_a = 2'b00; in_b = 2'b01;    //-----Input 2-----//
    #10;
    in_a = 2'b00; in_b = 2'b10;    //-----Input 3-----//
    #10;
    in_a = 2'b00; in_b = 2'b11;    //-----Input 4-----//
    #10;
    in_a = 2'b01; in_b = 2'b00;    //-----Input 5-----//
    #10;
    in_a = 2'b01; in_b = 2'b01;    //-----Input 6-----//
    #10;
    in_a = 2'b01; in_b = 2'b10;    //-----Input 7-----//
    #10;
    in_a = 2'b01; in_b = 2'b11;    //-----Input 8-----//
    #10;
    in_a = 2'b10; in_b = 2'b00;    //-----Input 9-----//
    #10;
    in_a = 2'b10; in_b = 2'b01;    //-----Input 10-----//
    #10;
    in_a = 2'b10; in_b = 2'b10;    //-----Input 11-----//
    #10;
    in_a = 2'b10; in_b = 2'b11;    //-----Input 12-----//
    #10;
    in_a = 2'b11; in_b = 2'b00;    //-----Input 13-----//
    #10;
    in_a = 2'b11; in_b = 2'b01;    //-----Input 14-----//
    #10;
    in_a = 2'b11; in_b = 2'b10;    //-----Input 15-----//
    #10;
    in_a = 2'b11; in_b = 2'b11;    //-----Input 16-----//
    #10;
    $stop;
end

//-----Initial Block for printing Values at transcript-----//
initial begin
    $monitor("a[0] = %b, a[1] = %b, b[0] = %b, b[1] = %b, red = %b, green = %b, blue = %b", in_a[1], in_a[0], in_b[1], in_b[0], out_red, out_green, out_blue);
end

endmodule

`timescale 1 ns / 100 ps

module lab7_seven_segment_tb();

    logic [3:0] num;
    logic [2:0] sel;
    logic write;
    logic clock;
    logic reset;
    logic [7:0] common_anodes;
    logic [6:0] common_cathodes;

    lab7_seven_segment lab7_seven_segment_inst(
        .num(num),
        .sel(sel),
        .write(write),
        .clock(clock),
        .reset(reset),
        .common_anodes(common_anodes),
        .common_cathodes(common_cathodes)
    );

    

    // Clock Generation for 100 MHz
    initial begin
        clock <= 0;
        forever #5 clock <= ~clock;  // Toggle every 5ns
    end

    initial begin

        write = 0;
        sel = 0;
        num = 0;
        reset = 0;
        
      #625000;
        reset = 1;
        #1250000 ;
        reset = 0;
        #1250000;

        write = 1;
        num = 4'b1111; sel = 3'b000;
        #1250000 ;
        num = 4'b1110; sel = 3'b001;
        #1250000; 
        num = 4'b1101; sel = 3'b010;
        #1250000; 
        num = 4'b1100; sel = 3'b011;
        #1250000; 
        num = 4'b1011; sel = 3'b100;
        #1250000; 
        num = 4'b1010; sel = 3'b101;
        #1250000; 
        num = 4'b0001; sel = 3'b110;
        #1250000; 
        num = 4'b0000; sel = 3'b111;
        #1250000;
        write = 0;
      #11250000
        $stop;

    end

endmodule
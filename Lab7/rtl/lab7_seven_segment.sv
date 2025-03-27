`timescale 1 ns / 100 ps
module lab7_seven_segment(

    input  logic [3:0] num,
    input  logic [2:0] sel,
    input  logic write,
    input  logic clock,
    input  logic reset,
    output logic [6:0] common_cathodes,
    output logic [7:0] common_anodes

    );

    //-----100 MHz to 100 Hz Frequency Reduction Counter-----//

    logic [15:0] freq_red_count = 0; //-----16 bit count to count upto 62499-----//
    logic clock_out = 1'b0;

    always_ff @(posedge clock) begin

        if (freq_red_count == 16'd62499) begin

            freq_red_count <= #1 0;
            clock_out <= #1 ~clock_out; //-----Toggle the output clock-----//
        
        end 

        else begin

            //-----Increment the counter to 62499-----//
            freq_red_count <= #1 freq_red_count + 1;

        end
        
    end

    //-----0 to 7 Counter for Automatic Display Driver-----//

    logic [2:0] count_display_select;

    always_ff @(posedge clock_out or posedge reset) begin

        if (reset) begin

            //-----Reset the display count to 0-----//
            count_display_select <= #1 0;

        end

        else begin

            //-----Change the counter from 0 to 7-----//
            count_display_select <= #1 count_display_select + 1;

        end
        
    end

    //-----2x1 Mux for automatic or manual selector-----//

    logic [2:0] display_selector; //-----Can be manual or automatic-----//

    always_comb begin

        //-----Manual select when write is 1-----//
        if (write) begin 

            display_selector = sel;
        
        end

        //-----Automatic select changing from 0 to 7 when write is 0-----//
        else begin

            display_selector = count_display_select;

        end
        
    end

    //-----Register file for storing the values in the segments-----//

    logic [3:0] register_file_seven_seg [7:0];
    
    always_ff @(posedge clock or posedge reset) begin

        if (reset) begin

            //-----Store 0 in all registers when reset-----//
            for (int i = 0; i < 8; i++) begin
                 register_file_seven_seg[i] <= #1 4'b0000;
            end

        end

        else if (write) begin
            
            //-----When writing store the required value i.e. num in the corresponding register of the sel-----//
            register_file_seven_seg[sel] <= #1 num;

        end

        
    end



    //-----Seven Segment Display Decoder (Cathodes)-----//
    always_comb begin
    case (register_file_seven_seg[display_selector])
        4'b0000: common_cathodes = 7'b0000001; //0
        4'b0001: common_cathodes = 7'b1001111; //1
        4'b0010: common_cathodes = 7'b0010010; //2
        4'b0011: common_cathodes = 7'b0000110; //3
        4'b0100: common_cathodes = 7'b1001100; //4
        4'b0101: common_cathodes = 7'b0100100; //5
        4'b0110: common_cathodes = 7'b0100000; //6
        4'b0111: common_cathodes = 7'b0001111; //7
        4'b1000: common_cathodes = 7'b0000000; //8
        4'b1001: common_cathodes = 7'b0000100; //9
        4'b1010: common_cathodes = 7'b0001000; //A
        4'b1011: common_cathodes = 7'b1100000; //B
        4'b1100: common_cathodes = 7'b0110001; //C
        4'b1101: common_cathodes = 7'b1000010; //D
        4'b1110: common_cathodes = 7'b0110000; //E
        4'b1111: common_cathodes = 7'b0111000; //F
    endcase
    end

    //-----Segment Select Decoder (Anodes)-----//
    always_comb begin
        case (display_selector)
            3'b000: common_anodes = 8'b11111110; //Seg_0
            3'b001: common_anodes = 8'b11111101; //Seg_1
            3'b010: common_anodes = 8'b11111011; //Seg_2
            3'b011: common_anodes = 8'b11110111; //Seg_3
            3'b100: common_anodes = 8'b11101111; //Seg_4
            3'b101: common_anodes = 8'b11011111; //Seg_5
            3'b110: common_anodes = 8'b10111111; //Seg_6
            3'b111: common_anodes = 8'b01111111; //Seg_7
        endcase
    end

endmodule

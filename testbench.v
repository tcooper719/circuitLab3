`timescale 1ns / 1ns 

module testbench; 

reg [7:0] A, B;
reg C0; 
wire [7:0] Sum;
wire C8;


rippleCarry8bitAdder adder0 (Sum, C8, A, B, C0);
    initial 
    begin 
        //initialize to zero so the wave looks nice
        A=8'b00000000;B=8'b00000000;C0=1'b0;

        //100 + 99
        //‭01100100 + ‬‭01100011‬ = 1100 0111
        #10 A=8'b01100100;B=8'b01100011;

        //22 + 33
        //‭00010110‬ + ‭00100001‬ = ‭0011 0111
        #10 A=8'b00010110;B=8'b00100001;

        //0 + 200
        //00000000 + ‭11001000‬ = 1100 1000
        #10 A=8'b00000000;B=8'b11001000;

        //178 + 134
        //‭10110010‬ + ‭10000110‬ = ‭0001 0011 1000‬
        #10 A=8'b10110010;B=8'b10000110;

    end

    initial
    //    $monitor($stime,, x,, y,, z,, S,, C);
        $monitor($stime,, A,, B,, C0,, Sum,, C8);
endmodule 
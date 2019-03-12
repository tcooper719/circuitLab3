module fullAdder ( output S, C, input x, y, z);
wire S1, C1, C2;
    halfAdder HA1 (S1, C1, x, y);
    halfAdder HA2 (S, C2, S1, z);
    or G1 (C, C2, C1);
endmodule
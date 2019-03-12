module rippleCarry8bitAdder (output [7: 0] Sum, output C8, input [7: 0] A, B, input C0);
wire C1, C2, C3, C4, C5, C6, C7;

fullAdder FA0 (Sum[0], C1, A[0], B[0], C0),
    FA1 (Sum[1], C2, A[1], B[1], C1),
    FA2 (Sum[2], C3, A[2], B[2], C2),
    FA3 (Sum[3], C4, A[3], B[3], C3),
    FA4 (Sum[4], C5, A[4], B[4], C4),
    FA5 (Sum[5], C6, A[5], B[5], C5),
    FA6 (Sum[6], C7, A[6], B[6], C6),
    FA7 (Sum[7], C8, A[7], B[7], C7);
endmodule
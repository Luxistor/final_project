module adder2(
input [1:0] A,
input [1:0] B,
input c_in,
output [1:0] S,
output c_out
);
wire ic_out;
full_adder ADDER0(
.A(A[0]),
.B(B[0]),
.c_in(c_in),
.S(S[0]),
.c_out(ic_out)
);
full_adder ADDER1(
.A(A[1]),
.B(B[1]),
.c_in(ic_out),
.S(S[1]),
.c_out(c_out)
);

endmodule
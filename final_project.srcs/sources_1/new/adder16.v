module adder16(
input [15:0] A,
input [15:0] B,
input c_in,
output [15:0] S,
output c_out
);

wire notr;
wire [14:0] ic_out;

full_adder ADDER0(
.A(A[0]),
.B(B[0]),
.c_in(c_in),
.S(S[0]),
.c_out(ic_out[0])
);

full_adder ADDER1(
.A(A[1]),
.B(B[1]),
.c_in(ic_out[0]),
.S(S[1]),
.c_out(ic_out[1])
);

full_adder ADDER2(
.A(A[2]),
.B(B[2]),
.c_in(ic_out[1]),
.S(S[2]),
.c_out(ic_out[2])
);

full_adder ADDER3(
.A(A[3]),
.B(B[3]),
.c_in(ic_out[2]),
.S(S[3]),
.c_out(ic_out[3])
);

full_adder ADDER4(
.A(A[4]),
.B(B[4]),
.c_in(ic_out[3]),
.S(S[4]),
.c_out(ic_out[4])
);

full_adder ADDER5(
.A(A[5]),
.B(B[5]),
.c_in(ic_out[4]),
.S(S[5]),
.c_out(ic_out[5])
);

full_adder ADDER6(
.A(A[6]),
.B(B[6]),
.c_in(ic_out[5]),
.S(S[6]),
.c_out(ic_out[6])
);

full_adder ADDER7(
.A(A[7]),
.B(B[7]),
.c_in(ic_out[6]),
.S(S[7]),
.c_out(ic_out[7])
);

full_adder ADDER8(
.A(A[8]),
.B(B[8]),
.c_in(ic_out[7]),
.S(S[8]),
.c_out(ic_out[8])
);

full_adder ADDER9(
.A(A[9]),
.B(B[9]),
.c_in(ic_out[8]),
.S(S[9]),
.c_out(ic_out[9])
);

full_adder ADDER10 (
.A(A[10]),
.B(B[10]),
.c_in(ic_out[9]),
.S(S[10]),
.c_out(ic_out[10])
);

full_adder ADDER11(
.A(A[11]),
.B(B[11]),
.c_in(ic_out[10]),
.S(S[11]),
.c_out(ic_out[11])
);

full_adder ADDER12(
.A(A[12]),
.B(B[12]),
.c_in(ic_out[11]),
.S(S[12]),
.c_out(ic_out[12])
);

full_adder ADDER13(
.A(A[13]),
.B(B[13]),
.c_in(ic_out[12]),
.S(S[13]),
.c_out(ic_out[13])
);

full_adder ADDER14(
.A(A[14]),
.B(B[14]),
.c_in(ic_out[13]),
.S(S[14]),
.c_out(ic_out[14])
);

full_adder ADDER15(
.A(A[15]),
.B(B[15]),
.c_in(ic_out[14]),
.S(S[15]),
.c_out(c_out)
);

full_adder ADDER16(
.A(A[7]),
.B(B[7]),
.c_in(ic_out[6]),
.S(S[7]),
.c_out(ic_out[7])
);



endmodule
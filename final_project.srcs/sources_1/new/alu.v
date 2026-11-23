`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2026 12:12:54 PM
// Design Name: 
// Module Name: lab9_alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module alu(
input [15:0]L,
input [15:0]R,
input [2:0]Op,
output [31:0]F
);

wire [31:0] in7, in6, in5, in4, in3, in2, in1, in0;
wire sum_c, diff_c;

assign in2 = L;
assign in3 = R;
assign in4 = R;
assign in5 = R;
assign in6 = R;
assign in7 = R;

//opcode 0, L+R
adder16 adder16_0(
    .A(L),
    .B(R),
    .c_in(1'b0),
    .S(in0[15:0]),
    .c_out(sum_c)
);

// negation for twos complement
wire [15:0]not_R;
not negateR[15:0](not_R, R);

//opcode 1, L-R
adder16 subtractor16_0 (
    .A(L),
    .B(not_R),
    .c_in(1'b1),
    .S(in1[15:0]),
    .c_out(diff_c)
);

// sign extend, this is to work with two's complement
xor sign_extend_add[15:0] (in0[31:16], L[15], R[15], sum_c);
xor sign_extend_sub[15:0] (in1[31:16], L[15], not_R[15], diff_c);

// selector from opcode
multibit_mux #(.NUM_INPUTS(8), .BUS_WIDTH(32)) MBMUX (
.data_out(F),
.select_in(Op),
.data_in( {in7, in6, in5, in4, in3, in2, in1, in0} )
);
    
endmodule

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

module lab9_alu(
input [15:0]L,
input [15:0]R,
input [2:0]Op,
output [31:0]F
);

wire [31:0] in7, in6, in5, in4, in3, in2, in1, in0, out;

assign in2 = L;
assign in3 = R;
assign in5 = R;
assign in6 = R;
assign in7 = R;

adder16 adder16_0(
    .A(L),
    .B(R),
    .c_in(1'b0),
    .S(in0[15:0]),
    .c_out(in0[16])
);

adder16 subtractor16_0 (
    .A(R),
    .B(~L),
    .c_in(1'b1),
    .S(in1[15:0]),
    .c_out(in1[16])
);

multibit_mux #(.NUM_INPUTS(8), .BUS_WIDTH(32)) MBMUX (
.data_out(F),
.select_in(Op),
.data_in( {in7, in6, in5, in4, in3, in2, in1, in0} )
);
    
endmodule

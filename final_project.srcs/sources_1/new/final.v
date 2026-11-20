`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2026 12:21:50 PM
// Design Name: 
// Module Name: lab9_main
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

module final(
    input [15:0]sw,
    input btnC,
    input btnL,
    input clk,
    output [31:0]led
);

wire btnC_up, btnL_up;

debouncer debouncer0(
    .clk(clk),
    .PB(btnL),
    .PB_up(btnL_up),
);

debouncer debouncer1(
    .clk(clk),
    .PB(btnC),
    .PB_up(btnC_up)
);

wire add_to_register_wire, current_state_wire;
reg2 current_state (
    .in_D(add_to_register_wire),
    .in_EN(btnC_up),
    .in_CLK(clk)
    .RST(0),
    .out_Q(0)
);

adder2 state_incrementer (
    .A(current_state_wire),
    .B(1'b1),
    .c_in(0),
    .S(add_to_register_wire)
);

wire [2:0]Op;
reg3 opcode_storage(
    .in_D(sw[2:0]),
    .in_EN(state_one),
    .in_CLK(clk),
    .out_Q(Op),
);

decoder #(2,3) state_decoder (
    .address_in(digit_to_display),
    .en_in(1),
    .data_out({})
);

wire alu_wire_to_reg;
alu alu_0(
    .L(sw),
    .R(R),
    .Op(Op),
    .F(alu_wire_to_reg),
);

reg32 alu_output(
    .in_D(alu_wire_to_reg),
    .in_EN(PB_up),
    .in_CLK(clk),
    .out_Q(led),
);


endmodule

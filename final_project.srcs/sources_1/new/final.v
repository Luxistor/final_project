`timescale 1ns / 1ps

module final_proj(
    input [15:0]sw,
    input btnC,
    input btnL,
    input clk,
    output [15:0]led
);

wire btnC_up, btnL_up;

// switch from low/high bits on press
debouncer debouncer0(
    .clk(clk),
    .PB(btnL),
    .PB_up(btnL_up)
);

// move to next state
debouncer debouncer1(
    .clk(clk),
    .PB(btnC),
    .PB_up(btnC_up)
);

// stores current state 0 -> 4
wire [1:0]state, next_state;
reg2 current_state (
    .in_D(next_state),
    .in_EN(btnC_up),
    .in_CLK(clk),
    .RST(0),
    .out_Q(state)
);

// +1 on btnC, wraps around due to 2's complement
adder2 state_incrementer (
    .A(state),
    .B(2'b01),
    .c_in(0),
    .S(next_state)
);

// decode binary -> state #
wire [3:0] decoded_state;
decoder #(2,3) state_decoder (
    .address_in(state),
    .en_in(1'b1),
    .data_out(decoded_state)
);

// we do a load if and only if we are in the correct state AND btnC goes up
wire load_Opcode, load_A, load_B;
and should_load_opcode(load_Opcode, decoded_state[0], btnC_up);
and should_load_A(load_A, decoded_state[1], btnC_up);
and should_load_B(load_B, decoded_state[2], btnC_up);

wire [15:0] A,B;
wire [2:0] Op;
reg3 opcode_storage(
    .in_D(sw[2:0]),
    .in_EN(load_Opcode),
    .in_CLK(clk),
    .out_Q(Op)
);

reg16 a_storage(
    .in_D(sw),
    .in_EN(load_A),
    .in_CLK(clk),
    .out_Q(A)
);

reg16 b_storage(
    .in_D(sw),
    .in_EN(load_B),
    .in_CLK(clk),
    .out_Q(B)
);

// alu
wire [31:0] alu_output;
alu alu_0(
    .L(A),
    .R(B),
    .Op(Op),
    .F(alu_output)
);

// are we on the low or high bits
wire high_reg_in, high_reg_out;
not flip_bits(high_reg_in, high_reg_out);
dff_en low_or_high (
	.data_out(high_reg_out),
	.in_D(high_reg_in),
	.in_CLK(clk),
	.in_EN(btnL_up)
);

// show bytes based on the reg state
wire [15:0] bytes_to_show;

multibit_mux #(.NUM_INPUTS(2), .BUS_WIDTH(16)) select_bytes_mux (
.data_out(bytes_to_show),
.select_in(high_reg_out),
.data_in( {alu_output[31:16], alu_output[15:0]} )
);
   
// for states 0-2, show switches, when calculator is ready (state 3), sshow output
multibit_mux #(.NUM_INPUTS(2), .BUS_WIDTH(16)) switch_or_output_mux (
.data_out(led),
.select_in(decoded_state[3]),
.data_in( {bytes_to_show, sw} )
);

endmodule

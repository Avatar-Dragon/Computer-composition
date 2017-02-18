`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:33 05/18/2016 
// Design Name: 
// Module Name:    CPUState 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CPUState(result, NowState, Opcode
    );
	 input [2:0] NowState;
	 input [5:0] Opcode;
	 output reg [2:0] result;
	 
	 parameter Add = 6'b000000,
	 Addi = 6'b000010,
	 Sub = 6'b000001,
	 Ori = 6'b010010,
	 And = 6'b010001,
	 Or = 6'b010000,
	 Move = 6'b100000,
	 Sw = 6'b110000,
	 Lw = 6'b110001,
	 Beq = 6'b110100,
	 Halt = 6'b111111,
	 Sll = 6'b011000,
	 Slt = 6'b100111,
	 J = 6'b111000,
	 Jr = 6'b111001,
	 Jal = 6'b111010;
	 
	 reg i_add, i_beq, i_sw, i_lw, i_j;
	 
	 always @ (NowState or Opcode) begin
	     i_add = 0;
		  i_beq = 0;
		  i_sw = 0;
		  i_lw = 0;
		  i_j = 0;
		  case (Opcode)
		      Add: i_add = 1;
				Sub: i_add = 1;
				Addi: i_add = 1;
				Or: i_add = 1;
				And: i_add = 1;
				Ori: i_add = 1;
				Move: i_add = 1;
				Slt: i_add = 1;
				Sll: i_add = 1;
				Beq: i_beq = 1;
				Sw: i_sw = 1;
				Lw: i_lw = 1;
				J: i_j = 1;
				Jal: i_j = 1;
				Jr: i_j = 1;
				Halt: i_j = 1;
		  endcase
		  case (NowState)
		      3'b000: result = 3'b001;
				3'b001: result = (3'b110 & {3{i_add}}) | (3'b101 & {3{i_beq}}) | (3'b010 & ({3{i_sw}} | {3{i_lw}})) | (3'b000 & {3{i_j}});
				3'b110: result = 3'b111;
				3'b111: result = 3'b000;
				3'b101: result = 3'b000;
				3'b010: result = 3'b011;
				3'b011: result = (3'b100 & {3{i_lw}}) | (3'b000 & {3{i_sw}});
				3'b100: result = 3'b000;
		  endcase
	 end


endmodule

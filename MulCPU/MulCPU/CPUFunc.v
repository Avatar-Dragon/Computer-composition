`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:23:54 05/22/2016 
// Design Name: 
// Module Name:    CPUFunc 
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
module CPUFunc(decode, state, zero, PCWre, ALUSrcB, ALUM2Reg, RegWre, INsMemRW, 
     DataMemRW, ExtSel, PCSrc, RegOut, ALUOp, WrRegData, IRWre
    );
	 input [5:0] decode;
	 input [2:0] state;
	 input zero;
	 output PCWre, ALUSrcB, ALUM2Reg, RegWre, INsMemRW, 
     DataMemRW, WrRegData, IRWre;
	 output [1:0] ExtSel, PCSrc, RegOut;
	 output [2:0] ALUOp;
	 
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
	 
	 // ²Ù×÷ÂëÖú¼Ç·û
	 reg i_add, i_addi, i_sub, i_ori, i_and, i_or, i_move, 
	 i_sw, i_lw, i_beq, i_halt, i_sll, i_slt, i_j, i_jr, i_jal;
	 
	 // ×´Ì¬Öú¼Ç·û
	 reg i_if, i_id, i_exe, i_mem, i_wb;
	 
	 initial begin
	     i_add = 0;
		  i_addi = 0;
		  i_sub = 0;
		  i_ori = 0;
		  i_and = 0;
		  i_or = 0;
		  i_move = 0;
		  i_sw = 0;
		  i_lw = 0;
		  i_beq = 0;
		  i_halt = 0;
		  i_sll = 0;
		  i_slt = 0;
		  i_j = 0;
		  i_jr = 0;
		  i_jal = 0;
		  i_if = 0;
		  i_id = 0;
		  i_exe = 0;
		  i_mem = 0;
		  i_wb = 0;
	 end
	 
	 always @ (decode) begin
	     i_add = 0;
		  i_addi = 0;
		  i_sub = 0;
		  i_ori = 0;
		  i_and = 0;
		  i_or = 0;
		  i_move = 0;
		  i_sw = 0;
		  i_lw = 0;
		  i_beq = 0;
		  i_halt = 0;
		  i_sll = 0;
		  i_slt = 0;
		  i_j = 0;
		  i_jr = 0;
		  i_jal = 0;
		  case (decode)
		      Add: i_add = 1;
				Sub: i_sub = 1;
				Addi: i_addi = 1;
				Or: i_or = 1;
				And: i_and = 1;
				Ori: i_ori = 1;
				Move: i_move = 1;
				Slt: i_slt = 1;
				Sll: i_sll = 1;
				Beq: i_beq = 1;
				Sw: i_sw = 1;
				Lw: i_lw = 1;
				J: i_j = 1;
				Jal: i_jal = 1;
				Jr: i_jr = 1;
				Halt: i_halt = 1;
		  endcase
	 end
	 always @ (state) begin
	     i_if = 0;
		  i_id = 0;
		  i_exe = 0;
		  i_mem = 0;
		  i_wb = 0;
		  case (state)
		      3'b000: i_if = 1;
				3'b001: i_id = 1;
				3'b110: i_exe = 1;
				3'b111: i_wb = 1;
				3'b101: i_exe = 1;
				3'b010: i_exe = 1;
				3'b011: i_mem = 1;
				3'b100: i_wb = 1;
		  endcase
	 end
	 
	 assign PCWre = i_if & (!i_halt);
	 assign ALUSrcB = (i_exe | i_if) & (i_addi | i_ori | i_sw | i_lw | i_sll);
	 assign ALUM2Reg = i_mem & i_lw;
	 assign RegWre = ( (i_id & i_jal) | i_wb) & (!(i_sw | i_beq | i_halt | i_j | i_jr));
	 assign INsMemRW = 0;
	 assign DataMemRW = i_mem & i_sw;
	 assign ExtSel = {i_addi | i_sw | i_lw | i_beq, 
						   i_ori | i_halt};
	 assign PCSrc = {2{i_exe | i_if}} & 
	                {i_j | i_jr | i_jal,
						 (i_beq & zero) | i_j | i_jal};
	 assign RegOut = {2{i_wb}} & 
	                 {i_add | i_sub | i_and | i_or | i_move | i_sll | i_slt,
	                  i_addi | i_ori | i_lw | i_halt};
	 assign ALUOp = {3{i_exe | i_if}} & 
	                {i_ori | i_and | i_or | i_sll, 
	                 i_and | i_slt,
						  i_sub | i_ori | i_or | i_beq};
	 assign WrRegData = (!i_jal); 
	 assign IRWre = !i_halt;


endmodule

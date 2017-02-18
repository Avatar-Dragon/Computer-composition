`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:40:16 05/22/2016 
// Design Name: 
// Module Name:    CU 
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
module CU(Opcode, nowState, zero, PCWre, ALUSrcB, ALUM2Reg, RegWre, INsMemRW, 
     DataMemRW, ExtSel, PCSrc, RegOut, ALUOp, WrRegData, IRWre, CLK, RST
    );
	 input [5:0] Opcode;
	 input [2:0] RST;
	 wire [2:0] nextState;
	 output [2:0] nowState;
	 input zero, CLK;
	 output PCWre, ALUSrcB, ALUM2Reg, RegWre, INsMemRW, 
     DataMemRW, WrRegData, IRWre;
	 output [1:0] ExtSel, PCSrc, RegOut;
	 output [2:0] ALUOp;
	 
	 DRegister dRegister(nowState, nextState, RST, CLK);
	 CPUState cpuState(nextState, nowState, Opcode);
	 CPUFunc cpuFunc(Opcode, nowState, zero, PCWre, ALUSrcB, ALUM2Reg, RegWre, INsMemRW, 
     DataMemRW, ExtSel, PCSrc, RegOut, ALUOp, WrRegData, IRWre);


endmodule

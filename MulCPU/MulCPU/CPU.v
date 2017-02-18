`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:19:50 05/22/2016 
// Design Name: 
// Module Name:    CPU 
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
module CPU(decode, nowState, zero, PCWre, ALUSrcB, ALUM2Reg, RegWre, INsMemRW, 
     DataMemRW, ExtSel, PCSrc, RegOut, ALUOp, WrRegData, IRWre,
	  ALUM2DRes, DataMemRes, ExtendRes, Instruction, IRMemRes, JPCRes,
	  ALURes, ADRes, BDRes, ALUoutRes, PCRes, PCAddRes, ReadRes1, ReadRes2,
	  myWriteReg, SeletePCRes, rs, rt, rd, imme, RST, Reset, CLK
    );
	 input [2:0] RST;
 
	 output [5:0] decode;
	 output PCWre, ALUSrcB, ALUM2Reg, RegWre, INsMemRW, 
     DataMemRW, WrRegData, IRWre,zero;
	 output [1:0] ExtSel, PCSrc, RegOut;
	 output [2:0] ALUOp ,nowState;
	 output [31:0] ALUM2DRes, DataMemRes, ExtendRes, Instruction, IRMemRes, JPCRes,
	     ALURes, ADRes, BDRes, ALUoutRes, PCRes, PCAddRes, ReadRes1, ReadRes2,
		  SeletePCRes;
	 output [4:0] rs, rt, rd;
	 output [4:0] myWriteReg;
	 output [15:0] imme;
	 
	 input [31:0] Reset;
	 input CLK;
//	 reg CLK;
//	 
//	 initial begin
//      CLK = 1;
//    end
//    always #250
//        CLK = ~CLK;
	 
	 CU cu(decode, nowState, zero, PCWre, ALUSrcB, ALUM2Reg, RegWre, INsMemRW, 
     DataMemRW, ExtSel, PCSrc, RegOut, ALUOp, WrRegData, IRWre, CLK, RST);
	 PC pc(PCRes, PCWre, SeletePCRes, CLK, Reset);
	 PCAdd pcAdd(PCAddRes, PCRes);
	 IRmemory IRMem(IRMemRes, INsMemRW, PCRes);
	 IRegister IRegis(Instruction, IRMemRes, IRWre, CLK);
	 assign decode[5:0] = Instruction[31:26];
	 assign rs = Instruction[25:21];
	 assign rt = Instruction[20:16];
	 assign rd = Instruction[15:11];
	 assign imme = Instruction[15:0];
	 JPC jpc(JPCRes, PCRes[31:28], Instruction[25:0]);
	 Extend extend(ExtendRes, imme, ExtSel);
	 SeleteWriReg seleteReg(myWriteReg, rt, rd, RegOut);
	 RegisterFile registerFile(ReadRes1, ReadRes2, RegWre, CLK,
                    rs, rt, myWriteReg, ALUM2DRes);
    MidRegister ADR(ADRes, ReadRes1, CLK);
	 MidRegister BDR(BDRes, ReadRes2, CLK);
	 ALU alu(zero, ALURes, ADRes, BDRes, ExtendRes, ALUSrcB, ALUOp);
	 MidRegister ALUout(ALUoutRes, ALURes, CLK);
	 DataMemory dataMem(DataMemRes, DataMemRW, ALUoutRes, BDRes, CLK);
	 ALUM2DR aluM2dr(ALUM2DRes, ALURes, DataMemRes, ALUM2Reg, PCAddRes, WrRegData, CLK);
	 seletePC seletepc(SeletePCRes,PCAddRes, ReadRes1, ExtendRes, JPCRes, PCSrc);

endmodule

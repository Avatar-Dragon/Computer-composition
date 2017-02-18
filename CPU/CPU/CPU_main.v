`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:18 04/23/2016 
// Design Name: 
// Module Name:    CPU_main 
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
module CPU_main(
    );
	 //CU sign
	 wire ExtSel;
	 wire PCWre;
	 wire InsMemRW;
	 wire RegOut;
	 wire RegWre;
	 wire [2:0] ALUOp;
	 wire PCSrc;
	 wire ALUSrcB;
	 wire ALUM2Reg;
	 wire DataMemRW;
	 
	 //PC sign
	 reg CLK;
	 reg [31:0] Reset;
	 wire [31:0] PCOut;
	 
	 //InsMem sign
	 wire [31:0] IDataOut;
	 wire [5:0] operation;
	 wire [4:0] rs, rt, rd;
	 wire [15:0] imme;
	 
	 //selete WriteReg
	 wire [4:0] WriteReg;
	 
	 //selete B
	 wire [31:0] B;
	 
	 //selete WriteData
	 wire [31:0] WriteData;
	 
	 //selete PCnext
	 wire [31:0] PCnext;
	 
	 //Add_first
	 wire [31:0] Add_result1;
	 
	 //Add_second
	 wire [31:0] Add_result2;
	 
	 //shift
	 wire [31:0] shiftResult;
	 
	 //RegisterFile
	 wire [31:0] ReadData1;
	 wire [31:0] ReadData2;
	 
	 //extend
	 wire [31:0] extendResult;
	 
	 //ALU
	 wire [31:0] ALUresult;
	 wire zero;
	 
	 //DataMem
	 wire [31:0] DataOut;
	 
	 initial begin
	      Reset = 0;
			CLK = 0;
	 end
	 
	 always #500
	     CLK = ~CLK;
		  
	 PC pc(PCOut, PCWre, PCnext, CLK, Reset);
	 InstructionMemory instru(IDataOut, InsMemRW, PCOut);
	 
	 assign operation = IDataOut[31:26];
	 assign rs = IDataOut[25:21];
	 assign rt = IDataOut[20:16];
	 assign rd = IDataOut[15:11];
	 assign imme = IDataOut[15:0];
	 
	 CU cu(operation, zero, PCWre, ALUSrcB, ALUM2Reg, RegWre, InsMemRW, 
     DataMemRW, ExtSel, PCSrc, RegOut, ALUOp);
	  
	 DataSelect5 seleteWriteReg(WriteReg, RegOut, rt, rd);
	 RegisterFile regFile(ReadData1, ReadData2, RegWre, CLK,
                    rs, rt, WriteReg, WriteData);
						  
	 Extend extend(extendResult, imme, ExtSel);
	 Shift shift(shiftResult, extendResult);
	 Add add1(Add_result1, 4, PCOut);
	 Add add2(Add_result2, Add_result1, shiftResult);
	 DataSelect seletePCnext(PCnext, PCSrc, Add_result1, Add_result2);
	 
	 DataSelect seleteB(B, ALUSrcB, ReadData2, extendResult);
	 ALU alu(zero, ALUresult, ReadData1, B, ALUOp);
	 
	 DataMemory datamem(DataOut, DataMemRW, ALUresult, ReadData2, CLK);
	 DataSelect seleteWriteData(WriteData, ALUM2Reg, ALUresult, DataOut);



endmodule

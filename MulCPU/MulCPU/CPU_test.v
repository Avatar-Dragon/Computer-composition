`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:04:20 05/24/2016
// Design Name:   CPU
// Module Name:   E:/XILINX/project/MulCPU/CPU_test.v
// Project Name:  MulCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPU_test;

	// Inputs
	reg [2:0] RST;
	reg [31:0] Reset;
	reg CLK;

	// Outputs
	wire [5:0] decode;
	wire [2:0] nowState;
	wire zero;
	wire PCWre;
	wire ALUSrcB;
	wire ALUM2Reg;
	wire RegWre;
	wire INsMemRW;
	wire DataMemRW;
	wire [1:0] ExtSel;
	wire [1:0] PCSrc;
	wire [1:0] RegOut;
	wire [2:0] ALUOp;
	wire WrRegData;
	wire IRWre;
	wire [31:0] ALUM2DRes;
	wire [31:0] DataMemRes;
	wire [31:0] ExtendRes;
	wire [31:0] Instruction;
	wire [31:0] IRMemRes;
	wire [31:0] JPCRes;
	wire [31:0] ALURes;
	wire [31:0] ADRes;
	wire [31:0] BDRes;
	wire [31:0] ALUoutRes;
	wire [31:0] PCRes;
	wire [31:0] PCAddRes;
	wire [31:0] ReadRes1;
	wire [31:0] ReadRes2;
	wire [4:0] myWriteReg;
	wire [31:0] SeletePCRes;
	wire [4:0] rs;
	wire [4:0] rt;
	wire [4:0] rd;
	wire [15:0] imme;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.decode(decode), 
		.nowState(nowState), 
		.zero(zero), 
		.PCWre(PCWre), 
		.ALUSrcB(ALUSrcB), 
		.ALUM2Reg(ALUM2Reg), 
		.RegWre(RegWre), 
		.INsMemRW(INsMemRW), 
		.DataMemRW(DataMemRW), 
		.ExtSel(ExtSel), 
		.PCSrc(PCSrc), 
		.RegOut(RegOut), 
		.ALUOp(ALUOp), 
		.WrRegData(WrRegData), 
		.IRWre(IRWre), 
		.ALUM2DRes(ALUM2DRes), 
		.DataMemRes(DataMemRes), 
		.ExtendRes(ExtendRes), 
		.Instruction(Instruction), 
		.IRMemRes(IRMemRes), 
		.JPCRes(JPCRes), 
		.ALURes(ALURes), 
		.ADRes(ADRes), 
		.BDRes(BDRes), 
		.ALUoutRes(ALUoutRes), 
		.PCRes(PCRes), 
		.PCAddRes(PCAddRes), 
		.ReadRes1(ReadRes1), 
		.ReadRes2(ReadRes2), 
		.myWriteReg(myWriteReg), 
		.SeletePCRes(SeletePCRes), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.imme(imme), 
		.RST(RST), 
		.Reset(Reset), 
		.CLK(CLK)
	);

	initial begin
		// Initialize Inputs
		RST = 0;
		Reset = 0;
		CLK = 1;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		while (1) begin
		    #250;
          CLK = ~CLK;
		end
		

	end
      
endmodule


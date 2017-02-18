`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:20:58 04/21/2016 
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
module CU(decode, zero, PCWre, ALUSrcB, ALUM2Reg, RegWre, INsMemRW, 
     DataMemRW, ExtSel, PCSrc, RegOut, ALUOp
    );
	 
	 input [5:0] decode;
	 input zero;
	 output reg PCWre, ALUSrcB, ALUM2Reg, RegWre, INsMemRW, 
     DataMemRW, ExtSel, PCSrc, RegOut;
	 output reg [2:0] ALUOp;
	 initial begin
	      PCWre = 0;
			ALUSrcB = 0;
			ALUM2Reg = 0;
			RegWre = 1;
			DataMemRW = 0;
			ExtSel = 1'bx;
			PCSrc = 0;
			RegOut = 0;
			ALUOp = 3'b000;
			INsMemRW = 0;
	 end
	 
	 //若decode(指令操作码)或者zero有变化，都会触发以下部分产生新的控制信号
	   always@(decode or zero) begin
			 INsMemRW = 0;
			 PCSrc = 0;
		
	       case(decode)
			     // add
			     6'b000000:
				  begin
				       PCWre = 1;
						 ALUSrcB = 0;
						 ALUM2Reg = 0;
						 RegWre = 1;
						 //INsMemRW = 0;
						 DataMemRW = 0;
						 ExtSel = 1'bx;
						 PCSrc = 0;
						 RegOut = 1;
						 ALUOp = 3'b000;
				  end
				  //addi
				  6'b000001:
				  begin
				       PCWre = 1;
						 ALUSrcB = 1;
						 ALUM2Reg = 0;
						 RegWre = 1;
						 //INsMemRW = 0;
						 DataMemRW = 0;
						 ExtSel = 1;
						 PCSrc = 0;
						 RegOut = 0;
						 ALUOp = 3'b000;
				  end
				  //sub
				  6'b000010:
				  begin
				       PCWre = 1;
						 ALUSrcB = 0;
						 ALUM2Reg = 0;
						 RegWre = 1;
						 //INsMemRW = 0;
						 DataMemRW = 0;
						 ExtSel = 1'bx;
						 PCSrc = 0;
						 RegOut = 1;
						 ALUOp = 3'b001;
				  end
				  //ori
				  6'b010000:
				  begin
				       PCWre = 1;
						 ALUSrcB = 1;
						 ALUM2Reg = 0;
						 RegWre = 1;
						 //INsMemRW = 0;
						 DataMemRW = 0;
						 ExtSel = 0;
						 PCSrc = 0;
						 RegOut = 0;
						 ALUOp = 3'b011;
				  end
				  //and
				  6'b010001:
				  begin
				       PCWre = 1;
						 ALUSrcB = 0;
						 ALUM2Reg = 0;
						 RegWre = 1;
						 //INsMemRW = 0;
						 DataMemRW = 0;
						 ExtSel = 1'bx;
						 PCSrc = 0;
						 RegOut = 1;
						 ALUOp = 3'b100;
						 $display("%d", ALUOp);
				  end
				  //or
				  6'b010010:
				  begin
				       PCWre = 1;
						 ALUSrcB = 0;
						 ALUM2Reg = 0;
						 RegWre = 1;
						 //INsMemRW = 0;
						 DataMemRW = 0;
						 ExtSel = 1'bx;
						 PCSrc = 0;
						 RegOut = 1;
						 ALUOp = 3'b011;
				  end
				  //move
				  6'b100000:
				  begin
				       PCWre = 1;
						 ALUSrcB = 0;
						 ALUM2Reg = 0;
						 RegWre = 1;
						 //INsMemRW = 0;
						 DataMemRW = 0;
						 ExtSel = 1'bx;
						 PCSrc = 0;
						 RegOut = 1;
						 ALUOp = 3'b000;
				  end
				  //sw
				  6'b100110:
				  begin
				       PCWre = 1;
						 ALUSrcB = 1;
						 ALUM2Reg = 1'bx;
						 RegWre = 0;
						 //INsMemRW = 0;
						 DataMemRW = 1;
						 ExtSel = 1;
						 PCSrc = 0;
						 RegOut = 1'bx;
						 ALUOp = 3'b000;
				  end
				  //lw
				  6'b100111:
				  begin
				       PCWre = 1;
						 ALUSrcB = 1;
						 ALUM2Reg = 1;
						 RegWre = 1;
						 //INsMemRW = 0;
						 DataMemRW = 0;
						 ExtSel = 1;
						 PCSrc = 0;
						 RegOut = 0;
						 ALUOp = 3'b000;
				  end
				  //beq
				  6'b110000:
				  begin
				       PCWre = 1;
						 ALUSrcB = 0;
						 ALUM2Reg = 1'bx;
						 RegWre = 0;
						 //INsMemRW = 0;
						 DataMemRW = 0;
						 ExtSel = 1;
						 PCSrc = zero;
						 RegOut = 1'bx;
						 ALUOp = 3'b001;
				  end
				  //halt
				  6'b111111:
				  begin
				       PCWre = 0;
						 ALUSrcB = 1'bx;
						 ALUM2Reg = 1'bx;
						 RegWre = 1'bx;
						 //INsMemRW = 0;
						 DataMemRW = 0;
						 ExtSel = 1'bx;
						 PCSrc = 0;
						 RegOut = 1'bx;
						 ALUOp = 3'bxxx;
				  end
	       endcase
	   end
		
endmodule

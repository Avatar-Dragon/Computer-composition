`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:12 05/11/2016 
// Design Name: 
// Module Name:    ALUM2DR 
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
module ALUM2DR(result, ALURes, DataRes, ALUM2Reg, PC4, WrRegData, CLK
    );
	 output [31:0] result;
	 input [31:0] ALURes, DataRes, PC4;
	 input ALUM2Reg, WrRegData, CLK;
	 reg [31:0] tem;   //ÖÐ¼ä¼Ä´æÆ÷
	 always @ (posedge CLK) begin
	     if (ALUM2Reg == 0) tem = ALURes;   // Ð´ÖÐ¼ä¼Ä´æÆ÷
		  else tem = DataRes;
		  //$display("tem = %d", tem);
	 end
	 assign result = (WrRegData == 0) ? PC4 : tem;   // ¶ÁÖÐ¼ä¼Ä´æÆ÷
//	 always @ (PC4 or WrRegData) begin
//		  if (WrRegData == 0) result = PC4;
//		  else result = tem;
//		  //$display("result = %d", result);
//	 end


endmodule

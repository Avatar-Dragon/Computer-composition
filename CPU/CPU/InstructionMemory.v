`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:33:49 04/22/2016 
// Design Name: 
// Module Name:    InstructionMemory 
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
module InstructionMemory(result, RW, IAddr
    );
	 input RW;
	 input [31:0] IAddr;
	 output reg [31:0] result;
	 reg [7:0] memory [0:255];   //  64个字，256字节
	 
	 initial
	     $readmemb("./rom_data2.txt", memory);    //  初始化指令，源文件为rom_data2.txt
	 always @(RW or IAddr) begin
	      if (RW == 0) begin
				  result[31:24] = memory[IAddr];
				  result[23:16] = memory[IAddr+1];
				  result[15:8] = memory[IAddr+2];
				  result[7:0] = memory[IAddr+3];
			end
	 end

endmodule

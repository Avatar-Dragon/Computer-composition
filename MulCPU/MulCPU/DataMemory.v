`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:48:41 05/11/2016 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(result, RW, DAddr, DataIn, CLK
    );
	 input wire RW, CLK;
	 input [31:0] DAddr, DataIn;
	 output reg [31:0] result;
	 
	 reg [7:0] mem [0:127];  // 32字， 128字节
	 integer i;
	 initial begin
	      for (i = 0; i < 128; i = i + 1)
			    mem[i] = 0;
	 end
	 
	 always @(negedge CLK) begin
	      if (RW != 0) begin      // sw 写  大端规则
			     //$display("%d %d %d", RW, DAddr, DataIn);
			     mem[DAddr] = DataIn[31:24];
				  mem[DAddr+1] = DataIn[23:16];
				  mem[DAddr+2] = DataIn[15:8];
				  mem[DAddr+3] = DataIn[7:0];
				  result = 32'bz;
				  end
	 end
	 always @(RW or DAddr or DataIn) begin
			if (RW == 0) begin        //  lw  读
			     result[31:24] = mem[DAddr];
				  result[23:16] = mem[DAddr+1];
				  result[15:8] = mem[DAddr+2];
				  result[7:0] = mem[DAddr+3];
			end
	 end


endmodule

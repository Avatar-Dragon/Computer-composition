`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:42 05/11/2016 
// Design Name: 
// Module Name:    seletePC 
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
module seletePC(result, PC4, regRes, extRes, JPC, PCsrc
    );
	 input [31:0] PC4, regRes, extRes, JPC;
	 input [1:0] PCsrc;
	 output reg [31:0] result;
	 always @ (PC4 or regRes or extRes or PCsrc) begin
	     case(PCsrc)
		       2'b00: result = PC4;
				 2'b01: result = PC4 + (extRes << 2);
				 2'b10: result = regRes;
				 2'b11: result = JPC;
		  endcase
	 end


endmodule

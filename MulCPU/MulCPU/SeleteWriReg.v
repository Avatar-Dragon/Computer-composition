`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:03:43 05/11/2016 
// Design Name: 
// Module Name:    SeleteWriReg 
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
module SeleteWriReg(result, rt, rd, Regout
    );
	 input [4:0] rt, rd;
	 input [1:0] Regout;
	 output reg [4:0] result;
	 //assign result = rt;µ÷ÊÔÓï¾ä
	 always @ (rt or rd or Regout) begin
	     case(Regout)
		      2'b00: result = 5'b11111;
				2'b01: result = rt;
				2'b10: result = rd;
				2'b11: result = 5'b11000;
		  endcase
		  //$display("I have checked %d %d %d %d", result, rt, rd, Regout);
		  //result = rt;
		  //if (Regout == 2'b00) result = 5'b11000;
	 end 
 

endmodule

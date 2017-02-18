`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:53:29 05/11/2016 
// Design Name: 
// Module Name:    Extend 
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
module Extend(result, Data, ExtSel
    );
	 input [15:0] Data;
	 input [1:0] ExtSel;
	 output reg [31:0] result;
	 // 符号或者无符号拓展
	 always @ (Data or ExtSel) begin
	        if (ExtSel == 2'b00 ) result = {{27{0}}, Data[10:5]};
			  else if (ExtSel == 2'b01) result = {{16{0}}, Data};
			  else result = {{16{Data[15]}}, Data};
	 end


endmodule

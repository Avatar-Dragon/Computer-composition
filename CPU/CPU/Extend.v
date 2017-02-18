`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:48:36 04/22/2016 
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
	 input ExtSel;
	 output reg [31:0] result;
	 
	 always @ (Data or ExtSel) begin
	        if (ExtSel == 0) result <= {{16{0}}, Data};
			  else result <= {{16{Data[15]}}, Data};
	 end


endmodule

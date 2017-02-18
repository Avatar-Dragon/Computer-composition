`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:31 04/22/2016 
// Design Name: 
// Module Name:    Shift 
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
module Shift(result, Data
    );
	 input [31:0] Data;
	 output reg [31:0] result;
	 always @ (Data) begin
	       result = Data<<2;
	 end


endmodule

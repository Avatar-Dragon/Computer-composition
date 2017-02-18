`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:56:39 05/11/2016 
// Design Name: 
// Module Name:    PCAdd 
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
module PCAdd(result, PC0
    );
	 // PC+4
	 input [31:0] PC0;
	 output [31:0] result;
	 assign result = PC0 + 4;

endmodule

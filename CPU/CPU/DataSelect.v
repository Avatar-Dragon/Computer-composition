`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:42:44 04/22/2016 
// Design Name: 
// Module Name:    DataSelect 
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
module DataSelect(result, Sign, A, B
    );
	 input Sign;
	 input [31:0] A, B;
	 output reg [31:0] result;
	 
	 always @ (A or B or Sign) begin
	        if (Sign == 0) result = A;
	        else result = B;
	 end
	 
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:52:55 04/23/2016 
// Design Name: 
// Module Name:    DataSelect5 
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
module DataSelect5(result, Sign, A, B
    );
	 input Sign;
	 input [4:0] A, B;
	 output reg [4:0] result;
	 
	 always @ (A or B or Sign) begin
	        if (Sign == 0) result = A;
	        else result = B;
	 end


endmodule

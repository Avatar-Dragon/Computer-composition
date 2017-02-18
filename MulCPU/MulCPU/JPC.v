`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:35:56 05/18/2016 
// Design Name: 
// Module Name:    JPC 
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
module JPC(result, PC0, IRData
    );
	 //  计算立即数跳转需要的PC值
	 input [25:0] IRData;
	 input [3:0] PC0;
	 output [31:0] result;
	 assign result = {PC0, IRData, 1'b0, 1'b0};
//	 always @ (PC0 or IRData) begin
//	     $display("%d %d %d",PC0, IRData, result);
//    end	 

endmodule

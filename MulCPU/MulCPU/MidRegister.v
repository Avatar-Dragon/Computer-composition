`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:18:19 05/18/2016 
// Design Name: 
// Module Name:    MidRegister 
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
module MidRegister(result, data, CLK
    );
	 // ÖÐ¼ä¼Ä´æÆ÷
	 input [31:0] data;
	 input CLK;
	 output reg [31:0] result;
	 always @ (posedge CLK) begin
	     result = data;
	 end


endmodule

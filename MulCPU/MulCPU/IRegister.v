`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:30:29 05/18/2016 
// Design Name: 
// Module Name:    IRegister 
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
module IRegister(result, data, IRWre, CLK
    );
	 input [31:0] data;
	 input CLK, IRWre;
	 output reg [31:0] result;
	 always @ (posedge CLK) begin
	     if (IRWre == 1) result = data;
	 end


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:02:20 05/18/2016 
// Design Name: 
// Module Name:    DRegister 
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
module DRegister(result, data, RST, CLK
    );
	 input [2:0] data, RST;
	 input CLK;
	 output reg [2:0] result;
	 integer i;
	 
	 initial begin
	     i = 0;
		  //result = RST;
	 end 
	 always @ (posedge CLK) begin
	     if (i == 0) begin
		      result = RST;
				i = 10;
		  end else begin
		      result = data;
		  end
	 end


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:22:33 05/11/2016 
// Design Name: 
// Module Name:    PC 
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
module PC(result, PCWre, PCnext, CLK, Reset
    );
	 input PCWre, CLK;
	 input [31:0] PCnext, Reset;
	 output reg [31:0] result;
	 integer i;
	 
	 initial begin
	     i = 0;
		  //result = Reset;
	 end 
	 
	 always @(negedge CLK) begin
	       if (i == 0) begin 
			      result = Reset;    //  初始化PC的地址，地址为Reset
					i = 10;
			 end else begin
			        if (PCWre != 0) result = PCnext;
					  else result = result;
			 end			 
	 end

endmodule

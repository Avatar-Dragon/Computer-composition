`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:46:39 04/22/2016
// Design Name:   Shift
// Module Name:   E:/XILINX/project/CPU/Shift_text.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Shift
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Shift_text;

	// Inputs
	reg [31:0] Data;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	Shift uut (
		.Data(Data), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		Data = 0;

		// Wait 100 ns for global reset to finish
		#100;
      Data = 1;
		
		#100
		Data = 3;
		
		#100
		Data = 6;
		// Add stimulus here

	end
      
endmodule


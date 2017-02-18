`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:00:53 04/22/2016
// Design Name:   DataSelect
// Module Name:   E:/XILINX/project/CPU/Data_text.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataSelect
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Data_text;

	// Inputs
	reg Sign;
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	DataSelect uut (
		.result(result), 
		.Sign(Sign), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		Sign = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
      Sign = 0;
		A = 2;
		B = 3;
		
		#100;
      Sign = 1;
		A = 2;
		B = 3;
		// Add stimulus here

	end
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:02:22 04/21/2016
// Design Name:   ALU
// Module Name:   E:/XILINX/project/CPU/ALU_Text.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Text;

	// Inputs
	reg [2:0] ALUOp;
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] result;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALUOp(ALUOp), 
		.A(A), 
		.B(B), 
		.result(result), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
      ALUOp = 0;
		A = 10;
		B = 20;
		
		#100;
      ALUOp = 1;
		A = 9;
		B = 6;
		
		#100;
		$stop;
		
		// Add stimulus here

	end
      
endmodule


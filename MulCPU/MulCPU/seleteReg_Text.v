`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:52:15 05/22/2016
// Design Name:   SeleteWriReg
// Module Name:   E:/XILINX/project/MulCPU/seleteReg_Text.v
// Project Name:  MulCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SeleteWriReg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seleteReg_Text;

	// Inputs
	reg [4:0] rt;
	reg [4:0] rd;
	reg [1:0] Regout;

	// Outputs
	wire [4:0] result;

	// Instantiate the Unit Under Test (UUT)
	SeleteWriReg uut (
		.result(result), 
		.rt(rt), 
		.rd(rd), 
		.Regout(Regout)
	);

	initial begin
		// Initialize Inputs
		rt = 5'b00000;
		rd = 5'b00000;
		Regout = 2'b00;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rt = 5'b00000;
		rd = 5'b00000;
		Regout = 2'b01;
		
		#100;
        
		// Add stimulus here
		rt = 5'b00000;
		rd = 5'b00001;
		Regout = 2'b10;
		
		#100;
        
		// Add stimulus here
		rt = 5'b00000;
		rd = 5'b00001;
		Regout = 2'b11;


	end
      
endmodule


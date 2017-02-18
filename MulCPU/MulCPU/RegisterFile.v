`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:20 05/11/2016 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile(ReadData1, ReadData2, RegWre, CLK,
                    Rs, Rt, Rd, WriteData
    );
	 input RegWre, CLK;
	 input [4:0] Rs, Rt, Rd;
	 inout [31:0] WriteData;
	 output [31:0] ReadData1, ReadData2;
	 reg [31:0] register[1:31];  // 31¸ö¼Ä´æÆ÷
	 integer i;
	 initial begin
	    for (i = 1; i < 32; i = i + 1)
				register[i] <= 0;
	 end
	 
	 // 0ºÅ¼Ä´æÆ÷Ö±½ÓÊä³ö0
	 assign ReadData1 = (Rs == 0)? 0:register[Rs];  //read
	 assign ReadData2 = (Rt == 0)? 0:register[Rt];  //read
	 always @(negedge CLK) begin
			   if ( (Rd != 0) && (RegWre == 1) ) // write
					register[Rd] <= WriteData;
				//$display("WriteData = %d", WriteData);
	 end

endmodule

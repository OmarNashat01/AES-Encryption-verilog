`timescale 1 ps / 1 ps
module AES_tb();


reg clk;
reg reset;
reg we;
reg[7:0] Indata;

reg[4:0] counter;
wire[127:0] out;

AES encreptor(
					.reset(reset),
					.clk(clk),
					.we(we),
					.Indata(Indata),
					.out(out)
					
					);
									

initial begin
	$monitor("%h", out);
	clk = 1;
	reset = 1;
	we = 0;

	counter <= 0;
	#20 reset = 0;
	#10 we = 1;

	
	// Input data
	#10 Indata = 8'h00;
	#10 Indata = 8'h11;
	#10 Indata = 8'h22;
	#10 Indata = 8'h33;
	#10 Indata = 8'h44;
	#10 Indata = 8'h55;
	#10 Indata = 8'h66;
	#10 Indata = 8'h77;
	#10 Indata = 8'h88;
	#10 Indata = 8'h99;
	#10 Indata = 8'haa;
	#10 Indata = 8'hbb;
	#10 Indata = 8'hcc;
	#10 Indata = 8'hdd;
	#10 Indata = 8'hee;
	#10 Indata = 8'hff;


	// Input keysize in bytes
	#10 Indata = 8'h10;
	

	// Input key
	#10 Indata = 8'h00;
	#10 Indata = 8'h01;
	#10 Indata = 8'h02;
	#10 Indata = 8'h03;
	#10 Indata = 8'h04;
	#10 Indata = 8'h05;
	#10 Indata = 8'h06;
	#10 Indata = 8'h07;
	#10 Indata = 8'h08;
	#10 Indata = 8'h09;
	#10 Indata = 8'h0a;
	#10 Indata = 8'h0b;
	#10 Indata = 8'h0c;
	#10 Indata = 8'h0d;
	#10 Indata = 8'h0e;
	#10 Indata = 8'h0f;
	
	
	//Input required process.
	#10 Indata = 8'h01;
	
	
	
	#200;
	$finish;
//	
//	$display("Input = %h, Key = %h, XOR = %h, out = %h",
//               Indata, Key, Indata^Key, out);
	
//		
//	#10
//	
//	$display("Input = %h, Key = %h, XOR = %h, out = %h",
//               Indata, Key, Indata^Key, out);
//					
//					
//						
//	#10
//	
//	$display("Input = %h, Key = %h, XOR = %h, out = %h",
//               Indata, Key, Indata^Key, out);
	
end

always begin
	#5 clk = ~clk;
end

endmodule

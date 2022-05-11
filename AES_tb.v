module AES_tb();


reg 	clk;

reg[127:0] Indata;
reg[127:0] Key;
wire[127:0] out;
reg key;

AES encreptor(
					.KeySize(key),

					.Indata(Indata),
					.Key128(Key),
					.out128(out)
					
					);
									

initial begin
	
	clk = 0;
	
	Indata = 	128'h00112233445566778899aabbccddeeff;
	Key	 = 	128'h000102030405060708090a0b0c0d0e0f;
	
	#20
	
	$display("Input = %h, Key = %h, XOR = %h, out = %h",
               Indata, Key, Indata^Key, out);
	
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
	#10 clk = ~clk;
end

endmodule

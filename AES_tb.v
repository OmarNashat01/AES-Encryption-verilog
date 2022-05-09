module AES_tb();


reg 	clk;

reg[127:0] Indata;
reg[127:0] Key;
wire[127:0] out;
reg key;

//AES encreptor(
//					.KeySize(key),
//					.clk(clk),
//
//					.Indata(Indata),
//					.Key128(Key),
//					.out(out)
//					
//					);
					
Sboxall sbox(.sc(clk), .Indata(Indata), .data(out));					

initial begin

	
	#10 Indata = 	128'h3243f6a8885a308d313198a2e0370734;
	#10 Key	 = 	128'h2b7e151628aed2a6abf7158809cf4f3c;
	
	#100
	
	$display("Input = %h, Key = %h, out = %h",
               Indata, Key, out);
	
end

always begin
	#10 clk = ~clk;
end

endmodule

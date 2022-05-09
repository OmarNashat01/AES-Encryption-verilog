module AES(
				input wire	KeySize,
				input wire	clk,
				
				input wire[127:0] Indata,
				input wire[127:0] Key128,
				input wire[191:0] Key192,
				input wire[255:0] Key256,

				output wire[127:0] out
			);
				

				
wire[127:0] data = Indata ^ Key128;
wire[127:0] data2;

reg Sboxen = 1'b0;
reg shiftrowsen = 1'b0;
reg mixcolumnsen = 1'b0;
reg Addrndkeyen = 1'b0;



integer i;

assign out = data2;

Sboxall sbox(.sc(Sboxen), .Indata(data), .data(data2));

								 
initial begin
////	for (i = 0; i <  loops; i = i + 1)  
////	begin
////
////
////	end
//
//	
		Sboxen = ~Sboxen;
		
		#10 
		
		Sboxen = ~Sboxen;
		
//
//
//
//
end

// Assign Output of your current step here to see it in tb








endmodule



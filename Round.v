module Round(

					input wire[127:0] Keyin,
					input wire[127:0] Indata,
					
					output[127:0] Keyout,
					output[127:0] data
					
					);


wire[127:0] sboxdata;
					
Sboxall sbox0(.Indata(Indata), .data(sboxdata));
ShiftRows sr(.Indata(sboxdata), .data(data));

endmodule 
module AES(
				input wire	KeySize,
				input wire	clk,
				
				input wire[127:0] Indata,
				input wire[127:0] Key128,
				input wire[191:0] Key192,
				input wire[255:0] Key256,

				output wire[127:0] out128,
				output wire[127:0] out192,
				output wire[127:0] out256
				
			);
				

				
wire[127:0] data0 = Indata ^ Key128;
wire[127:0] data1;
wire[127:0] data2;

reg Sboxen = 1'b0;
reg shiftrowsen = 1'b0;
reg mixcolumnsen = 1'b0;
reg Addrndkeyen = 1'b0;



integer i;

assign out128 = data2;


Sboxall sbox0(.sc(clk), .Indata(data0), .data(data1));

Sboxall sbox1(.sc(clk), .Indata(data1), .data(data2));


//integer loops = ( KeySize == 128 ) ? 9:
//					 ( KeySize == 192 ) ? 11:
//					 ( KeySize == 256 ) ? 13:
//												  1;
					 


// Assign Output of your current step here to see it in tb





endmodule



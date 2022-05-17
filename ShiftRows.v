module ShiftRows(
					input wire[127:0] Indata,
					output reg[127:0] data
					);
						

always @(Indata)
begin

	data[127:120] <= Indata[127:120];  
	data[119:112] <= Indata[87:80];
	data[111:104] <= Indata[47:40];
	data[103:96] <= Indata[7:0];
			
	data[95:88] <= Indata[95:88];
	data[87:80] <= Indata[55:48];
	data[79:72] <= Indata[15:8];
	data[71:64] <= Indata[103:96];

	data[63:56] <= Indata[63:56];
	data[55:48] <= Indata[23:16];
	data[47:40] <= Indata[111:104];
	data[39:32] <= Indata[71:64];

	data[31:24] <= Indata[31:24];
	data[23:16] <= Indata[119:112];
	data[15:8] <= Indata[79:72];
	data[7:0] <= Indata[39:32]; 

end


endmodule

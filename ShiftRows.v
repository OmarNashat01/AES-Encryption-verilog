//THE CODE ASSUMES THAT THE INPUT IS COLUMN MAJOR

module ShiftRows( 
						input wire[127:0] Indata,
						output[127:0] data
						);
						

assign data[127:120] = Indata[127:120];  
assign data[119:112] = Indata[87:80];
assign data[111:104] = Indata[47:40];
assign data[103:96] = Indata[7:0];
   
assign data[95:88] = Indata[95:88];
assign data[87:80] = Indata[55:48];
assign data[79:72] = Indata[15:8];
assign data[71:64] = Indata[103:96];
   
assign data[63:56] = Indata[63:56];
assign data[55:48] = Indata[23:16];
assign data[47:40] = Indata[111:104];
assign data[39:32] = Indata[71:64];
   
assign data[31:24] = Indata[31:24];
assign data[23:16] = Indata[119:112];
assign data[15:8] = Indata[79:72];
assign data[7:0] = Indata[39:32]; 


endmodule


/*
d4e0b81e27bfb44111985d52aef1e530
*/

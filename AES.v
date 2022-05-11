module AES(
				input wire	KeySize,
				
				input wire[127:0] Indata,
				input wire[127:0] Key128,
				input wire[191:0] Key192,
				input wire[255:0] Key256,

				output wire[127:0] out128,
				output wire[127:0] out192,
				output wire[127:0] out256
				
			);
				

				

wire[127:0] data1 = Indata ^ Key128;
wire[127:0] data2;
wire[127:0] data3;
wire[127:0] data4;
wire[127:0] data5;
wire[127:0] data6;
wire[127:0] data7;
wire[127:0] data8;
wire[127:0] data9;

wire[127:0] data10;
wire[127:0] data11;

wire[127:0] data12;
wire[127:0] data13;








assign out128 = data2;




Round round1(.Indata(data1), .data(data2));
Round round2(.Indata(data2), .data(data3));
Round round3(.Indata(data3), .data(data4));
Round round4(.Indata(data4), .data(data5));
Round round5(.Indata(data5), .data(data6));
Round round6(.Indata(data6), .data(data7));
Round round7(.Indata(data7), .data(data8));
Round round8(.Indata(data8), .data(data9));
Round round9(.Indata(data9), .data(data10));




Round round10(.Indata(data10), .data(data11));
Round round11(.Indata(data11), .data(data12));





endmodule



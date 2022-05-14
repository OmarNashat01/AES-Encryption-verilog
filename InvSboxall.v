module InvSboxall(input wire[31:0] Indata, output[31:0] data);


InvSbox Isbox0(.byte(Indata[7:0]), .Sbyte(data[7:0]));
InvSbox Isbox1(.byte(Indata[15:8]), .Sbyte(data[15:8]));
InvSbox Isbox2(.byte(Indata[23:16]), .Sbyte(data[23:16]));
InvSbox Isbox3(.byte(Indata[31:24]), .Sbyte(data[31:24]));


endmodule

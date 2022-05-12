module Sboxall(input wire[31:0] Indata, output[31:0] data);


Sbox sbox0(.byte(Indata[7:0]), .Sbyte(data[7:0]));
Sbox sbox1(.byte(Indata[15:8]), .Sbyte(data[15:8]));
Sbox sbox2(.byte(Indata[23:16]), .Sbyte(data[23:16]));
Sbox sbox3(.byte(Indata[31:24]), .Sbyte(data[31:24]));


endmodule

module Sboxall(input wire sc, input wire[127:0] Indata, output[127:0] data);


Sbox sbox0(.sc(sc), .byte(Indata[7:0]), .Sbyte(data[7:0]));
Sbox sbox1(.sc(sc), .byte(Indata[15:8]), .Sbyte(data[15:8]));
Sbox sbox2(.sc(sc), .byte(Indata[23:16]), .Sbyte(data[23:16]));
Sbox sbox3(.sc(sc), .byte(Indata[31:24]), .Sbyte(data[31:24]));
Sbox sbox4(.sc(sc), .byte(Indata[39:32]), .Sbyte(data[39:32]));
Sbox sbox5(.sc(sc), .byte(Indata[47:40]), .Sbyte(data[47:40]));
Sbox sbox6(.sc(sc), .byte(Indata[55:48]), .Sbyte(data[55:48]));
Sbox sbox7(.sc(sc), .byte(Indata[63:56]), .Sbyte(data[63:56]));
Sbox sbox8(.sc(sc), .byte(Indata[71:64]), .Sbyte(data[71:64]));
Sbox sbox9(.sc(sc), .byte(Indata[79:72]), .Sbyte(data[79:72]));
Sbox sbox10(.sc(sc), .byte(Indata[87:80]), .Sbyte(data[87:80]));
Sbox sbox11(.sc(sc), .byte(Indata[95:88]), .Sbyte(data[95:88]));
Sbox sbox12(.sc(sc), .byte(Indata[103:96]), .Sbyte(data[103:96]));
Sbox sbox13(.sc(sc), .byte(Indata[111:104]), .Sbyte(data[111:104]));
Sbox sbox14(.sc(sc), .byte(Indata[119:112]), .Sbyte(data[119:112]));
Sbox sbox15(.sc(sc), .byte(Indata[127:120]), .Sbyte(data[127:120]));


endmodule
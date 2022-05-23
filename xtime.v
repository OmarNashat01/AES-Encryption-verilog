module xtime(input[7:0] in,  output reg [7:0] out);
//assign anded = (shifted & 8'h40 );

always @(*)
begin
if(in[7]==1)
out= (in<<1)^ (8'h1b) ;
else begin

out<= (in<<1);
end
//
//out = in<<2; //57 is 0101_0111
end 

endmodule	
 

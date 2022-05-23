module multiplyy(input[7:0] in,  output reg [7:0] out);
//assign anded = (shifted & 8'h40 );
reg [7:0] temp =8'h00;
reg [7:0] temp2=8'h00;
integer i,j;
always @(*)
begin
for(i=0;i<8;i=i+1)begin
    temp= (in[i] *(2**i)) ^temp;
end

temp2=temp;

for(j=temp; j>1; j=j/2)
begin
 
 xtime x1 (
		.in(temp), 
		.out(temp) );

end

if(temp[0]==1)begin
    temp=temp^temp2;
end

out =temp;


end
//
//out = in<<2; //57 is 0101_0111


endmodule
 

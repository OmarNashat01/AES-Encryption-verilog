module AES(
				input wire	KeySize
				input wire	clk,
				
				input wire[127:0] Indata,
				input wire[127:0] Key128,
				input wire[127:0] Key192,
				input wire[127:0] Key256,

				output wire[127:0] out
			);
				

				
wire[127:0] preround = Indata ^ Key128;


				
/* wire[7:0] a0 = preround[7:0]; */
/* wire[7:0] a1 = preround[15:8]; */
/* wire[7:0] a2 = preround[23:16]; */
/* wire[7:0] a3 = preround[31:24]; */
/* wire[7:0] a4 = preround[39:32]; */
/* wire[7:0] a5 = preround[47:40]; */
/* wire[7:0] a6 = preround[55:48]; */
/* wire[7:0] a7 = preround[63:56]; */
/* wire[7:0] a8 = preround[71:64]; */
/* wire[7:0] a9 = preround[79:72]; */
/* wire[7:0] a10 = preround[87:80]; */
/* wire[7:0] a11 = preround[95:88]; */
/* wire[7:0] a12 = preround[103:96]; */
/* wire[7:0] a13 = preround[111:104]; */
/* wire[7:0] a14 = preround[119:112]; */
/* wire[7:0] a15 = preround[127:120]; */


/* reg[31:0] Row0 = {a0,a1,a2,a3}; */
/* reg[31:0] Row1 = {a4,a5,a6,a7}; */
/* reg[31:0] Row2 = {a8,a9,a10,a11}; */
/* reg[31:0] Row3 = {a12,a13,a14,a15}; */

/* reg[31:0] col0 = {a0,a4,a8,a12}; */
/* reg[31:0] col1 = {a1,a5,a9,a13}; */
/* reg[31:0] col2 = {a2,a6,a10,a14}; */
/* reg[31:0] col3 = {a3,a7,a11,a15}; */

integer i;
integer loops = ( KeySize == 128 ) ? 9:
				( KeySize == 192 ) ? 11:
				( KeySize == 256 ) ? 13:
									 0;
initial begin
	for (i = 0; i <  loops; i = i + 1)  
	begin

	end







// Assign Output of your current step here to see it in tb
assign out = preround;







endmodule



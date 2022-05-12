module AES(
				input reset,
				input clk,
				input we,
				input [7:0] Indata,
				output wire[127:0] out
			);
				

				

reg [127:0] data;
reg [256:0] key;


reg [4:0] state;
reg [4:0] state_next;


localparam idle = 5'd0;
localparam readData = 5'd1;
localparam readKeySize = 5'd2;
localparam readKeyData = 5'd3;
localparam keyExpansion = 5'd4;



reg [5:0] counter;
reg [5:0] keybytes;

wire [3:0] Nk = keybytes/4;

always @(posedge clk, posedge reset) begin
	if (reset)
		state <= idle;
	else
		state <= state_next;
end




always @(state, counter, we) begin

	case (state)

		idle:
			if (we) begin
				state_next <= readData;
				counter <= 0;
			end
			else
				state_next <= idle;

		readData: begin
			data <= {Indata, data[127:8]};
			counter <= counter + 1; 
			
			if (counter < 16)
				state_next <= readData;
			else begin
				state_next <= readKeySize;
			end
		end

		readKeySize: begin
			keybytes <= data[5:0];
			state_next <= readKeyData;
			counter <= 0;
		end

		readKeyData: begin
			key <= {Indata, key[255:8]};
			counter <= counter + 1;

			if (counter < keybytes)
				state_next <= readKeyData;
			else
				state_next <= keyExpansion;
		end



		
	endcase
end





assign out = data;







endmodule

/* [7:0], */
/* [15:8] */
/* [23:16] */
/* [31:24] */
/* [39:32] */
/* [47:40] */
/* [55:48] */
/* [63:56] */
/* [71:64] */
/* [79:72] */
/* [87:80] */
/* [95:88] */
/* [103:96] */
/* [111:104] */
/* [119:112] */
/* [127:120] */




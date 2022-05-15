module AES(
				input reset,
				input clk,
				input we,
				input [7:0] Indata,
				output wire[127:0] out
			);
				

reg [127:0] state;
reg [127:0] tmp;

reg keyExpansionen;
reg subBytesen;
reg shiftRowsen;
reg mixColumnsen;

wire [127:0] keyExpansion;
wire [127:0] subBytes;
wire [127:0] shiftRows;
wire [127:0] mixColumns;
wire [127:0] tmpwire;


assign tmpwire = tmp;


assign keyExpansion = state;
assign subBytes = state;
assign shiftRows = state;
assign mixColumns = state;




Sboxall sboxall(.sc(subBytesen), .Indata(subBytes), .data(tmpwire));
ShiftRows shiftrowsall(.sc(shiftRowsen), .Indata(shiftRows), .data(tmpwire));




reg [256:0] key;


reg [4:0] state_current;
reg [4:0] state_next;


// States
localparam idle = 5'd0;
localparam readData = 5'd1;
localparam readKeySize = 5'd2;
localparam readKeyData = 5'd3;
localparam readReqProcess = 5'd4;

localparam startEncryption = 5'd5;
localparam SubBytesOp = 5'd6;
localparam ShiftRowsOp = 5'd7;
localparam MixColumnsOp = 5'd8;
localparam KeyExpansionOp = 5'd9;
	

localparam startDecryption = 5'd10;

// TODO: Add required states.


localparam outputData = 5'd10;


reg [3:0] rounds;
reg [6:0] counter;
reg [6:0] keybytes;


wire [3:0] Nk = keybytes/4;


reg en;


// Initialize our states
initial begin

	state_current <= idle;
	state_next <= idle;

end

// Update our current state to next state or idle incase of reset
always @(posedge clk, posedge reset) begin
	if (reset) begin
		state_current <= idle;
		en = 0;
	end
	else begin
		state_current <= state_next;
		en = ~en;
	end
end




// States flow 
always @(state_current, we, en) begin

	case (state_current)

		// if we == 1 and current state is idle it means data is ready
		// to be entered to the system.
		idle:
			if (we) begin
				state_next <= readData;
				counter <= 0;
				state <= 128'h99_99_99_99_99_99_99_99_99_99_99_99_99_99_99_99_99;
				key <= 256'h0;
			end
			else
				state_next <= idle;

		/// ###################### Start of input stage ##################
		// start reading data serially byte by byte into a shift register.
		readData: begin
			state <= {state[119:0], Indata};
			counter <= counter + 1;
			
			if (counter < 14)
				state_next <= readData;
			else
				state_next <= readKeySize;
		end

		// take from user the key size in bytes.
		readKeySize: begin
			keybytes <= Indata[6:0];
			state_next <= readKeyData;
			counter <= 0;
		end

		// start entering key into a shift register.
		readKeyData: begin
			key <= {key[247:0], Indata};
			counter <= counter + 1;

			if (counter < keybytes)
				state_next <= readKeyData;
			else begin
			// prob wrong
				if (keybytes == 16)
					key <= {128'd0, key[127:0]};
				if (keybytes == 24)
					key <= {64'd0, key[255:64]};
				state_next <= readReqProcess;
				rounds <= 0;
			end
		end

		// Read required process 1 for encryption, 0 for decryption.
		readReqProcess: begin
			if (Indata[0])
				state_next <= startEncryption;
			else
				state_next <= startDecryption;

		end
		/// ###################### End of input stage ##################

		/// ###################### Start of encryption ##################
		startEncryption: begin
			// TODO: start the encryption process with key expansion.
			state <= state ^ key[127:0];

			subBytesen = 0;
			shiftRowsen = 0;
			mixColumnsen = 0;
			keyExpansionen = 0;

			state_next <= SubBytesOp;
		end

		SubBytesOp: begin
			subBytesen = ~subBytesen;
			state <= tmp;

			state_next <= ShiftRowsOp;

		end

		ShiftRowsOp: begin
			shiftRowsen = ~shiftRowsen;
			state <= tmp;

			state_next <= MixColumnsOp;
		end
		
		MixColumnsOp: begin
			state_next <= MixColumnsOp;
		end


		/// ###################### End of encryption ##################

		
		/// ###################### Start of decryption ##################
		startDecryption: begin

		end
		/// ###################### End of decryption ##################
		

		/// ###################### Start of output ##################
		outputData: begin

		end
		/// ###################### End of output ##################

		default: 
			state_next <= idle;

		
	endcase
end


assign out = state;


endmodule

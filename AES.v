module AES(
				input reset,
				input clk,
				input we,
				input [7:0] Indata,
				output wire[127:0] out
			);
				

reg [127:0] state;



wire [127:0] keyExpansion;
wire [127:0] subBytes;
wire [127:0] shiftRows;
wire [127:0] mixColumns;
wire [127:0] tmpwire;








reg [256:0] key;


reg [4:0] state_current;
reg [4:0] state_next;


// States
localparam idle = 5'd0;
localparam readData0 = 5'd1;
localparam readData1 = 5'd2;
localparam readKeySize = 5'd3;
localparam readKeyData0 = 5'd4;
localparam readKeyData1 = 5'd5;
localparam readReqProcess = 5'd6;

localparam startEncryption = 5'd7;
localparam SubBytesOp = 5'd8;
localparam ShiftRowsOp = 5'd9;
localparam MixColumnsOp = 5'd10;
localparam KeyExpansionOp = 5'd11;
	

localparam startDecryption = 5'd12;

// TODO: Add required states.


localparam outputData = 5'd10;


reg [3:0] rounds;
reg [6:0] counter;
reg [6:0] keybytes;


wire [3:0] Nk = keybytes/4;



Sboxall sboxall(.Indata(state), .data(subBytes));
ShiftRows shiftrowsall(.Indata(state), .data(shiftRows));
mixColumns mixcolumnsall(.a(state), .mcl(mixColumns));
keyExpansion keyExpansionall(.rc(counter[3:0]), .key(key[255:128]), .keyout(keyExpansion));


// Update our current state to next state or idle incase of reset
always @(posedge clk, posedge reset)
	if (reset)
		state_current <= idle;
	else
		state_current <= state_next;


always @(posedge clk, posedge reset)
	if (reset)
		counter = 0;
	else begin
		case(state_current)
			readData0:
				counter = counter + 1;
			
			readData1:
				counter = counter + 1;
			
			readKeyData0:
				counter = counter + 1;
				
			readKeyData1:
				counter = counter + 1;
				
			startEncryption:
				counter = counter + 1;
			default: 
				counter = 0;
		endcase
	end

		



// States flow 
always @(state_current, we) begin

	case (state_current)

		// if we == 1 and current state is idle it means data is ready
		// to be entered to the system.
		idle:
			if (we) begin
				state_next <= readData0;
				state <= 128'h99_99_99_99_99_99_99_99_99_99_99_99_99_99_99_99_99;
				key <= 256'h0;
			end
			else
				state_next <= idle;

		/// ###################### Start of input stage ##################
		// start reading data serially byte by byte into a shift register.
		readData0: begin
			state <= {state[119:0], Indata};
			
			if (counter < 15)
				state_next <= readData1;
			else
				state_next <= readKeySize;
		end
		
		readData1: begin
			state <= {state[119:0], Indata};
			
			if (counter < 15)
				state_next <= readData0;
			else
				state_next <= readKeySize;
		end

		// take from user the key size in bytes.
		readKeySize: begin
			keybytes <= Indata[6:0];
			state_next <= readKeyData0;
		end

		// start entering key into a shift register.
		readKeyData0: begin
			key <= {key[247:0], Indata};

			if (counter < keybytes)
				state_next <= readKeyData1;
			else begin
				if (keybytes == 16)
					key <= {key[127:0], 128'd0};
				if (keybytes == 24)
					key <= {key[255:64], 64'd0};
				state_next <= readReqProcess;
				rounds <= 0;
			end
		end

		readKeyData1: begin
			key <= {key[247:0], Indata};

			if (counter < keybytes)
				state_next <= readKeyData0;
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
			state <= state ^ key[255:128];

			state_next <= SubBytesOp;
		end

		SubBytesOp: begin
			state <= subBytes;

			state_next <= ShiftRowsOp;

		end

		ShiftRowsOp: begin
			state <= shiftRows;

			state_next <= MixColumnsOp;
		end
		
		MixColumnsOp: begin
			state <= mixColumns;
			state_next <= KeyExpansionOp;
		end
		
		KeyExpansionOp: begin
			key[255:128] <= keyExpansion;
			state_next <= startEncryption;
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

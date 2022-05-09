module Sbox(input sc, input byte, output reg Sbyte);


// sc ==> start conversion
// start conversion once sc is changed
always @(sc)
begin
    case (sc)
		8'h00: Sbyte= 8'h63;
		8'h01: Sbyte= 8'h7c;
		8'h02: Sbyte= 8'h77;
		8'h03: Sbyte= 8'h7b;
		8'h04: Sbyte= 8'hf2;
		8'h05: Sbyte= 8'h6b;
		8'h06: Sbyte= 8'h6f;
		8'h07: Sbyte= 8'hc5;
		8'h08: Sbyte= 8'h30;
		8'h09: Sbyte= 8'h01;
		8'h0a: Sbyte= 8'h67;
		8'h0b: Sbyte= 8'h2b;
		8'h0c: Sbyte= 8'hfe;
		8'h0d: Sbyte= 8'hd7;
		8'h0e: Sbyte= 8'hab;
		8'h0f: Sbyte= 8'h76;
		8'h10: Sbyte= 8'hca;
		8'h11: Sbyte= 8'h82;
		8'h12: Sbyte= 8'hc9;
		8'h13: Sbyte= 8'h7d;
		8'h14: Sbyte= 8'hfa;
		8'h15: Sbyte= 8'h59;
		8'h16: Sbyte= 8'h47;
		8'h17: Sbyte= 8'hf0;
		8'h18: Sbyte= 8'had;
		8'h19: Sbyte= 8'hd4;
		8'h1a: Sbyte= 8'ha2;
		8'h1b: Sbyte= 8'haf;
		8'h1c: Sbyte= 8'h9c;
		8'h1d: Sbyte= 8'ha4;
		8'h1e: Sbyte= 8'h72;
		8'h1f: Sbyte= 8'hc0;
		8'h20: Sbyte= 8'hb7;
		8'h21: Sbyte= 8'hfd;
		8'h22: Sbyte= 8'h93;
		8'h23: Sbyte= 8'h26;
		8'h24: Sbyte= 8'h36;
		8'h25: Sbyte= 8'h3f;
		8'h26: Sbyte= 8'hf7;
		8'h27: Sbyte= 8'hcc;
		8'h28: Sbyte= 8'h34;
		8'h29: Sbyte= 8'ha5;
		8'h2a: Sbyte= 8'he5;
		8'h2b: Sbyte= 8'hf1;
		8'h2c: Sbyte= 8'h71;
		8'h2d: Sbyte= 8'hd8;
		8'h2e: Sbyte= 8'h31;
		8'h2f: Sbyte= 8'h15;
		8'h30: Sbyte= 8'h04;
		8'h31: Sbyte= 8'hc7;
		8'h32: Sbyte= 8'h23;
		8'h33: Sbyte= 8'hc3;
		8'h34: Sbyte= 8'h18;
		8'h35: Sbyte= 8'h96;
		8'h36: Sbyte= 8'h05;
		8'h37: Sbyte= 8'h9a;
		8'h38: Sbyte= 8'h07;
		8'h39: Sbyte= 8'h12;
		8'h3a: Sbyte= 8'h80;
		8'h3b: Sbyte= 8'he2;
		8'h3c: Sbyte= 8'heb;
		8'h3d: Sbyte= 8'h27;
		8'h3e: Sbyte= 8'hb2;
		8'h3f: Sbyte= 8'h75;
		8'h40: Sbyte= 8'h09;
		8'h41: Sbyte= 8'h83;
		8'h42: Sbyte= 8'h2c;
		8'h43: Sbyte= 8'h1a;
		8'h44: Sbyte= 8'h1b;
		8'h45: Sbyte= 8'h6e;
		8'h46: Sbyte= 8'h5a;
		8'h47: Sbyte= 8'ha0;
		8'h48: Sbyte= 8'h52;
		8'h49: Sbyte= 8'h3b;
		8'h4a: Sbyte= 8'hd6;
		8'h4b: Sbyte= 8'hb3;
		8'h4c: Sbyte= 8'h29;
		8'h4d: Sbyte= 8'he3;
		8'h4e: Sbyte= 8'h2f;
		8'h4f: Sbyte= 8'h84;
		8'h50: Sbyte= 8'h53;
		8'h51: Sbyte= 8'hd1;
		8'h52: Sbyte= 8'h00;
		8'h53: Sbyte= 8'hed;
		8'h54: Sbyte= 8'h20;
		8'h55: Sbyte= 8'hfc;
		8'h56: Sbyte= 8'hb1;
		8'h57: Sbyte= 8'h5b;
		8'h58: Sbyte= 8'h6a;
		8'h59: Sbyte= 8'hcb;
		8'h5a: Sbyte= 8'hbe;
		8'h5b: Sbyte= 8'h39;
		8'h5c: Sbyte= 8'h4a;
		8'h5d: Sbyte= 8'h4c;
		8'h5e: Sbyte= 8'h58;
		8'h5f: Sbyte= 8'hcf;
		8'h60: Sbyte= 8'hd0;
		8'h61: Sbyte= 8'hef;
		8'h62: Sbyte= 8'haa;
		8'h63: Sbyte= 8'hfb;
		8'h64: Sbyte= 8'h43;
		8'h65: Sbyte= 8'h4d;
		8'h66: Sbyte= 8'h33;
		8'h67: Sbyte= 8'h85;
		8'h68: Sbyte= 8'h45;
		8'h69: Sbyte= 8'hf9;
		8'h6a: Sbyte= 8'h02;
		8'h6b: Sbyte= 8'h7f;
		8'h6c: Sbyte= 8'h50;
		8'h6d: Sbyte= 8'h3c;
		8'h6e: Sbyte= 8'h9f;
		8'h6f: Sbyte= 8'ha8;
		8'h70: Sbyte= 8'h51;
		8'h71: Sbyte= 8'ha3;
		8'h72: Sbyte= 8'h40;
		8'h73: Sbyte= 8'h8f;
		8'h74: Sbyte= 8'h92;
		8'h75: Sbyte= 8'h9d;
		8'h76: Sbyte= 8'h38;
		8'h77: Sbyte= 8'hf5;
		8'h78: Sbyte= 8'hbc;
		8'h79: Sbyte= 8'hb6;
		8'h7a: Sbyte= 8'hda;
		8'h7b: Sbyte= 8'h21;
		8'h7c: Sbyte= 8'h10;
		8'h7d: Sbyte= 8'hff;
		8'h7e: Sbyte= 8'hf3;
		8'h7f: Sbyte= 8'hd2;
		8'h80: Sbyte= 8'hcd;
		8'h81: Sbyte= 8'h0c;
		8'h82: Sbyte= 8'h13;
		8'h83: Sbyte= 8'hec;
		8'h84: Sbyte= 8'h5f;
		8'h85: Sbyte= 8'h97;
		8'h86: Sbyte= 8'h44;
		8'h87: Sbyte= 8'h17;
		8'h88: Sbyte= 8'hc4;
		8'h89: Sbyte= 8'ha7;
		8'h8a: Sbyte= 8'h7e;
		8'h8b: Sbyte= 8'h3d;
		8'h8c: Sbyte= 8'h64;
		8'h8d: Sbyte= 8'h5d;
		8'h8e: Sbyte= 8'h19;
		8'h8f: Sbyte= 8'h73;
		8'h90: Sbyte= 8'h60;
		8'h91: Sbyte= 8'h81;
		8'h92: Sbyte= 8'h4f;
		8'h93: Sbyte= 8'hdc;
		8'h94: Sbyte= 8'h22;
		8'h95: Sbyte= 8'h2a;
		8'h96: Sbyte= 8'h90;
		8'h97: Sbyte= 8'h88;
		8'h98: Sbyte= 8'h46;
		8'h99: Sbyte= 8'hee;
		8'h9a: Sbyte= 8'hb8;
		8'h9b: Sbyte= 8'h14;
		8'h9c: Sbyte= 8'hde;
		8'h9d: Sbyte= 8'h5e;
		8'h9e: Sbyte= 8'h0b;
		8'h9f: Sbyte= 8'hdb;
		8'ha0: Sbyte= 8'he0;
		8'ha1: Sbyte= 8'h32;
		8'ha2: Sbyte= 8'h3a;
		8'ha3: Sbyte= 8'h0a;
		8'ha4: Sbyte= 8'h49;
		8'ha5: Sbyte= 8'h06;
		8'ha6: Sbyte= 8'h24;
		8'ha7: Sbyte= 8'h5c;
		8'ha8: Sbyte= 8'hc2;
		8'ha9: Sbyte= 8'hd3;
		8'haa: Sbyte= 8'hac;
		8'hab: Sbyte= 8'h62;
		8'hac: Sbyte= 8'h91;
		8'had: Sbyte= 8'h95;
		8'hae: Sbyte= 8'he4;
		8'haf: Sbyte= 8'h79;
		8'hb0: Sbyte= 8'he7;
		8'hb1: Sbyte= 8'hc8;
		8'hb2: Sbyte= 8'h37;
		8'hb3: Sbyte= 8'h6d;
		8'hb4: Sbyte= 8'h8d;
		8'hb5: Sbyte= 8'hd5;
		8'hb6: Sbyte= 8'h4e;
		8'hb7: Sbyte= 8'ha9;
		8'hb8: Sbyte= 8'h6c;
		8'hb9: Sbyte= 8'h56;
		8'hba: Sbyte= 8'hf4;
		8'hbb: Sbyte= 8'hea;
		8'hbc: Sbyte= 8'h65;
		8'hbd: Sbyte= 8'h7a;
		8'hbe: Sbyte= 8'hae;
		8'hbf: Sbyte= 8'h08;
		8'hc0: Sbyte= 8'hba;
		8'hc1: Sbyte= 8'h78;
		8'hc2: Sbyte= 8'h25;
		8'hc3: Sbyte= 8'h2e;
		8'hc4: Sbyte= 8'h1c;
		8'hc5: Sbyte= 8'ha6;
		8'hc6: Sbyte= 8'hb4;
		8'hc7: Sbyte= 8'hc6;
		8'hc8: Sbyte= 8'he8;
		8'hc9: Sbyte= 8'hdd;
		8'hca: Sbyte= 8'h74;
		8'hcb: Sbyte= 8'h1f;
		8'hcc: Sbyte= 8'h4b;
		8'hcd: Sbyte= 8'hbd;
		8'hce: Sbyte= 8'h8b;
		8'hcf: Sbyte= 8'h8a;
		8'hd0: Sbyte= 8'h70;
		8'hd1: Sbyte= 8'h3e;
		8'hd2: Sbyte= 8'hb5;
		8'hd3: Sbyte= 8'h66;
		8'hd4: Sbyte= 8'h48;
		8'hd5: Sbyte= 8'h03;
		8'hd6: Sbyte= 8'hf6;
		8'hd7: Sbyte= 8'h0e;
		8'hd8: Sbyte= 8'h61;
		8'hd9: Sbyte= 8'h35;
		8'hda: Sbyte= 8'h57;
		8'hdb: Sbyte= 8'hb9;
		8'hdc: Sbyte= 8'h86;
		8'hdd: Sbyte= 8'hc1;
		8'hde: Sbyte= 8'h1d;
		8'hdf: Sbyte= 8'h9e;
		8'he0: Sbyte= 8'he1;
		8'he1: Sbyte= 8'hf8;
		8'he2: Sbyte= 8'h98;
		8'he3: Sbyte= 8'h11;
		8'he4: Sbyte= 8'h69;
		8'he5: Sbyte= 8'hd9;
		8'he6: Sbyte= 8'h8e;
		8'he7: Sbyte= 8'h94;
		8'he8: Sbyte= 8'h9b;
		8'he9: Sbyte= 8'h1e;
		8'hea: Sbyte= 8'h87;
		8'heb: Sbyte= 8'he9;
		8'hec: Sbyte= 8'hce;
		8'hed: Sbyte= 8'h55;
		8'hee: Sbyte= 8'h28;
		8'hef: Sbyte= 8'hdf;
		8'hf0: Sbyte= 8'h8c;
		8'hf1: Sbyte= 8'ha1;
		8'hf2: Sbyte= 8'h89;
		8'hf3: Sbyte= 8'h0d;
		8'hf4: Sbyte= 8'hbf;
		8'hf5: Sbyte= 8'he6;
		8'hf6: Sbyte= 8'h42;
		8'hf7: Sbyte= 8'h68;
		8'hf8: Sbyte= 8'h41;
		8'hf9: Sbyte= 8'h99;
		8'hfa: Sbyte= 8'h2d;
		8'hfb: Sbyte= 8'h0f;
		8'hfc: Sbyte= 8'hb0;
		8'hfd: Sbyte= 8'h54;
		8'hfe: Sbyte= 8'hbb;
		8'hff: Sbyte= 8'h16;
	endcase
end

endmodule
 

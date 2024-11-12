module ALU(input logic A, B,
	   input logic [2:0] opcode,
	   output logic out);
	
	always_comb begin
		case (opcode)
			3'b000: out = A + B;
			3'b001: out = A - B;
			3'b010: out = A & B;
			3'b011: out = A | B;
			3'b100: out = A ^ B;	
			3'b101: out = (A == B) ? 1'b1 : 1'b0;
			default: out = 1'b0;
		endcase
	end
endmodule 

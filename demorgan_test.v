`include "demorgan.v"

module demorgan_test ();
	reg A, B;
	wire nA, nB, AorB, AandB, nAB, nAornB, nAnB, nAorB;

	demorgan dut(A, B, nA, nB, AorB, AandB, nAB, nAornB, nAnB, nAorB);

	initial begin
		$display("A B | ~A ~B | AorB AandB | ~(AB) ~Aor~B | ~A~B ~(AorB) ");
		A=0;B=0;#1
		$display("%b %b | %b %b | %b %b | %b %b | %b %b", A, B, nA, nB, AorB, AandB, nAB, nAornB, nAnB, nAorB);
		A=0;B=1;#1
		$display("%b %b | %b %b | %b %b | %b %b | %b %b", A, B, nA, nB, AorB, AandB, nAB, nAornB, nAnB, nAorB);
		A=1;B=0;#1
		$display("%b %b | %b %b | %b %b | %b %b | %b %b", A, B, nA, nB, AorB, AandB, nAB, nAornB, nAnB, nAorB);
		A=1;B=1;#1
		$display("%b %b | %b %b | %b %b | %b %b | %b %b", A, B, nA, nB, AorB, AandB, nAB, nAornB, nAnB, nAorB);
	end
endmodule

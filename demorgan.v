module demorgan (input A, B, output nA, nB, AandB, AorB, nAB, nAornB, nAorB, nAnB);

wire nA;
wire nB;
not Ainv(nA, A);
not Binv(nB, B);
and andgate(nAnB, nA, nB);
or orgate(nAornB, nA, nB);
or suborgate(AorB, A, B);
and subandgate(AandB, A, B);
not orinv(nAorB, AorB);
not andinv(nAB, AandB);

endmodule

module adder_32b_sum_carry (
  input   wire [31:0]   a_i,
  input   wire [31:0]   b_i,
  output  wire [31:0]   sum_o,
  output  wire          carry_o
);

  wire c0, c1, c2, c3, c4, c5, c6, c7;
  wire c8, c9, c10, c11, c12, c13, c14, c15;
  wire c16, c17, c18, c19, c20, c21, c22, c23;
  wire c24, c25, c26, c27, c28, c29, c30, c31;
  
  assign sum_o[31:0] = a_i[31:0] + b_i[31:0];
  
  single_bit_adder_carry a0 (a_i[0], b_i[0], 1'b0, c0);
  single_bit_adder_carry a1 (a_i[1], b_i[1], c0, c1);
  single_bit_adder_carry a2 (a_i[2], b_i[2], c1, c2);
  single_bit_adder_carry a3 (a_i[3], b_i[3], c2, c3);
  single_bit_adder_carry a4 (a_i[4], b_i[4], c3, c4);
  single_bit_adder_carry a5 (a_i[5], b_i[5], c4, c5);
  single_bit_adder_carry a6 (a_i[6], b_i[6], c5, c6);
  single_bit_adder_carry a7 (a_i[7], b_i[7], c6, c7);
  single_bit_adder_carry a8 (a_i[8], b_i[8], c7, c8);
  single_bit_adder_carry a9 (a_i[9], b_i[9], c8, c9);
  single_bit_adder_carry a10 (a_i[10], b_i[10], c9, c10);
  single_bit_adder_carry a11 (a_i[11], b_i[11], c10, c11);
  single_bit_adder_carry a12 (a_i[12], b_i[12], c11, c12);
  single_bit_adder_carry a13 (a_i[13], b_i[13], c12, c13);
  single_bit_adder_carry a14 (a_i[14], b_i[14], c13, c14);
  single_bit_adder_carry a15 (a_i[15], b_i[15], c14, c15);
  single_bit_adder_carry a16 (a_i[16], b_i[16], c15, c16);
  single_bit_adder_carry a17 (a_i[17], b_i[17], c16, c17);
  single_bit_adder_carry a18 (a_i[18], b_i[18], c17, c18);
  single_bit_adder_carry a19 (a_i[19], b_i[19], c18, c19);
  single_bit_adder_carry a20 (a_i[20], b_i[20], c19, c20);
  single_bit_adder_carry a21 (a_i[21], b_i[21], c20, c21);
  single_bit_adder_carry a22 (a_i[22], b_i[22], c21, c22);
  single_bit_adder_carry a23 (a_i[23], b_i[23], c22, c23);
  single_bit_adder_carry a24 (a_i[24], b_i[24], c23, c24);
  single_bit_adder_carry a25 (a_i[25], b_i[25], c24, c25);
  single_bit_adder_carry a26 (a_i[26], b_i[26], c25, c26);
  single_bit_adder_carry a27 (a_i[27], b_i[27], c26, c27);
  single_bit_adder_carry a28 (a_i[28], b_i[28], c27, c28);
  single_bit_adder_carry a29 (a_i[29], b_i[29], c28, c29);
  single_bit_adder_carry a30 (a_i[30], b_i[30], c29, c30);
  single_bit_adder_carry a31 (a_i[31], b_i[31], c30, c31);
  
  assign carry_o = c31;
endmodule

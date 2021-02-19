module single_bit_adder_carry (
  input wire a_in,
  input wire b_in,
  input wire c_in,
  output wire c_out
);
  
  assign c_out = (a_in & b_in) + (a_in & c_in) + (b_in & c_in);
  
endmodule

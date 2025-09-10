`timescale 1ns/1ps

module procedural_blocks_design (
  input  logic clk,
  input  logic rst,
  input  logic a,
  input  logic b,
  output logic y_comb,
  output logic y_ff,
  output logic y_latch
);

  always_comb begin
    y_comb = a & b; 
  end

  always_ff @(posedge clk or posedge rst) begin
    if (rst)
      y_ff <= 0;         
    else
      y_ff <= a ^ b;  
  end


  always_latch begin
    if (a)
      y_latch = b;      
  end

endmodule

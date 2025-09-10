`timescale 1ns/1ps
module tb_procedural_blocks;
  
  logic clk, rst, a, b;
  logic y_comb, y_ff, y_latch;
  
  procedural_blocks_design dut (
    .clk(clk),
    .rst(rst),
    .a(a),
    .b(b),
    .y_comb(y_comb),
    .y_ff(y_ff),
    .y_latch(y_latch)
  );
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst = 1; a = 0; b = 0;
    #10 rst = 0;
    #10 a = 1; b = 1;
    #10 a = 0;
    #10 b = 0;
    #20 $finish;
  end

  initial begin
    $display("Time\tclk\trst\ta\tb\ty_comb\ty_ff\ty_latch");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b\t%b",
             $time, clk, rst, a, b, y_comb, y_ff, y_latch);
  end
endmodule

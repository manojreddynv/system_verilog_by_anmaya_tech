`timescale 1ns/1ps

module tb_fork_join;
  fork_join_design uut();

  initial begin
    $display("[%0t] Simulation strt", $time);

    $display("\n=== fork..join (Wait for ALL) ===");
    uut.fork_join_all();
    #10;
    $display("\n=== fork...join_any (Wait for ANY) ===");
    uut.fork_join_any();
    #10;
    $display("\n=== fork...join_none (Does NOT Wait) ===");
    uut.fork_join_none();
    #100;
    $display("[%0t] Simulation finished", $time);
    $finish;
  end
endmodule

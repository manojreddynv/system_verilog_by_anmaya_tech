`timescale 1ns/1ps

module fork_join_design;
  
  task fork_join_all();
    fork
    begin #10 $display("[%0t] Task A done (join)", $time);end
    begin #20 $display("[%0t] Task B done (join)", $time);end
    begin #15 $display("[%0t] Task C done (join)", $time);end
    join
    $display("[%0t] All fork..join tasks finished", $time);
  endtask

  task fork_join_any();
    fork
   begin #10 $display("[%0t] Task X done (join_any)", $time); end
   begin #30 $display("[%0t] Task Y done (join_any)", $time); end
   begin #50 $display("[%0t] Task Z done (join_any)", $time); end
    join_any
  $display("[%0t] One fork...join_any task finished", $time);
  endtask

  task fork_join_none();
    fork
  begin #10 $display("[%0t] Background Task M (join_none)", $time); end
    begin #20 $display("[%0t] Background Task N (join_none)", $time); end
    join_none
    $display("[%0t] Main thread continues immediately (join_none)", $time);
  endtask

endmodule

module tb;
  string firstname = "manoj";
  string lastname  = "reddy n v";
  
  string fullname;
  string replicated;
  byte   first_char;
  byte   last_char;
  logic  is_equal, is_less, is_greater;

  string_ops dut (
    .firstname(firstname),
    .lastname(lastname),
    .fullname(fullname),
    .replicated(replicated),
    .first_char(first_char),
    .last_char(last_char),
    .is_equal(is_equal),
    .is_less(is_less),
    .is_greater(is_greater)
  );

  initial begin
    #1; 
    if (is_equal)
      $display("firstname=%s is EQUAL to lastname=%s",        firstname, lastname);

    if (!is_equal)
      $display("firstname=%s is NOT EQUAL to lastname=%s", firstname, lastname);

    if (is_less)
      $display("firstname=%s is LESS THAN lastname=%s", firstname, lastname);

    if (is_greater)
      $display("firstname=%s is GREATER THAN lastname=%s", firstname, lastname);

    $display("Full Name = %s", fullname);
    $display("Replicated firstname: %s", replicated);
    $display("firstname[2]=%s lastname[2]=%s", first_char, last_char);

    $dumpfile("dump.vcd");
    $dumpvars;
    #5 $finish;
  end
endmodule

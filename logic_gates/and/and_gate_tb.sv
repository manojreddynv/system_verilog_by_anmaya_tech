// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module and_gate_tb;

    // Inputs
    logic a;
    logic b;

    // Outputs
    logic y_beh;
    logic y_data;
    logic y_gate;

    // Behavioral Model
    and_gate U1 (
        .a(a),
        .b(b),
        .y(y_beh)
    );

    // Dataflow Model
    andgate U2 (
        .a1(a),
        .b1(b),
        .y1(y_data)
    );

    // Gate-Level Model
    and__gate U3 (
        .a2(a),
        .b2(b),
        .y2(y_gate)
    );

    // Apply test vectors
    initial begin
      
      $dumpfile("and_gate_tb.vcd");
      $dumpvars(0, and_gate_tb);        

        $display("Time\tA\tB\tBehavioral\tDataflow\tGate");
        $monitor("%0t\t%b\t%b\t%b\t\t%b\t\t%b",
                 $time, a, b, y_beh, y_data, y_gate);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule

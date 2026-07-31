module testbench;

    // Queue declaration
    int waiting_line[$];

    // Variable declaration MUST come first
    int first;

    initial begin

        // Add elements to the queue
        waiting_line.push_back(101);
        waiting_line.push_back(102);

        // Display queue
        $display("Queue after push_back = %p", waiting_line);

        // Remove first element
        first = waiting_line.pop_front();

        // Display served person
        $display("Served person = %0d", first);
      
         // Display remaining queue
        $display("Queue after pop_front = %p", waiting_line);
      
         $finish;
      
    end 
endmodule 

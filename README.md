# system_verilog_by_anmaya_tech
Repository for Anmaya Technologies training sessions  - includes System Verilog codes, assignments and simulation results completed during the System Verilog workshop.


 1.Data Types Example  
🔗 [EDA Playground](https://edaplayground.com/x/GtCm)

- Demonstrates SystemVerilog data types.  
- Covers bit, logic, int, integer,string.  
- Helps understand differences in storage and behavior.
- Packed vs Unpacked Arrays  
    Packed arrays → continuous bits, behave like vectors.  
    Example: logic [7:0] byteA;  
- Unpacked arrays → separate elements, like memory.  
  Example: logic [7:0] mem [0:15];
-  Dynamic Arrays :
    Declared with '[]' and allocated using 'new[size]'.
    dyn_array = new[10]; // allocate 10 elements.



2️. Procedural Blocks  
🔗 [Open in EDA Playground](https://edaplayground.com/x/MjDF)

we learned :
- Explains procedural blocks: initial and always.
- initial → runs only once at the start of simulation.  
- always → repeats continuously based on sensitivity list (like "always @ (posedge clk)").
- Examples show sequential execution vs parallel execution.
- Helps understand how simulators schedule different processes.



3️. SystemVerilog Strings 
🔗 [Open in EDA Playground](https://edaplayground.com/x/jLMg)

we learned :
- Introduction to "string" data type in SystemVerilog.
- Examples of declaration and initialization of strings.
- Demonstrates common string operations like:
  - Getting length
  - Comparing two strings
  - Concatenation
- Very useful in testbenches for displaying messages, logs, or dynamic text.



4️. Fork/Join (all, any & none)  
🔗 [Open in EDA Playground](https://edaplayground.com/x/ZwxW)

We learned:
- fork...join → all blocks run in parallel, simulation waits until all finish.  
- fork...join_any → all blocks start, simulation continues as soon as any one finishes.  
- fork...join_none → all blocks start in parallel, simulation does not wait for them; execution continues immediately.  
- Very useful in testbenches for synchronization (all), early exit (any), or background tasks (none).  


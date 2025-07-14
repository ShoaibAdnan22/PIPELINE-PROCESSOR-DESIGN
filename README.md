# PIPELINE-PROCESSOR-DESIGN
COMPANY: CODTECH IT SOLUTIONS

NAME: MOHAMMED SHOAIB ADNAN

INTERN ID: CT06DF1447

DOMAIN: VLSI

DURATION: 6 WEEKS

MENTOR: NEELA SANTOSH

**In Task 3, the objective was to design and simulate a 4-stage pipelined processor using Verilog HDL. The processor was developed to execute basic operations such as ADD, SUB, and LOAD. The entire architecture was structured into four main pipeline stages: Instruction Fetch (IF), Instruction Decode (ID), Execute (EX), and Write Back (WB). Each of these stages was implemented to allow instruction-level parallelism, where multiple instructions are processed simultaneously but at different stages in the pipeline, thus improving overall execution throughput. The pipeline structure is a fundamental concept in computer architecture that helps increase performance by overlapping instruction execution.

To test the processor, a simple Verilog testbench was created. The module pipeline_processor was instantiated inside the testbench module named pipeline_processor_tb. The testbench was responsible for generating clock and reset signals, initializing values for memory and registers, and controlling the simulation time. A clock signal was toggled using a forever loop with a fixed time interval, and the reset signal was initially asserted and then deasserted after a short delay to begin normal execution. A basic instruction such as addi (add immediate) was manually loaded into the instruction memory and the corresponding source registers were initialized. This setup allowed verification of correct operand fetching, execution, and result writing in the appropriate pipeline stages.

The simulation was performed using the EDA Playground platform. Signal transitions were recorded using Verilog’s $dumpfile and $dumpvars system tasks, and the waveforms were analyzed through the EPWave viewer. The waveform displayed a clear visualization of how the instruction progressed through each pipeline stage. Internal signals such as instruction_id, opcode_id, operand1_id, operand2_ex, rd_ex, and result_wb were observed. The transitions of these signals matched the expected values, confirming correct pipeline behavior. During simulation, initial undefined states (X) were observed for some signals, which is normal before reset is released. After reset, all values stabilized, and the signals reflected the expected instruction flow across the clock cycles.

The design ensures that each instruction takes one cycle per stage, and that multiple instructions can occupy different stages at once. The waveform output clearly illustrated this pipelined behavior, showing several instructions active across the IF, ID, EX, and WB stages during overlapping cycles. Clock and reset signals were also captured in the waveform, confirming proper synchronous operation. The successful write-back of the result to the register file confirmed the processor’s ability to execute the instruction end-to-end.

This task provided a deeper understanding of pipelined processor design and its practical challenges. It helped strengthen skills in Verilog coding, signal tracing, testbench creation, and debugging using waveform simulations. Through this implementation, the fundamental concepts of pipelining, such as data movement between stages, instruction overlap, and execution timing, were clearly demonstrated. The processor can be further extended in the future to handle more complex operations, branching, and hazard detection mechanisms.

The simulation output matches the task requirement of demonstrating each pipeline stage’s operation through a functional Verilog design. All deliverables—code, testbench, and waveform—were successfully completed. The design was developed, tested, and visualized using EDA Playground, and signal transitions were observed through EPWave.

**SIMULATION OUTPUT<img width="1905" height="728" alt="pipeline vlsi" src="https://github.com/user-attachments/assets/2eeaeb1a-49bb-4af1-b7a6-0755b6734cfb" />

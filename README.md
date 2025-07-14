# PIPELINE-PROCESSOR-DESIGN
COMPANY: CODTECH IT SOLUTIONS

NAME: MOHAMMED SHOAIB ADNAN

INTERN ID: CT06DF1447

DOMAIN: VLSI

DURATION: 6 WEEKS

MENTOR: NEELA SANTOSH

**In Task 2 of my internship, I was assigned the development of a simple synchronous RAM module with basic read and write operations using Verilog. This task was aimed at strengthening my understanding of memory modules in digital design and implementing them through hardware description languages. As per the task instructions, the deliverables included the Verilog code, a testbench for verification, and simulation results demonstrating the functionality of the RAM.

To accomplish this, I used EDA Playground, an online simulation platform that supports Verilog and provides built-in tools like Icarus Verilog 12.0 for compilation and Open EPWave for waveform visualization. This platform allowed me to code, simulate, and observe outputs directly in the browser, making the design and debugging process much more efficient and accessible.

The RAM module I implemented was a synchronous memory block, meaning that both read and write operations are performed in sync with the rising edge of the clock signal. The design accepts inputs such as a clock signal (clk), memory address (addr), data to be written (data_in), and control signals (write_enable, read_enable). Based on these control signals, the module either stores the data at the specified address or retrieves the data from it.

I first wrote the Verilog code for the RAM module by using an internal register array to store data. Conditional statements inside an always block triggered by the clock signal determined the memory operation to be executed. If write_enable was active, the module stored the incoming data at the given address. If read_enable was active, the output provided the data from the specified address. Care was taken to ensure proper synchronization and separation between read and write phases.

After implementing the core module, I developed a testbench in Verilog to verify the functionality of the RAM. The testbench generated clock signals and systematically applied inputs for read and write operations. It included multiple test cases to write values into different memory locations and then read them back to verify correct operation. The testbench also checked how the RAM behaved with simultaneous or conflicting control signals to ensure robust handling of all possible conditions.

I ran the simulation using Icarus Verilog, and used Open EPWave to view the waveform outputs. The waveform clearly showed the transitions of address, data lines, and control signals. It also confirmed that the data written into memory was correctly retrieved, validating the successful operation of the RAM module. The simulation output matched the expected results, satisfying all functional requirements mentioned in the task.

Overall, this task significantly enhanced my understanding of how synchronous RAM operates at the digital logic level. It also improved my skills in Verilog coding, testbench creation, and interpreting simulation waveforms. By the end of this task, I was able to successfully design, simulate, and verify a simple RAM system that demonstrated both writing to and reading from memory.

**SIMULATION OUTPUT<img width="1905" height="728" alt="pipeline vlsi" src="https://github.com/user-attachments/assets/2eeaeb1a-49bb-4af1-b7a6-0755b6734cfb" />

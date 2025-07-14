module pipeline_processor(
    input clk,
    input reset
);

    // Instruction Fetch Stage
    reg [31:0] pc;
    reg [31:0] instruction_if;

    // Instruction Decode Stage
    reg [31:0] instruction_id;
    reg [5:0] opcode_id;
    reg [4:0] rs_id, rt_id, rd_id;
    reg [31:0] operand1_id, operand2_id;

    // Execution Stage
    reg [31:0] operand1_ex, operand2_ex;
    reg [5:0] opcode_ex;
    reg [4:0] rd_ex;
    reg [31:0] result_ex;

    // Write Back Stage
    reg [31:0] result_wb;
    reg [4:0] rd_wb;

    // Register File
    reg [31:0] register_file [31:0];

    // Memory
    reg [31:0] memory [1023:0];

    always @(posedge clk) begin
        if (reset) begin
            pc <= 0;
            instruction_if <= 0;
            instruction_id <= 0;
            opcode_id <= 0;
            rs_id <= 0;
            rt_id <= 0;
            rd_id <= 0;
            operand1_id <= 0;
            operand2_id <= 0;
            operand1_ex <= 0;
            operand2_ex <= 0;
            opcode_ex <= 0;
            rd_ex <= 0;
            result_ex <= 0;
            result_wb <= 0;
            rd_wb <= 0;
        end else begin
            // Instruction Fetch Stage
            instruction_if <= memory[pc];
            pc <= pc + 1;

            // Instruction Decode Stage
            instruction_id <= instruction_if;
            opcode_id <= instruction_id[31:26];
            rs_id <= instruction_id[25:21];
            rt_id <= instruction_id[20:16];
            rd_id <= instruction_id[15:11];
            operand1_id <= register_file[rs_id];
            operand2_id <= register_file[rt_id];

            // Execution Stage
            operand1_ex <= operand1_id;
            operand2_ex <= operand2_id;
            opcode_ex <= opcode_id;
            rd_ex <= rd_id;
            case (opcode_ex)
                6'b100000: result_ex <= operand1_ex + operand2_ex;
                6'b100010: result_ex <= operand1_ex - operand2_ex;
                6'b100011: result_ex <= memory[operand1_ex + operand2_ex];
                default: result_ex <= 0;
            endcase

            // Write Back Stage
            result_wb <= result_ex;
            rd_wb <= rd_ex;
            register_file[rd_wb] <= result_wb;
        end
    end

endmodule


module pipeline_processor_tb;

    reg clk;
    reg reset;

    pipeline_processor uut (
        .clk(clk),
        .reset(reset)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        #10 reset = 0;

        // Initialize memory and register file
        uut.memory[0] = 32'h20010001;                     
        uut.register_file[0] = 32'h00000000;

        // Run simulation for 100 cycles
        #100;

        $finish;
    end

    initial begin
      $dumpfile("dump.vcd");
    //Creates the VCD file
      $dumpvars(1, uut);
    //Dump Signals from 'uut' - Unit Under Test
    end

endmodule

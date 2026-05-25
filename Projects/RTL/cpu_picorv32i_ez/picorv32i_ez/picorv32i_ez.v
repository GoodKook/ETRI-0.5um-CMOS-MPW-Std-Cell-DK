
/* verilator lint_off PINMISSING */
/* verilator lint_off DECLFILENAME */
/* verilator lint_off TIMESCALEMOD */

module picorv32i_ez(
	input clk, resetn,
	output reg trap,

	output reg        mem_valid,
	output reg        mem_instr,
	input             mem_ready,

	output reg [31:0] mem_addr,
	output reg [31:0] mem_wdata,
	output reg [ 3:0] mem_wstrb,
	input      [31:0] mem_rdata
);

	picorv32 #(
        .PROGADDR_RESET(32'h 0001_0000),
        .STACKADDR(     32'h 000f_fff0)
	) uut (
		.clk         (clk        ),
		.resetn      (resetn     ),
		.trap        (trap       ),
		.mem_valid   (mem_valid  ),
		.mem_instr   (mem_instr  ),
		.mem_ready   (mem_ready  ),
		.mem_addr    (mem_addr   ),
		.mem_wdata   (mem_wdata  ),
		.mem_wstrb   (mem_wstrb  ),
		.mem_rdata   (mem_rdata  )
	);

endmodule

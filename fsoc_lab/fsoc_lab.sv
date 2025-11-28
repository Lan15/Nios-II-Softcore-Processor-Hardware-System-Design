// Top-Level Entity, Arrow Max10 DECA board
// written by C. Jakob, fbeit, h_da, December 2024, christian.jakob@h-da.de
// rewritten by V.S. Agilan, fbeit, h_da, November 2025, agilan.vellaloresaminathadurairaj@stud.h-da.de


module fsoc_lab( // Top level
      (* chip_pin = "M8"  *) input logic clk,
      (* chip_pin = "J21" *) input logic  reset_n,
      (* chip_pin = "H21, H22" *) input logic [1:0] mode,
      (* chip_pin = "C5, B4, A5, C4, B7, A6, C8, C7" *) output logic [7:0] q
      );

    // Instantiate your Nios II core here and interconnect it with the top-level
	 	base_sys u0 (
		.clk_clk          (clk),		// clk.clk
		.reset_reset_n    (reset_n),	// reset.reset_n
		.pio_input_export (mode),		// pio_input.export
		.pio_leds_export  (q)			// pio_leds.export
	   );	 
	 
    // I/O signals ...

endmodule
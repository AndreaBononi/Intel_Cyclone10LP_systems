`timescale 1 ps / 1 ps

module hyperRAM (
  input  wire       hram_CK,
	input  wire       hram_RESET_n,
	inout  wire [7:0] hram_DQ,
	inout  wire       hram_RWDS,
	input  wire       hram_CS_n 
  );

  s27kl0641 hRAM (
    .DQ7 (hram_DQ[7:7]),
    .DQ6 (hram_DQ[6:6]),
    .DQ5 (hram_DQ[5:5]),
    .DQ4 (hram_DQ[4:4]),
    .DQ3 (hram_DQ[3:3]),
    .DQ2 (hram_DQ[2:2]),
    .DQ1 (hram_DQ[1:1]),
    .DQ0 (hram_DQ[0:0]),
    .RWDS (hram_RWDS),
    .CSNeg (hram_CS_n),
    .CK (hram_CK),
    .RESETNeg (hram_RESET_n)
  );

endmodule 

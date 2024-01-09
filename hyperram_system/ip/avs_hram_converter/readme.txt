MAIN FILES AND DIRECTORIES DESCRIPTION:

--	NAME: ./avs_hram_converter_hw.tcl
		DESCRIPTION: the final IP, it implements the conversion from the hyperram interface to the Avalon-MM interface. The 
		tcl file is generated from a Platform Designer System (avs_hram_converter.qsys) employing two components, i.e. the
		clock controller IP (clkctrl_hw.tcl, generated from clkctrl.qsys) and the main converter IP (avs_hram_mainconv_hw.tcl).

--	NAME: ./hdl/
		DESCRIPTION: it contains all the HDL files required to realize the main converter IP.

-- 	NAME: ./sdc/
		DESCRIPTION: it contains all the SDC files required to realize the main converter IP.

-- 	NAME: ./schematics/
		DESCRIPTION: it contains all the schematics

-- 	NAME: .docs/
		DESCRIPTION: it contains all the documentation related to this IP

-- 	NAME: ./sim_synch/
		DESCRIPTION: it contains the simulation files of the synchronizer, a particular component employed in the main converter.

--	NAME: ./sim_sampler/
		DESCRIPTION: it contains the simulation files of the sampler, a particular component employed in the main converter.

--	NAME: ./quartus/
		DESCRIPTION: it contains a Quartus Prime project employed to perform a timing analysis on the IP.
	

-- BRIEF DESCRIPTION: component able to synchronize the synch_din (synchronous with synch_strobe) with clk
-- COMMENTS:
-- the rising edge of synch_strobe is center aligned with synch_din
-- the delay between synch_strobe and clk is unknown
-- synch_din is synchronous with synch_strobe
-- synch_dout is exactly equal to synch_din but synchrononus with clk
-- burstcount represets the number of consecutive data to be synchronized
-- burstcount is sampled by synch_strobe, thus it must be valid before synch_strobe starts oscillating
-- an operation is terminated when synch_busy goes low after going high
-- synch_busy goes low when burstcount is reached, every data provided after this event is ignored
-- at the end of an operation, the synchronizer must be cleared in order to start a new operation
-- synch_enable must be set to '1' before synch_strobe starts oscillating
-- it is recommended to keep synch_enable set to '1' up to the end of the sycnhronization
-- the internal 11-bit updown counter can be accessed from outside
-- it is recommended to access to the 11-bit updown counter only when synch_enable is low

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity synchronizer is
port
(
	clk                       : in    std_logic;
	rst_n											: in    std_logic;
	synch_enable              : in		std_logic;
  synch_clear_n             : in		std_logic;
  synch_strobe              : in		std_logic;
	synch_validout            : out		std_logic;
  synch_busy                : out		std_logic;
	synch_din                 : in		std_logic_vector(15 downto 0);
  synch_dout                : out		std_logic_vector(15 downto 0);
	burstcount                : in		std_logic_vector(10 downto 0);
	counter_enable						: in    std_logic;
	counter_clear_n						: in    std_logic;
	counter_up_downN					: in    std_logic;
	counter_out								: out		std_logic_vector(10 downto 0)
);
end synchronizer;

architecture rtl of synchronizer is

	-- COMPONENT: execution unit --------------------------------------------------------------------------
	component synchronizer_EU is
	port
	(
		-- clock and reset
		clk                       : in    std_logic;
		rst_n                     : in    std_logic;
		-- data signals
		synch_enable              : in		std_logic;
		synch_clear_n             : in		std_logic;
		synch_strobe              : in		std_logic;
		synch_validout            : out		std_logic;
		synch_busy                : out		std_logic;
		synch_din                 : in		std_logic_vector(15 downto 0);
		synch_dout                : out		std_logic_vector(15 downto 0);
		burstcount                : in		std_logic_vector(10 downto 0);
		counter_enable						: in    std_logic;
		counter_clear_n						: in    std_logic;
		counter_up_downN					: in    std_logic;
		counter_out								: out		std_logic_vector(10 downto 0);
		-- control signals
		system_clear_n            : in		std_logic;
		system_enable             : in		std_logic;
		burstlen_enable           : in		std_logic;
		burstlen_counter_enable   : in		std_logic;
		outreg_enable            	: in		std_logic;
		data_counter_enable       : in    std_logic;
		busy                      : in		std_logic;
		validout                  : in		std_logic;
		outpipe_enable            : in		std_logic;
		outpipe_clear_n           : in		std_logic;
		-- status signals
		burst_end                 : out		std_logic;
		start_sampling            : out		std_logic;
		enable                    : out		std_logic;
		clear_n                   : out		std_logic
	);
	end component; ---------------------------------------------------------------------------------------

	-- COMPONENT: control unit ---------------------------------------------------------------------------
	component synchronizer_CU is
	port
	(
		-- clock and reset
		clk                       : in    std_logic;
		rst_n											: in    std_logic;
		-- status signals
		burst_end                 : in		std_logic;
		start_sampling            : in		std_logic;
		enable                    : in		std_logic;
		clear_n                   : in		std_logic;
		-- control signals
		system_clear_n            : out		std_logic;
		system_enable             : out		std_logic;
		burstlen_enable           : out		std_logic;
		burstlen_counter_enable   : out		std_logic;
		outreg_enable            	: out		std_logic;
		data_counter_enable       : out   std_logic;
		busy                      : out		std_logic;
		validout                  : out		std_logic;
		outpipe_enable            : out		std_logic;
		outpipe_clear_n           : out		std_logic
	);
	end component; ---------------------------------------------------------------------------------------

	-- SIGNALS -------------------------------------------------------------------------------------------
	signal burst_end									: std_logic;
	signal start_sampling           	: std_logic;
	signal enable                   	: std_logic;
	signal clear_n                  	: std_logic;
	signal system_clear_n            	: std_logic;
	signal system_enable             	: std_logic;
	signal burstlen_enable           	: std_logic;
	signal burstlen_counter_enable   	: std_logic;
	signal outreg_enable            	: std_logic;
	signal data_counter_enable       	: std_logic;
	signal busy                      	: std_logic;
	signal validout                 	: std_logic;
	signal outpipe_enable            	: std_logic;
	signal outpipe_clear_n           	: std_logic;
	------------------------------------------------------------------------------------------------------

	begin

		-- execution unit ----------------------------------------------------------------------------------
		EU: synchronizer_EU
		port map
		(
			clk 											=> clk,                       
			rst_n 										=> rst_n,                    
			synch_enable 							=> synch_enable,           
			synch_clear_n 						=> synch_clear_n,          
			synch_strobe 							=> synch_strobe,           
			synch_validout 						=> synch_validout,          
			synch_busy 								=> synch_busy,              
			synch_din 								=> synch_din,          
			synch_dout 								=> synch_dout,          
			burstcount 								=> burstcount,         
			counter_enable 						=> counter_enable,					
			counter_clear_n 					=> counter_clear_n,					
			counter_up_downN 					=> counter_up_downN,				
			counter_out 							=> counter_out,		
			system_clear_n 						=> system_clear_n,         
			system_enable 						=> system_enable,          
			burstlen_enable 					=> burstlen_enable,        
			burstlen_counter_enable 	=> burstlen_counter_enable,
			outreg_enable 						=> outreg_enable,          
			data_counter_enable 			=> data_counter_enable,      
			busy 											=> busy,                   
			validout 									=> validout,               
			outpipe_enable 						=> outpipe_enable,         
			outpipe_clear_n 					=> outpipe_clear_n,        
			burst_end 								=> burst_end,               
			start_sampling 						=> start_sampling,          
			enable 										=> enable,                  
			clear_n 									=> clear_n                
		); ------------------------------------------------------------------------------------------------

		-- control unit -----------------------------------------------------------------------------------
		CU: synchronizer_CU
		port map
		(
			clk                       => clk,
			rst_n											=> rst_n,
			burst_end                	=> burst_end,
			start_sampling           	=> start_sampling,
			enable                   	=> enable,
			clear_n                  	=> clear_n,
			system_clear_n            => system_clear_n,
			system_enable             => system_enable,
			burstlen_enable           => burstlen_enable,
			burstlen_counter_enable   => burstlen_counter_enable,
			outreg_enable            	=> outreg_enable,
			data_counter_enable       => data_counter_enable,
			busy                      => busy,
			validout                  => validout,
			outpipe_enable            => outpipe_enable,
			outpipe_clear_n           => outpipe_clear_n
		); ------------------------------------------------------------------------------------------------

end rtl;

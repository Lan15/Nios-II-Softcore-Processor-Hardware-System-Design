	component base_sys is
		port (
			clk_clk            : in  std_logic                    := 'X'; -- clk
			reset_reset_n      : in  std_logic                    := 'X'; -- reset_n
			pio_leds_export    : out std_logic_vector(7 downto 0);        -- export
			pio_input_in_port  : in  std_logic                    := 'X'; -- in_port
			pio_input_out_port : out std_logic                            -- out_port
		);
	end component base_sys;

	u0 : component base_sys
		port map (
			clk_clk            => CONNECTED_TO_clk_clk,            --       clk.clk
			reset_reset_n      => CONNECTED_TO_reset_reset_n,      --     reset.reset_n
			pio_leds_export    => CONNECTED_TO_pio_leds_export,    --  pio_leds.export
			pio_input_in_port  => CONNECTED_TO_pio_input_in_port,  -- pio_input.in_port
			pio_input_out_port => CONNECTED_TO_pio_input_out_port  --          .out_port
		);


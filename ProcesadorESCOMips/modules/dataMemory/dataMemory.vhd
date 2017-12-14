library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.all;

entity dataMemory is
	generic (
		constant word_len : INTEGER := 16;
		constant density_len : INTEGER := 11);
	Port ( clk : in  STD_LOGIC;
		data_in : in std_logic_vector(word_len-1 downto 0);				-- Data to load.
		dir : in  std_logic_vector(word_len-1 downto 0);					-- Memory address.
		wd : in  STD_LOGIC;															-- Enable write data.
		data_out : out std_logic_vector(word_len-1 downto 0));			-- Data output.
end dataMemory;

architecture Behavioral of dataMemory is
	type bank_array is array (0 to ((2**density_len)-1)) of std_logic_vector(word_len-1 downto 0);
	signal bank : bank_array := (others => (others => '0'));	
begin
	-- Reading.
	data_out <= bank(CONV_INTEGER(dir(10 downto 0)));
	
	process(clk, wd)
	begin
		-- Clear
		if rising_edge(clk) then 												-- Change Up.
			if wd = '1' then
				bank(CONV_INTEGER(dir)) <= data_in; 								-- Load in memory.
			end if;
		end if;
	end process;

end Behavioral;


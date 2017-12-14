library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FrecuencyDivider is
	generic (
		--constant frec :  unsigned(31 downto 0) := "11101110011010110010100000000000" -- 4,000,000,000
		constant frec :  unsigned(31 downto 0) := "00000101111101011110000100000000" -- 100,000,000
		--constant frec :  unsigned(31 downto 0) := "00000000000000000000000000001010" -- 10
		);
	Port ( osc_clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           clk : out  STD_LOGIC);
end FrecuencyDivider;

architecture Behavioral of FrecuencyDivider is
	signal count : unsigned(31 downto 0) := (others => '0');
	signal clk_aux : STD_LOGIC := '1';
begin
	clk <= clk_aux;
	
	process(osc_clk, clr)
	begin
		if clr = '1' then
			clk_aux <= '0';
			count <= (others => '0');
		elsif rising_edge(osc_clk) then
			count <= count + 1;
			
			if count = ((frec/2) - 1) then
				clk_aux <= not clk_aux;
				count <= (others => '0');
			end if;

		end if;
	end process;

end Behavioral;


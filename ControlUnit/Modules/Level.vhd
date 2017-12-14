----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:35:53 12/06/2017 
-- Design Name: 
-- Module Name:    Level - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Level is
    Port ( clk, clr : in  STD_LOGIC;
		na : out STD_LOGIC);
end Level;

architecture Behavioral of Level is
	signal pclk, nclk : STD_LOGIC;
begin

	na <= pclk xor nclk;

	process(clk, clr)
	begin
		if clr = '1' then
			PCLK <= '0';
		elsif rising_edge(clk) then
			PCLK <= not PCLK;
		end if;
		
		if clr = '1' then
			nclk <= '0';
		elsif FALLING_EDGE(CLK) then
			nclk <= not nclk;
		end if;
	end process;

end Behavioral;


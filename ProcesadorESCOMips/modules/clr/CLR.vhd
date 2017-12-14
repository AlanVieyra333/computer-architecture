library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CLR_Rectifier is
    Port ( rclr, clk : in  STD_LOGIC;
           clr : out  STD_LOGIC);
end CLR_Rectifier;

architecture Behavioral of CLR_Rectifier is

begin
	
	process(clk)
	begin
		if (falling_edge(clk)) then
			clr <= rclr;
		end if;
	end process;

end Behavioral;


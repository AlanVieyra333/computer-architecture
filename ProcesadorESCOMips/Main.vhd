library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.ProcesadorESCOMpis.all;

entity Main is
    Port ( RCLR, RCLK : in  STD_LOGIC;
           DATA : out  STD_LOGIC_VECTOR (7 downto 0);
           PC : out  STD_LOGIC_VECTOR (7 downto 0));
end Main;

architecture Behavioral of Main is
	signal CLR : STD_LOGIC := '0';
	signal CLK : STD_LOGIC := '0';
begin
	--CLK <= RCLK;
	
	DivisorDeFrecuencia: FrecuencyDivider PORT MAP (
		osc_clk => RCLK,
     clr => RCLR,
     clk => CLK
	);
	
	CLR_Rectificador: CLR_Rectifier PORT MAP (
		rclr => RCLR,
		clk => CLK,
		clr => CLR
	);
	
	ESCOMips: MIPS PORT MAP (
		clr => CLR,
		clk => CLK,
		mips_result => DATA,
		pc => PC
	);

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:58:26 12/10/2017 
-- Design Name: 
-- Module Name:    stack - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity stack is
	generic (
		constant bus_len : integer := 16;
		constant sp_len : integer := 4
	);
   Port ( clk, clr : in  STD_LOGIC;
           up, dw, wpc : in  STD_LOGIC;
           direction : in  STD_LOGIC_VECTOR (bus_len-1 downto 0);
           result : out  STD_LOGIC_VECTOR (bus_len-1 downto 0));
end stack;

architecture Behavioral of stack is
	type stack is array (0 to (2**sp_len)-1) of std_logic_vector (bus_len-1 downto 0);
	signal PC : stack;
begin

	process(clk, clr, PC)
		variable SP: integer range 0 to (2**sp_len)-1;
	begin
		if (CLR = '1') then
			PC <= (others => (others => '0'));
			SP := 0;
		elsif rising_edge(clk) then
			if (WPC = '1' and UP = '0' and DW = '0') then				-- B
				PC(SP) <= direction;
			elsif (WPC = '1' and UP = '1' and DW = '0') then			-- CALL
				SP := SP + 1;
				PC(SP) <= direction;
			elsif (WPC = '0' and UP = '0' and DW = '1') then			-- RET
				SP := SP - 1;
				PC(SP) <= PC(SP) + 1;
			else
				PC(SP) <= PC(SP) + 1;
			end if;
		end if;
		
		result <= PC(SP);
	end process;

end Behavioral;


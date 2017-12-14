----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:53:40 12/05/2017 
-- Design Name: 
-- Module Name:    Mux2 - Behavioral 
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

entity Mux_20 is
    Port ( selector : in  STD_LOGIC;
           input1 : in  STD_LOGIC_VECTOR (19 downto 0);
           input2 : in  STD_LOGIC_VECTOR (19 downto 0);
           output : out  STD_LOGIC_VECTOR (19 downto 0));
end Mux_20;

architecture Behavioral of Mux_20 is

begin

	process (selector, input1, input2)
	begin
		if selector = '0' then
			output <= input1;
		else
			output <= input2;
		end if;
	end process;

end Behavioral;


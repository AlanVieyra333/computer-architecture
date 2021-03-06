----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:35:28 12/10/2017 
-- Design Name: 
-- Module Name:    Mux1 - Behavioral 
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

entity Mux1 is
    Port ( selector : in  STD_LOGIC;
           input1, input2 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end Mux1;

architecture Behavioral of Mux1 is

begin

	process(selector, input1, input2)
	begin
		if selector = '0' then
			output <= input1;
		else
			output <= input2;
		end if;
	end process;

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:38:50 12/10/2017 
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

entity Mux2 is
    Port ( selector : in  STD_LOGIC_VECTOR (1 downto 0);
           input1, input2, input3, input4 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end Mux2;

architecture Behavioral of Mux2 is

begin

	process(selector, input1, input2, input3, input4)
	begin
		case selector is
			when "00" => output <= input1;
			when "01" => output <= input2;
			when "10" => output <= input3;
			when "11" => output <= input4;
			when others => output <= '0';
		end case;
	end process;

end Behavioral;


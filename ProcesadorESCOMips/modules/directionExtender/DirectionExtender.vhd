----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:23:44 12/10/2017 
-- Design Name: 
-- Module Name:    DirectionExtender - Behavioral 
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

entity DirectionExtender is
    Port ( input : in  STD_LOGIC_VECTOR (11 downto 0);
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end DirectionExtender;

architecture Behavioral of DirectionExtender is

begin
	
	output <= "0000"&input;

end Behavioral;


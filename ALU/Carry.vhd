----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:47:20 12/10/2017 
-- Design Name: 
-- Module Name:    Carry - Behavioral 
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

entity Carry is
    Port ( a, b, cin : in  STD_LOGIC;
           s, cout : out  STD_LOGIC);
end Carry;

architecture Behavioral of Carry is

begin

	process(a, b, cin)
	begin
		s <= a xor b xor cin;
		cout <= (a and cin) or (b and cin) or (a and b);
	end process;

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:19:36 12/06/2017 
-- Design Name: 
-- Module Name:    Condition - Behavioral 
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

entity Condition is
	Port (
		z : in  STD_LOGIC;
		c : in  STD_LOGIC;
		n : in  STD_LOGIC;
		ov : in  STD_LOGIC;
		
      BEQI : out  STD_LOGIC;
      BNEI : out  STD_LOGIC;
      BLTI : out  STD_LOGIC;
      BLETI : out  STD_LOGIC;
      BGTI : out  STD_LOGIC;
      BGETI : out  STD_LOGIC);
end Condition;

architecture Behavioral of Condition is

begin

	process (z, c, n ,ov)
	begin
		BEQI <= z;
      BNEI <= not z;
      --BLTI <= not c;
		BLTI <= (n xor ov) and (not z);
      --BLETI <= z or (not c);
		BLETI <= (n xor ov) or z;
      --BGTI <= (not z) and c;
		BGTI <= (not z) and (not (n xor ov));
      --BGETI <= c;
		BGETI <= (not (n xor ov)) or z;
	end process;

end Behavioral;


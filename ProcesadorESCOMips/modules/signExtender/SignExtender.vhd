----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:17:32 12/10/2017 
-- Design Name: 
-- Module Name:    SignExtender - Behavioral 
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

entity SignExtender is
    Port ( input : in  STD_LOGIC_VECTOR (12-1 downto 0);
           output : out  STD_LOGIC_VECTOR (16-1 downto 0));
end SignExtender;

architecture Behavioral of SignExtender is
	SIGNAL bitAux: STD_LOGIC;
begin

	bitAux <= input(12-1);
	output <= bitAux & bitAux & bitAux & bitAux & input;
	
end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:24:56 12/05/2017 
-- Design Name: 
-- Module Name:    MicrocodeFunction - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MicrocodeFunction is
    Port ( functionCode : in  STD_LOGIC_VECTOR (3 downto 0);
		microinstruction : out STD_LOGIC_VECTOR (19 downto 0));
end MicrocodeFunction;

architecture Behavioral of MicrocodeFunction is
begin
	-- UP,DW,WPC,SDMP,SR2,SWD,SHE,DIR,WR,LF,SEXT,SOP1,SOP2,ALUOP,SDMD,WD,SR
	process (functionCode)
	begin
		case CONV_INTEGER(functionCode) is
			when 0 => microinstruction 		<= "00000100110000011001";		-- ADD
			when 1 => microinstruction 		<= "00000100110000111001";		-- SUB
			when 2 => microinstruction 		<= "00000100110000000001";		-- AND
			when 3 => microinstruction 		<= "00000100110000001001";		-- OR
			when 4 => microinstruction 		<= "00000100110000010001";		-- XOR
			when 5 => microinstruction 		<= "00000100110001101001";		-- NAND
			when 6 => microinstruction 		<= "00000100110001100001";		-- NOR
			when 7 => microinstruction 		<= "00000100110001010001";		-- XNOR
			when 8 => microinstruction 		<= "00000100110001101001";		-- NOT
			when 9 => microinstruction 		<= "00000011000000000000";		-- SLL
			when 10 => microinstruction 		<= "00000010000000000000";		-- SRL
			when others => microinstruction 	<= "00000000000000000000";
		end case;
	end process;

end Behavioral;


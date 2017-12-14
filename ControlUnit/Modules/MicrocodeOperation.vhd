----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:18:26 12/05/2017 
-- Design Name: 
-- Module Name:    MicrocodeOperation - Behavioral 
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

entity MicrocodeOperation is
	Port ( operationCode : in  STD_LOGIC_VECTOR (4 downto 0);
		microinstruction : out STD_LOGIC_VECTOR (19 downto 0));
end MicrocodeOperation;

architecture Behavioral of MicrocodeOperation is

begin

	-- UP,DW,WPC,SDMP,	SR2,SWD,SHE,DIR,	WR,LF,SEXT,SOP1,SOP2,	ALUOP,SDMD,WD,SR
	process (operationCode)
	begin
		case CONV_INTEGER(operationCode) is
			--WPC SDMP SOP1 SOP2 SR ALUOP
			when 0 => microinstruction 	<= "00001000010000111000";		-- Jumps
			when 1 => microinstruction 	<= "00000000100000000000";
			when 2 => microinstruction 	<= "00000100100000000100";
			when 3 => microinstruction 	<= "00001000000000000110";
			when 4 => microinstruction 	<= "00001000001010000010";
			when 5 => microinstruction 	<= "00000100110010011001";		-- ADDI
			when 6 => microinstruction 	<= "00000100110010110001";
			when 7 => microinstruction 	<= "00000100110010000001";		-- ALU lit
			when 8 => microinstruction 	<= "00000100110010001001";
			when 9 => microinstruction 	<= "00000100110010010001";
			when 10 => microinstruction 	<= "00000100110011101001";
			when 11 => microinstruction 	<= "00000100110011100001";
			when 12 => microinstruction 	<= "00000100110011010001";
			when 13 => microinstruction 	<= "00110000000110011001";		-- Jumps instructions
			when 14 => microinstruction 	<= "00110000000110011001";
			when 15 => microinstruction 	<= "00110000000110011001";
			when 16 => microinstruction 	<= "00110000000110011001";
			when 17 => microinstruction 	<= "00110000000110011001";
			when 18 => microinstruction 	<= "00110000000110011001";		-- SR2, LF, ALUOP
			when 19 => microinstruction 	<= "00100000000000000000";		-------------
			when 20 => microinstruction 	<= "10100000000000000000";
			when 21 => microinstruction 	<= "01000000000000000000";
			when 22 => microinstruction 	<= "00000000000000000000";
			when 23 => microinstruction 	<= "00000100100000011000";
			when others => microinstruction <= "00000000000000000000";
		end case;
	end process;

end Behavioral;


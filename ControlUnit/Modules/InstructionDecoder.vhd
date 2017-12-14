----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:58:00 12/06/2017 
-- Design Name: 
-- Module Name:    InstructionDecoder - Behavioral 
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

entity InstructionDecoder is
    Port ( operationCode : in  STD_LOGIC_VECTOR (4 downto 0);
           typeR : out  STD_LOGIC;
           BEQI : out  STD_LOGIC;
           BNEI : out  STD_LOGIC;
           BLTI : out  STD_LOGIC;
           BLETI : out  STD_LOGIC;
           BGTI : out  STD_LOGIC;
           BGETI : out  STD_LOGIC);
end InstructionDecoder;

architecture Behavioral of InstructionDecoder is

begin

	process (operationCode)
		variable output : STD_LOGIC_VECTOR (6 downto 0);
	begin
		case CONV_INTEGER(operationCode) is
			when 0 => output 	:= "1000000";
			when 13 => output := "0100000";
			when 14 => output := "0010000";
			when 15 => output := "0001000";
			when 16 => output := "0000100";
			when 17 => output := "0000010";
			when 18 => output := "0000001";
			when others => output := "0000000";
		end case;
		
		typeR <= output(6);
		BEQI <= output(5);
		BNEI <= output(4);
		BLTI <= output(3);
		BLETI <= output(2);
		BGTI <= output(1);
		BGETI <= output(0);
	end process;

end Behavioral;


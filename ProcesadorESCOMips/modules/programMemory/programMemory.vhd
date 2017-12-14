library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.all;

entity programMemory is
	generic (
		constant bus_len : INTEGER := 16;
		constant word_len : INTEGER := 25;
		constant density_len : INTEGER := 11);
	Port ( dir : in std_logic_vector(bus_len-1 downto 0);
		operation : out std_logic_vector(word_len-1 downto 0));
end programMemory;

architecture Behavioral of programMemory is
	type bank_array is array (0 to ((2**density_len)-1)) of std_logic_vector(word_len-1 downto 0);
	signal bank : bank_array := (others => (others => '0'));
begin
	-- Reading.
	operation <= bank(CONV_INTEGER(dir));
	
	-- ******************	Program	********************
--	0	R0 = 1				|	LI R0, #1
--	1	R1 = 7				|	LI R1, #7
--		SUMA:
--	2	R1 = R1 + R0		|	ADD R1,R1,R0
--	3	Mem[5] = R1			|	SWI R1, 5
--	4	PC = SUMA			|	B 2
	-- **************************************************
	
	--bank(0) <= "0000100000000000000000001";
	--bank(1) <= "0000100010000000000000111";
	--bank(2) <= "0000000010001000000000000";
	--bank(3) <= "0001100010000000000000101";
	--bank(4) <= "1001100000000000000000010";
	
	
	-- ******************	Program	********************
--	0	R0 = 0				|	LI R0, #0
--	1	R1 = 1				|	LI R1, #1
--	2	R2 = 0				|	LI R2, #0
--	3	R3 = 12				|	LI R3, #12
	-- SUMA:
--	4	R4 = R0 + R1		|	ADD R4,R0,R1
--	5	Mem[72] = R4		|	SWI R4, 72
--	6	R0 = R1 + 0			|	ADDI R0, R1, #0
--	7	R1 = R4 + 0			|	ADDI R1, R4, #0
--	8	R2 = R2 + 1			|	ADDI R2, R2, #1
--	9	if(R2 != R3) SUMA	|	BNEI R2, R3, S-5
	-- NADA:
--	10	NOP					|	NOP
--	11	PC = NADA			|	B 10
	-- **************************************************
	
	bank(0) <= "0000100000000000000000000";
	bank(1) <= "0000100010000000000000001";
	bank(2) <= "0000100100000000000000000";
	bank(3) <= "0000100110000000000001100";
	bank(4) <= "0000001000000000100000000";
	bank(5) <= "0001101000000000001001000";
	bank(6) <= "0010100000001000000000000";
	bank(7) <= "0010100010100000000000000";
	bank(8) <= "0010100100010000000000001";
	bank(9) <= "0111000100011111111111011";
	bank(10) <= "1011000000000000000000000";
	bank(11) <= "1001100000000000000001010";

end Behavioral;


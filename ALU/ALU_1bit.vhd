----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:00:52 12/10/2017 
-- Design Name: 
-- Module Name:    ALU_1bit - Behavioral 
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
use work.ALU.ALL;

entity ALU_1bit is
    Port ( a, b, cIn : in  STD_LOGIC;
           aInv, bInv : in  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           cOut : out  STD_LOGIC;
           result : out  STD_LOGIC);
end ALU_1bit;

architecture Behavioral of ALU_1bit is
	signal result_a : STD_LOGIC := '0';
	signal result_b : STD_LOGIC := '0';
	signal result_carry : STD_LOGIC := '0';
	signal aNot : STD_LOGIC := '0';
	signal bNot : STD_LOGIC := '0';
	signal aANDb : STD_LOGIC := '0';
	signal aORb : STD_LOGIC := '0';
	signal aXORb : STD_LOGIC := '0';
begin
	
	process(a, b)
	begin
		aNot <= not a;
		bNot <= not b;
		aANDb <= a and b;
		aORb <= a OR b;
		aXORb <= a XOR b;
	end process;
	
	Inversor1: Mux1 PORT MAP (
		selector => aInv,
		input1 => a,
		input2 => aNot,
		output => result_a
	);
	
	Inversor2: Mux1 PORT MAP (
		selector => bInv,
		input1 => b,
		input2 => bNot,
		output => result_b
	);
	
	Suma: Carry PORT MAP (
		a => result_a,
		b => result_b,
		cin => cIn,
		cout => cOut,
		s => result_carry
	);
	
	Operador: Mux2 PORT MAP (
		selector => op,
		input1 => aANDb,
		input2 => aORb,
		input3 => aXORb,
		input4 => result_carry,
		output => result
	);

end Behavioral;


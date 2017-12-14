-- Archivo de registros, corrimiento y carga. con 16 registros, se veran muxes*
-- Con corrimientos srl & sll, trabajan con vectores de bit
-- Para lunes, simular con archivos, los estimulos se leeran en un archivo
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.all;

entity logFiles is
	generic (
		constant word_len : INTEGER := 16;
		constant bus_len : INTEGER := 4);
	Port (
		clr, clk, she, wr, dir : in  STD_LOGIC;
		shamt : in std_logic_vector(bus_len-1 downto 0);						-- # bits to shift.
		write_data : in std_logic_vector(word_len-1 downto 0);				-- Data to load.
		write_reg :	in std_logic_vector(bus_len-1 downto 0);					-- Register where you'ld like load.
		read_reg1 :	in std_logic_vector(bus_len-1 downto 0);					-- Register to load in read_data1.
		read_reg2 :	in std_logic_vector(bus_len-1 downto 0);					-- Register to shift.
		read_data1 : out std_logic_vector(word_len-1 downto 0);				-- Output of read_reg1.
		read_data2 : out std_logic_vector(word_len-1 downto 0)				-- Output of read_reg2.
		);
end entity;

architecture Behavioral of logFiles is
	type bank_array is array (0 to ((2**bus_len)-1)) of std_logic_vector(word_len-1 downto 0);
	signal bank : bank_array := (others => (others => '0'));					-- File register.
begin
	-- Retención.
	read_data1 <= bank(CONV_INTEGER(read_reg1));
	read_data2 <= bank(CONV_INTEGER(read_reg2));
	
	process(clr, clk, wr, she, dir, bank)
		variable aux : BIT_VECTOR (word_len-1 downto 0);
	begin
		-- Clear
		if (clr = '1') then
			for i in 0 to ((2**bus_len)-1) loop
				bank(i) <= (others => '0');
			end loop;
		-- Load
		elsif( 	clr = '0' and
				rising_edge(clk) and 													-- Change Up.
				wr = '1' and
				she = '0') then
			bank(CONV_INTEGER(write_reg)) <= write_data; 						-- Load in file register.
		-- shiftRight
		elsif( 	clr = '0' and
				rising_edge(clk) and
				wr = '1' and
				she = '1' and
				dir = '0') then
			aux := to_bitvector(bank(CONV_INTEGER(read_reg2)));
			aux := aux srl CONV_INTEGER(shamt);										-- Shift rigth shamt times.
			bank(CONV_INTEGER(write_reg)) <= to_stdlogicvector(aux); 		-- Load in file register.
		-- shiftLeft
		elsif( 	clr = '0' and
				rising_edge(clk) and
				wr = '1' and
				she = '1' and
				dir = '1') then
			aux := to_bitvector(bank(CONV_INTEGER(read_reg2)));
			aux := aux sll CONV_INTEGER(shamt);										-- Shift rigth shamt times.
			bank(CONV_INTEGER(write_reg)) <= to_stdlogicvector(aux); 		-- Load in file register.
		end if;
	end process;
end Behavioral;

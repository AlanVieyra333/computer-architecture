library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ALU.ALL;

entity ALU_nbits is
	generic (
		constant bus_len : INTEGER := 16
	);
   Port ( a, b : in  STD_LOGIC_VECTOR (bus_len-1 downto 0);
           aInv, bInv : in  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           ov, n , z, c : out  STD_LOGIC;
           result : inout  STD_LOGIC_VECTOR (bus_len-1 downto 0));
end ALU_nbits;

architecture Behavioral of ALU_nbits is
	signal cAux : STD_LOGIC_VECTOR (bus_len downto 0) := (others => '0');
	signal zAux : STD_LOGIC_VECTOR (bus_len downto 0) := (others => '0');
begin
		
	GENERATE_ALU: 
   for i in 0 to bus_len-1 generate
      ALUxbit: ALU_1bit PORT MAP (
			a => a(i),
			b => b(i),
			cIn => cAux(i),
			aInv => aInv,
			bInv => bInv,
			op => op,
			cOut => cAux(i+1),
			result => result(i)
		);
   end generate GENERATE_ALU;
	
	-- Calculate 'Z' flag.
	GENERATE_Z: 
   for i in 0 to bus_len-1 generate
      zAux(i+1) <= zAux(i) or result(i);
   end generate GENERATE_Z;
	
	ov <= cAux(bus_len-1) xor cAux(bus_len);
	n <= result(bus_len-1);
	c <= cAux(bus_len);
	z <= not zAux(bus_len);
	cAux(0) <= bInv;
	zAux(0) <= '0';

end Behavioral;


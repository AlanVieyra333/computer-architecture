--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package ALU is

component Carry is
    Port ( a, b, cin : in  STD_LOGIC;
           s, cout : out  STD_LOGIC);
end component;

component Mux1 is
    Port ( selector : in  STD_LOGIC;
           input1, input2 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;

component Mux2 is
    Port ( selector : in  STD_LOGIC_VECTOR (1 downto 0);
           input1, input2, input3, input4 : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;

component ALU_1bit is
    Port ( a, b, cIn : in  STD_LOGIC;
           aInv, bInv : in  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           cOut : out  STD_LOGIC;
           result : out  STD_LOGIC);
end component;

component ALU_nbits is
	generic (
		constant bus_len : INTEGER := 16
	);
   Port ( a, b : in  STD_LOGIC_VECTOR (bus_len-1 downto 0);
           aInv, bInv : in  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           ov, n , z, c : out  STD_LOGIC;
           result : inout  STD_LOGIC_VECTOR (bus_len-1 downto 0));
end component;

end ALU;

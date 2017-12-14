----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:07:43 12/06/2017 
-- Design Name: 
-- Module Name:    Flags - Behavioral 
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

entity Flags is
	Port (
		zIn : in  STD_LOGIC;
		cIn : in  STD_LOGIC;
		nIn : in  STD_LOGIC;
		ovIn : in  STD_LOGIC;
		
      lf : in  STD_LOGIC;
      clr : in  STD_LOGIC;
      clk : in  STD_LOGIC;
		
		zOut : out  STD_LOGIC;
		cOut : out  STD_LOGIC;
		nOut : out  STD_LOGIC;
		ovOut : out  STD_LOGIC);
end Flags;

architecture Behavioral of Flags is
	signal z : STD_LOGIC := '0';
	signal c : STD_LOGIC := '0';
	signal n : STD_LOGIC := '0';
	signal ov : STD_LOGIC := '0';
begin
	zOut <= z;
	cOut <= c;
	nOut <= n;
	ovOut <= ov;

	process(clr, clk, lf)
	begin
		if clr = '1' then
			z <= '0';
			c <= '0';
			n <= '0';
			ov <= '0';
		elsif falling_edge(clk) then
			if lf = '1' then
				z <= zIn;
				c <= cIn;
				n <= nIn;
				ov <= ovIn;
			end if;
		end if;
	end process;
end Behavioral;


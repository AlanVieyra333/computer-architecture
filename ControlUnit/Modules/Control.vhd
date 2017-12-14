library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control is
	Port ( clk, clr, NA : in  STD_LOGIC;
		typeR : in  STD_LOGIC;
		BEQ : IN STD_LOGIC;
		BNEQ : IN STD_LOGIC;
		BLT : IN STD_LOGIC;
		BLE : IN STD_LOGIC;
		BGT : IN STD_LOGIC;
		BGET : IN STD_LOGIC;

		EQ : IN STD_LOGIC;
		NEQ : IN STD_LOGIC;
		LT : IN STD_LOGIC;
		LE : IN STD_LOGIC;
		GTT : IN STD_LOGIC;
		GET : IN STD_LOGIC;

		SDOPC, SM : out  STD_LOGIC);
end Control;

architecture Behavioral of Control is
	type state is (q0);
	signal state_current, state_next: state;
begin
	process(clk, clr)
	begin
		if clk = '1' then
			state_current <= q0;
		elsif rising_edge(clk) then
			state_current <= state_next;
		end if;
	end process;

	--(typeR, NA, BEQ, BNEQ, BLT, BLE, BGT, BGET, EQ, NEQ, LT, LE, GTT, GET)}
	--(NA, BEQ, BNEQ, BLT, BLE, BGT, BGET, EQ, NEQ, LT, LE, GTT, GET)
	process(state_current, typeR, NA, BEQ, BNEQ, BLT, BLE, BGT, BGET, EQ, NEQ, LT, LE, GTT, GET)
	begin
		if typeR = '1' then	-- Action 2
			SDOPC <= '0';
			SM <= '0';
			state_next <= q0;
		elsif (NA = '1' and BEQ = '1') or
				(NA = '1' and BEQ = '0' and BNEQ = '1') or
				(NA = '1' and BEQ = '0' and BNEQ = '0' and BLT = '1') or
				(NA = '1' and BEQ = '0' and BNEQ = '0' and BLT = '0' and BLE = '1') or
				(NA = '1' and BEQ = '0' and BNEQ = '0' and BLT = '0' and BLE = '0' and BGT = '1') or
				(NA = '1' and BEQ = '0' and BNEQ = '0' and BLT = '0' and BLE = '0' and BGT = '0' and BGET = '1') or
				(NA = '0' and BEQ = '1' and EQ = '0') or
				(NA = '0' and BEQ = '0' and BNEQ = '1' and NEQ = '0') or
				(NA = '0' and BEQ = '0' and BNEQ = '0' and BLT = '1' and LT = '0') or
				(NA = '0' and BEQ = '0' and BNEQ = '0' and BLT = '0' and BLE = '1' and LE = '0') or
				(NA = '0' and BEQ = '0' and BNEQ = '0' and BLT = '0' and BLE = '0' and BGT = '1' and GTT = '0') or
				(NA = '0' and BEQ = '0' and BNEQ = '0' and BLT = '0' and BLE = '0' and BGT = '0' and BGET = '1' and GET = '0') then
		--		"01XXXXX0XXXXX" |
		--		"001XXXXX0XXXX" |
		--		"0001XXXXX0XXX" |
		--		"00001XXXXX0XX" |
		--		"000001XXXXX0X" |
		--		"0000001XXXXX0" =>	-- Action 1
			SDOPC <= '0';
			SM <= '1';
			state_next <= q0;
		else					-- Action 3
			SDOPC <= '1';
			SM <= '1';
			state_next <= q0;
		end if;
	end process;
end Behavioral;


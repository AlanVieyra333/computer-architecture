library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mypkg.all;

entity main is
	Port ( clk, clr : in  STD_LOGIC;
		functionCode : in STD_LOGIC_VECTOR(3 downto 0);
		operationCode : in STD_LOGIC_VECTOR(4 downto 0);
		z, c, n, ov : in STD_LOGIC;
		
      UP : out STD_LOGIC;
		DW : out STD_LOGIC;
		WPC : out STD_LOGIC;
		SDMP : out STD_LOGIC;
		SR2 : out STD_LOGIC;
		SWD : out STD_LOGIC;
		SHE : out STD_LOGIC;
		DIR : out STD_LOGIC;
		WR : out STD_LOGIC;
		LF : out STD_LOGIC;
		SEXT : out STD_LOGIC;
		SOP1 : out STD_LOGIC;
		SOP2 : out STD_LOGIC;
		ALUOP : out STD_LOGIC_VECTOR (3 downto 0);
		SDMD : out STD_LOGIC;
		WD : out STD_LOGIC;
		SR : out STD_LOGIC);
end main;

architecture Behavioral of main is
	-- Instruction decoder.
	signal typeR : std_logic := '0';
	signal BEQI : STD_LOGIC := '0';
	signal BNEI : STD_LOGIC := '0';
	signal BLTI : STD_LOGIC := '0';
	signal BLETI : STD_LOGIC := '0';
	signal BGTI : STD_LOGIC := '0';
	signal BGETI : STD_LOGIC := '0';
	-- Mux 1.
	signal SDOPC : STD_LOGIC := '0';
	-- Mux 2.
	signal SM : STD_LOGIC := '0';
	-- Level.
	signal NA : STD_LOGIC := '0';
	-- Flags.
	signal LF : STD_LOGIC := '0';
	signal Z : STD_LOGIC := '0';
	signal C : STD_LOGIC := '0';
	signal N : STD_LOGIC := '0';
	signal OV : STD_LOGIC := '0';
	-- Condition.
	signal EQ : STD_LOGIC := '0';
	signal NEQ : STD_LOGIC := '0';
	signal LT : STD_LOGIC := '0';
	signal LE : STD_LOGIC := '0';
	signal GTT : STD_LOGIC := '0';
	signal GET : STD_LOGIC := '0';
	-- Microcode function.
	signal microinstruction1 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
	-- Microcode operation.
	signal operationCodeMux : STD_LOGIC_VECTOR(4 downto 0);
	signal microinstruction2 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
begin
	UnidadDeControl: Control PORT MAP (
		clk => clk;
		clr => clr;
		na => NA;
		typeR  => typeR;
		
		BEQ  => BEQI;
		BNEQ  => BNEI;
		BLT  => BLTI;
		BLE  => BLETI;
		BGT  => BGTI;
		BGET  => BGETI;

		EQ  => EQ;
		NEQ  => NEQ;
		LT  => LT;
		LE  => LE;
		GTT  => GTT;
		GET  => GET;

		SDOPC => SDOPC;
		SM => SM ;
	);

end Behavioral;


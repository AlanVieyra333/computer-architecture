library IEEE;
use IEEE.STD_LOGIC_1164.all;

package UnitControl_pkg is

component Control is
	Port ( clk, clr, na : in  STD_LOGIC;
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
end component;

component Condition is
	Port (
		z : in  STD_LOGIC;
		c : in  STD_LOGIC;
		n : in  STD_LOGIC;
		ov : in  STD_LOGIC;
		
		BEQI : out  STD_LOGIC;
		BNEI : out  STD_LOGIC;
		BLTI : out  STD_LOGIC;
		BLETI : out  STD_LOGIC;
		BGTI : out  STD_LOGIC;
		BGETI : out  STD_LOGIC);
end component;

component Flags is
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
end component;

component InstructionDecoder is
	 Port ( operationCode : in  STD_LOGIC_VECTOR (4 downto 0);
			  typeR : out  STD_LOGIC;
			  BEQI : out  STD_LOGIC;
			  BNEI : out  STD_LOGIC;
			  BLTI : out  STD_LOGIC;
			  BLETI : out  STD_LOGIC;
			  BGTI : out  STD_LOGIC;
			  BGETI : out  STD_LOGIC);
end component;

component Level is
	Port ( clk, clr : in  STD_LOGIC;
		na : out STD_LOGIC);
end component;

component MicrocodeFunction is
	 Port ( functionCode : in  STD_LOGIC_VECTOR (3 downto 0);
		microinstruction : out STD_LOGIC_VECTOR (19 downto 0));
end component;

component MicrocodeOperation is
	Port ( operationCode : in  STD_LOGIC_VECTOR (4 downto 0);
		microinstruction : out STD_LOGIC_VECTOR (19 downto 0));
end component;

component Mux_5 is
	 Port ( selector : in STD_LOGIC;
			input1 : in  STD_LOGIC_VECTOR (4 downto 0);
			input2 : in  STD_LOGIC_VECTOR (4 downto 0);
			output : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component Mux_20 is
	 Port ( selector : in  STD_LOGIC;
			  input1 : in  STD_LOGIC_VECTOR (19 downto 0);
			  input2 : in  STD_LOGIC_VECTOR (19 downto 0);
			  output : out  STD_LOGIC_VECTOR (19 downto 0));
end component;

component UnitControl is
	Port ( clk, clr : in  STD_LOGIC;
		functionCode : in STD_LOGIC_VECTOR(3 downto 0);
		operationCode : in STD_LOGIC_VECTOR(4 downto 0);
		Z, C, N, OV : in STD_LOGIC;
		LFin : in STD_LOGIC;
		
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
end component;

end UnitControl_pkg;

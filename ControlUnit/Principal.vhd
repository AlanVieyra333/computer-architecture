library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.UnitControl_pkg.all;

entity UnitControl is
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
end UnitControl;

architecture Behavioral of UnitControl is
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
	-- Flags.
	signal zOut : STD_LOGIC := '0';
	signal cOut : STD_LOGIC := '0';
	signal nOut : STD_LOGIC := '0';
	signal ovOut : STD_LOGIC := '0';
begin
	ControlAutomata: Control PORT MAP (
		clk => clk,
		clr => clr,
		na => NA,
		typeR  => typeR,
		
		BEQ  => BEQI,
		BNEQ  => BNEI,
		BLT  => BLTI,
		BLE  => BLETI,
		BGT  => BGTI,
		BGET  => BGETI,

		EQ  => EQ,
		NEQ  => NEQ,
		LT  => LT,
		LE  => LE,
		GTT  => GTT,
		GET  => GET,

		SDOPC => SDOPC,
		SM => SM
		);
	
	Multiplexor_5bits: Mux_5 PORT MAP (
		selector => SDOPC,
		input1 => "00000",
		input2 => operationCode,
		output => operationCodeMux
		);
	
	Multiplexor_20bits: Mux_20 PORT MAP (
		selector => SM,
		input1 => microinstruction1,
		input2 => microinstruction2,
		output(19) => UP,
		output(18) => DW,
		output(17) => WPC,
		output(16) => SDMP,
		output(15) => SR2,
		output(14) => SWD,
		output(13) => SHE,
		output(12) => DIR,
		output(11) => WR,
		output(10) => LF,
		output(9) => SEXT,
		output(8) => SOP1,
		output(7) => SOP2,
		output(6) => ALUOP(3),
		output(5) => ALUOP(2),
		output(4) => ALUOP(1),
		output(3) => ALUOP(0),
		output(2) => SDMD,
		output(1) => WD,
		output(0) => SR
		);
		
	MicrocodigoDeFuncion: MicrocodeFunction PORT MAP (
		functionCode  => functionCode,
		microinstruction => microinstruction1
		);
		
	MicrocodigoDeOperacion: MicrocodeOperation PORT MAP (
		operationCode  => operationCodeMux,
		microinstruction => microinstruction2
		);
		
	Nivel: Level PORT MAP (
		clk => clk,
		clr => clr,
		na => NA
		);
		
	Condicion: Condition PORT MAP (
		z => zOut,
		c => cOut,
		n => nOut,
		ov => ovOut,
		
      BEQI => EQ,
      BNEI => NEQ,
      BLTI => LT,
      BLETI => LE,
      BGTI => GTT,
      BGETI => GET
		);
		
	Banderas: Flags PORT MAP (
		zIn => Z,
		cIn => C,
		nIn => N,
		ovIn => OV,
		
      lf => LFin,
      clr => clr,
      clk => clk,
		
		zOut => zOut,
		cOut => cOut,
		nOut => nOut,
		ovOut => ovOut
		);
		
	DecodificadorDeInstrucciones: InstructionDecoder PORT MAP (
		operationCode => operationCode,
		typeR => typeR,
		BEQI => BEQI,
		BNEI => BNEI,
		BLTI => BLTI,
		BLETI => BLETI,
		BGTI => BGTI,
		BGETI => BGETI
		);

end Behavioral;


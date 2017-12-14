library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library work;
use work.ProcesadorESCOMpis.all;
use work.ALU.all;
use work.UnitControl_pkg.all;

entity MIPS is
	Port ( clr, clk: in  STD_LOGIC;
		mips_result: out STD_LOGIC_VECTOR (7 downto 0);
		PC : out STD_LOGIC_VECTOR (7 downto 0)
		);
end entity;

architecture Behavioral of MIPS is
	-- Signals for 'unit control'.
	signal up : std_logic := '0';
	signal dw : std_logic := '0';
	signal wpc : std_logic := '0';
	signal sdmp : std_logic := '0';
	signal sr2 : std_logic := '0';
	signal swd : std_logic := '0';
	signal she : std_logic := '0';
	signal dir : std_logic := '0';
	signal wr : std_logic := '0';
	signal lf : std_logic := '0'; -- *
	signal sext : std_logic := '0';
	signal sop1 : std_logic := '0';
	signal sop2 : std_logic := '0';
	signal sdmd : std_logic := '0';
	signal wd : std_logic := '0';
	signal sr : std_logic := '0';
	
	-- Signals for 'stack'.
	signal stack_direction : std_logic_vector(15 downto 0) := (others => '0');
	signal stack_result : std_logic_vector(15 downto 0) := (others => '0');
	
	-- Signals for 'program memory'.
	signal instruction : std_logic_vector(24 downto 0) := (others => '0');
	
	-- Signals for 'log files'.
   signal read_reg2 : std_logic_vector(3 downto 0) := (others => '0');
	signal write_data : std_logic_vector(15 downto 0) := (others => '0');
   signal read_data1 : std_logic_vector(15 downto 0);
   signal read_data2 : std_logic_vector(15 downto 0);
	
	-- Signals for 'data memory'.
	signal dir_dataMemory : std_logic_vector(15 downto 0) := (others => '0');
	signal data_out_dataMemory : std_logic_vector(15 downto 0) := (others => '0');
	
	-- Signals for 'ALU'.
	signal ALUOP : std_logic_vector(3 downto 0) := (others => '0');
	signal ov, n, z, c : std_logic := '0';
	signal alu_result : std_logic_vector(15 downto 0) := (others => '0');
	
	-- Signals between connections.
	signal sr_result : std_logic_vector(15 downto 0) := (others => '0');
	signal signExtender_result : std_logic_vector(15 downto 0) := (others => '0');
	signal directionExtender_result : std_logic_vector(15 downto 0) := (others => '0');
	signal sext_result : std_logic_vector(15 downto 0) := (others => '0');
	signal sop1_result : std_logic_vector(15 downto 0) := (others => '0');
	signal sop2_result : std_logic_vector(15 downto 0) := (others => '0');
begin
	PC <= stack_result(7 downto 0);
	--mips_result <= alu_result(7 downto 0);
	mips_result <= alu_result(7 downto 0);

	Pila: stack PORT MAP (
		clk => clk,
		clr => clr,
		up => up,
		dw => dw,
		wpc => wpc,
		direction => stack_direction,
		result => stack_result
	);
	
	MemoriaDePrograma: programMemory PORT MAP (
		dir => stack_result,
		operation => instruction
	);

	ArchivosDeRegistro: logFiles PORT MAP (
		clr => clr,
		clk => clk,
		she => she,
		dir => dir,
		wr => wr,
		shamt(3) => instruction(7),
		shamt(2) => instruction(6),
		shamt(1) => instruction(5),
		shamt(0) => instruction(4),
		read_reg1(3) => instruction(15),
		read_reg1(2) => instruction(14),
		read_reg1(1) => instruction(13),
		read_reg1(0) => instruction(12),
		read_reg2 => read_reg2,
		write_reg(3) => instruction(19),
		write_reg(2) => instruction(18),
		write_reg(1) => instruction(17),
		write_reg(0) => instruction(16),
		write_data => write_data,
		read_data1 => read_data1,
		read_data2 => read_data2
	);
	
	MemoriaDeDatos: dataMemory PORT MAP (
		clk => clk,
		dir => dir_dataMemory,
		data_in => read_data2,
		wd => wd,
		data_out => data_out_dataMemory
	);
	
	ALU: ALU_nbits PORT MAP (
		a => sop1_result,
		b => sop2_result,
		aInv => ALUOP(3),
		bInv => ALUOP(2),
		op(1) => ALUOP(1),
		op(0) => ALUOP(0),
		ov => ov,
		n => n,
		z => z,
		c => c,
		result => alu_result
	);
	
	UnidadDeControl:UnitControl PORT MAP (
		clk => clk,
		clr => clr,
		functionCode(3) => instruction(3),
		functionCode(2) => instruction(2),
		functionCode(1) => instruction(1),
		functionCode(0) => instruction(0),
		operationCode(4) => instruction(24),
		operationCode(3) => instruction(23),
		operationCode(2) => instruction(22),
		operationCode(1) => instruction(21),
		operationCode(0) => instruction(20),
		Z => z,
		C => c,
		N => n,
		OV => ov,
		LFin => lf,
      UP => up,
		DW => dw,
		WPC => wpc,
		SDMP => sdmp,
		SR2 => sr2,
		SWD => swd,
		SHE => she,
		DIR => dir,
		WR => wr,
		LF => lf,
		SEXT => sext,
		SOP1 => sop1,
		SOP2 => sop2,
		ALUOP => ALUOP,
		SDMD => sdmd,
		WD => wd,
		SR => sr
	);
	
	ExtensorDeSigno: SignExtender PORT MAP (
		input => instruction(11 downto 0),
		output => signExtender_result
	);
	
	ExtensorDeDireccion: DirectionExtender PORT MAP (
		input => instruction(11 downto 0),
		output => directionExtender_result
	);
	
	-- ******************************** MUXES ********************************
	
	Mux_SDMP: Mux_16 PORT MAP (
		selector => sdmp,
		input1 => instruction(15 downto 0),
		input2 => sr_result,
		output => stack_direction
	);
	
	Mux_SR2: Mux_4 PORT MAP (
		selector => sr2,
		input1 => instruction(11 downto 8),
		input2 => instruction(19 downto 16),
		output => read_reg2
	);
	
	Mux_SWD: Mux_16 PORT MAP (
		selector => swd,
		input1 => instruction(15 downto 0),
		input2 => sr_result,
		output => write_data
	);
	
	Mux_SEXT: Mux_16 PORT MAP (
		selector => sext,
		input1 => signExtender_result,
		input2 => directionExtender_result,
		output => sext_result
	);
	
	Mux_SOP1: Mux_16 PORT MAP (
		selector => sop1,
		input1 => read_data1,
		input2 => stack_result,
		output => sop1_result
	);
	
	Mux_SOP2: Mux_16 PORT MAP (
		selector => sop2,
		input1 => read_data2,
		input2 => sext_result,
		output => sop2_result
	);
	
	Mux_SDMD: Mux_16 PORT MAP (
		selector => sdmd,
		input1 => alu_result,
		input2 => instruction(15 downto 0),
		output => dir_dataMemory
	);
	
	Mux_SR: Mux_16 PORT MAP (
		selector => sr,
		input1 => data_out_dataMemory,
		input2 => alu_result,
		output => sr_result
	);
	
end Behavioral;

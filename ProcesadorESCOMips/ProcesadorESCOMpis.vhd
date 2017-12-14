library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

package ProcesadorESCOMpis is

component logFiles is
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
end component;

component dataMemory is
	generic (
		constant word_len : INTEGER := 16;
		constant density_len : INTEGER := 11);
	Port ( clk : in  STD_LOGIC;
		data_in : in std_logic_vector(word_len-1 downto 0);				-- Data to load.
		dir : in  std_logic_vector(word_len-1 downto 0);					-- Memory address.
		wd : in  STD_LOGIC;															-- Enable write data.
		data_out : out std_logic_vector(word_len-1 downto 0));			-- Data output.
end component;

component programMemory is
	generic (
		constant bus_len : INTEGER := 16;
		constant word_len : INTEGER := 25;
		constant density_len : INTEGER := 11);
	Port ( dir : in std_logic_vector(bus_len-1 downto 0);
		operation : out std_logic_vector(word_len-1 downto 0));
end component;

component stack is
	generic (
		constant bus_len : integer := 16;
		constant sp_len : integer := 4
	);
   Port ( clk, clr : in  STD_LOGIC;
           up, dw, wpc : in  STD_LOGIC;
           direction : in  STD_LOGIC_VECTOR (bus_len-1 downto 0);
           result : out  STD_LOGIC_VECTOR (bus_len-1 downto 0));
end component;

component Mux_4 is
    Port ( selector : in  STD_LOGIC;
           input1, input2 : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Mux_16 is
    Port ( selector : in  STD_LOGIC;
           input1, input2 : in  STD_LOGIC_VECTOR (15 downto 0);
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component SignExtender is
    Port ( input : in  STD_LOGIC_VECTOR (12-1 downto 0);
           output : out  STD_LOGIC_VECTOR (16-1 downto 0));
end component;

component DirectionExtender is
    Port ( input : in  STD_LOGIC_VECTOR (11 downto 0);
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component MIPS is
	Port ( clr, clk: in  STD_LOGIC;
		mips_result: out STD_LOGIC_VECTOR (7 downto 0);
		PC : out STD_LOGIC_VECTOR (7 downto 0)
		);
end component;

component CLR_Rectifier is
    Port ( rclr, clk : in  STD_LOGIC;
           clr : out  STD_LOGIC);
end component;

component FrecuencyDivider is
	generic (
		constant frec :  unsigned(31 downto 0) := "11101110011010110010100000000000" -- 4,000,000,000
		--constant frec :  unsigned(31 downto 0) := "00000000000000000000000000001010" -- 10
		);
	Port ( osc_clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           clk : out  STD_LOGIC);
end component;

end ProcesadorESCOMpis;

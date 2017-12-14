LIBRARY ieee;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;	--PERMITE USAR STD_LOGIC 

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
USE ieee.std_logic_ARITH.ALL;

ENTITY UnitControl_TB IS
END UnitControl_TB;
 
ARCHITECTURE behavior OF UnitControl_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UnitControl
    PORT(
         clk : IN  std_logic;
         clr : IN  std_logic;
         functionCode : IN  std_logic_vector(3 downto 0);
         operationCode : IN  std_logic_vector(4 downto 0);
         Z : IN  std_logic;
         C : IN  std_logic;
         N : IN  std_logic;
         OV : IN  std_logic;
         LFin : IN  std_logic;
         UP : OUT  std_logic;
         DW : OUT  std_logic;
         WPC : OUT  std_logic;
         SDMP : OUT  std_logic;
         SR2 : OUT  std_logic;
         SWD : OUT  std_logic;
         SHE : OUT  std_logic;
         DIR : OUT  std_logic;
         WR : OUT  std_logic;
         LF : OUT  std_logic;
         SEXT : OUT  std_logic;
         SOP1 : OUT  std_logic;
         SOP2 : OUT  std_logic;
         ALUOP : OUT  std_logic_vector(3 downto 0);
         SDMD : OUT  std_logic;
         WD : OUT  std_logic;
         SR : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
   signal functionCode : std_logic_vector(3 downto 0) := (others => '0');
   signal operationCode : std_logic_vector(4 downto 0) := (others => '0');
   signal Z : std_logic := '0';
   signal C : std_logic := '0';
   signal N : std_logic := '0';
   signal OV : std_logic := '0';
   signal LFin : std_logic := '0';

 	--Outputs
   signal UP : std_logic;
   signal DW : std_logic;
   signal WPC : std_logic;
   signal SDMP : std_logic;
   signal SR2 : std_logic;
   signal SWD : std_logic;
   signal SHE : std_logic;
   signal DIR : std_logic;
   signal WR : std_logic;
   signal LF : std_logic;
   signal SEXT : std_logic;
   signal SOP1 : std_logic;
   signal SOP2 : std_logic;
   signal ALUOP : std_logic_vector(3 downto 0);
   signal SDMD : std_logic;
   signal WD : std_logic;
   signal SR : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UnitControl PORT MAP (
          clk => clk,
          clr => clr,
          functionCode => functionCode,
          operationCode => operationCode,
          Z => Z,
          C => C,
          N => N,
          OV => OV,
          LFin => LFin,
          UP => UP,
          DW => DW,
          WPC => WPC,
          SDMP => SDMP,
          SR2 => SR2,
          SWD => SWD,
          SHE => SHE,
          DIR => DIR,
          WR => WR,
          LF => LF,
          SEXT => SEXT,
          SOP1 => SOP1,
          SOP2 => SOP2,
          ALUOP => ALUOP,
          SDMD => SDMD,
          WD => WD,
          SR => SR
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
 

   -- ------------------------------------------------------------------------------
   -- Stimulus process																	
   stim_proc: process
		file ARCH_RES : TEXT;																					
		variable LINEA_RES : line;
		
		file ARCH_VEC : TEXT;
		variable LINEA_VEC : line;
		
		variable VAR_CLR : std_logic;
		variable VAR_CLK : std_logic;
		variable VAR_functionCode : std_logic_vector(3 downto 0);
		variable VAR_operationCode : std_logic_vector(4 downto 0);
		variable VAR_Z : std_logic;
		variable VAR_C : std_logic;
		variable VAR_N : std_logic;
		variable VAR_OV : std_logic;
		variable VAR_LFin : std_logic;
		
		variable VAR_microinstruction : std_logic_vector(19 downto 0);
   begin		
		file_open(ARCH_VEC, "input.txt", READ_MODE); 	
		file_open(ARCH_RES, "output.txt", WRITE_MODE); 	

		write(LINEA_RES, "OP_CODE", right, 7+1);	--ESCRIBE LA CADENA " "
		write(LINEA_RES, "FUN_CODE", right, 8+1);	--ESCRIBE LA CADENA " "
		write(LINEA_RES, "BANDERAS", right, 8+1);	--ESCRIBE LA CADENA " "
		write(LINEA_RES, "CLR", right, 3+1);	--ESCRIBE LA CADENA " "
		write(LINEA_RES, "LF", right, 2+1);	--ESCRIBE LA CADENA " "
		write(LINEA_RES, "MICROINSTRUCCION", right, 20+1);	--ESCRIBE LA CADENA " "
		write(LINEA_RES, "NIVEL", right, 5+1);	--ESCRIBE LA CADENA " "
		
		writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

		WAIT FOR 100 nS;
		FOR I IN 1 TO 52 LOOP
			readline(ARCH_VEC,LINEA_VEC); -- lee una linea completa
			-- ********************************************************
			read(LINEA_VEC, VAR_operationCode);
			read(LINEA_VEC, VAR_functionCode);
			read(LINEA_VEC, VAR_OV);
			read(LINEA_VEC, VAR_N);
			read(LINEA_VEC, VAR_Z);
			read(LINEA_VEC, VAR_C);
			read(LINEA_VEC, VAR_CLR);
			read(LINEA_VEC, VAR_LFin);
			
			WAIT UNTIL RISING_EDGE(CLK);											-- Esperar AL FLANCO DE SUBIDA 
			
			operationCode <= VAR_operationCode;
			functionCode <= VAR_functionCode;
			OV <= VAR_OV;
			N <= VAR_N;
			Z <= VAR_Z;
			C <= VAR_C;
			CLR <= VAR_CLR;
			LFin <= VAR_LFin;
			
			WAIT for 2 ns;
			
			VAR_microinstruction(19) := UP;
			VAR_microinstruction(18) := DW;
			VAR_microinstruction(17) := WPC;
			VAR_microinstruction(16) := SDMP;
			VAR_microinstruction(15) := SR2;
			VAR_microinstruction(14) := SWD;
			VAR_microinstruction(13) := SHE;
			VAR_microinstruction(12) := DIR;
			VAR_microinstruction(11) := WR;
			VAR_microinstruction(10) := LF;
			VAR_microinstruction(9) := SEXT;
			VAR_microinstruction(8) := SOP1;
			VAR_microinstruction(7) := SOP2;
			VAR_microinstruction(6) := ALUOP(3);
			VAR_microinstruction(5) := ALUOP(2);
			VAR_microinstruction(4) := ALUOP(1);
			VAR_microinstruction(3) := ALUOP(0);
			VAR_microinstruction(2) := SDMD;
			VAR_microinstruction(1) := WD;
			VAR_microinstruction(0) := SR;
			
			write(LINEA_RES, VAR_operationCode, right, 8);					-- ESCRIBE EL CAMPO RR1
			write(LINEA_RES, VAR_functionCode, 	right, 9);					-- ESCRIBE EL CAMPO RR2
			write(LINEA_RES, VAR_OV, right, 6);									-- ESCRIBE EL CAMPO SH
			write(LINEA_RES, VAR_N, right, 1);									-- ESCRIBE EL CAMPO SH
			write(LINEA_RES, VAR_Z, right, 1);									-- ESCRIBE EL CAMPO SH
			write(LINEA_RES, VAR_C, right, 1);									-- ESCRIBE EL CAMPO SH
			
			write(LINEA_RES, VAR_CLR, right, 4);								-- ESCRIBE EL CAMPO SH
			write(LINEA_RES, VAR_LFin, right, 3);									-- ESCRIBE EL CAMPO SH
			write(LINEA_RES, VAR_microinstruction, right, 21);				-- ESCRIBE EL CAMPO SH
			write(LINEA_RES, "ALTO", right, 6);									-- ESCRIBE EL CAMPO SH
			
			writeline(ARCH_RES,LINEA_RES);										-- Escribe la linea en el archivo
			-- **********************************************************************
			
			WAIT UNTIL FALLING_EDGE(CLK);											-- Esperar AL FLANCO DE BAJADA.
			
			WAIT for 2 ns;
			VAR_microinstruction(19) := UP;
			VAR_microinstruction(18) := DW;
			VAR_microinstruction(17) := WPC;
			VAR_microinstruction(16) := SDMP;
			VAR_microinstruction(15) := SR2;
			VAR_microinstruction(14) := SWD;
			VAR_microinstruction(13) := SHE;
			VAR_microinstruction(12) := DIR;
			VAR_microinstruction(11) := WR;
			VAR_microinstruction(10) := LF;
			VAR_microinstruction(9) := SEXT;
			VAR_microinstruction(8) := SOP1;
			VAR_microinstruction(7) := SOP2;
			VAR_microinstruction(6) := ALUOP(3);
			VAR_microinstruction(5) := ALUOP(2);
			VAR_microinstruction(4) := ALUOP(1);
			VAR_microinstruction(3) := ALUOP(0);
			VAR_microinstruction(2) := SDMD;
			VAR_microinstruction(1) := WD;
			VAR_microinstruction(0) := SR;
			
			if CLR = '1' then
				WAIT FOR 2 nS;
				CLR <= '0';
			end if;			
			
			write(LINEA_RES, VAR_operationCode, right, 8);					-- ESCRIBE EL CAMPO RR1
			write(LINEA_RES, VAR_functionCode, 	right, 9);					-- ESCRIBE EL CAMPO RR2
			write(LINEA_RES, VAR_OV, right, 6);									-- ESCRIBE EL CAMPO SH
			write(LINEA_RES, VAR_N, right, 1);									-- ESCRIBE EL CAMPO SH
			write(LINEA_RES, VAR_Z, right, 1);									-- ESCRIBE EL CAMPO SH
			write(LINEA_RES, VAR_C, right, 1);									-- ESCRIBE EL CAMPO SH
			
			write(LINEA_RES, VAR_CLR, right, 4);								-- ESCRIBE EL CAMPO SH
			write(LINEA_RES, VAR_LFin, right, 3);									-- ESCRIBE EL CAMPO SH
			write(LINEA_RES, VAR_microinstruction, right, 21);				-- ESCRIBE EL CAMPO SH
			write(LINEA_RES, "BAJO", right, 6);									-- ESCRIBE EL CAMPO SH
			
			writeline(ARCH_RES,LINEA_RES);										-- Escribe la linea en el archivo
		end loop;
		file_close(ARCH_VEC);  														-- cierra el archivo
		file_close(ARCH_RES);  														-- cierra el archivo

      wait;
   end process;

END;

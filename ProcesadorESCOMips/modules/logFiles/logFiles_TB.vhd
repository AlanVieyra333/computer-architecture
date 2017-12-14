LIBRARY ieee;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;	--PERMITE USAR STD_LOGIC 

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
USE ieee.std_logic_ARITH.ALL;
  
ENTITY logFiles_TB IS
END logFiles_TB;
 
ARCHITECTURE behavior OF logFiles_TB IS 
 
    COMPONENT logFiles
    PORT(
         clr : IN  std_logic;
         clk : IN  std_logic;
         she : IN  std_logic;
         wr : IN  std_logic;
         dir : IN  std_logic;
         shamt : IN  std_logic_vector(3 downto 0);
         write_data : IN  std_logic_vector(15 downto 0);
         write_reg : IN  std_logic_vector(3 downto 0);
         read_reg1 : IN  std_logic_vector(3 downto 0);
         read_reg2 : IN  std_logic_vector(3 downto 0);
         read_data1 : OUT  std_logic_vector(15 downto 0);
         read_data2 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clr : std_logic := '0';
   signal clk : std_logic := '0';
   signal she : std_logic := '0';
   signal wr : std_logic := '0';
   signal dir : std_logic := '0';
   signal shamt : std_logic_vector(3 downto 0) := (others => '0');
   signal write_data : std_logic_vector(15 downto 0) := (others => '0');
   signal write_reg : std_logic_vector(3 downto 0) := (others => '0');
   signal read_reg1 : std_logic_vector(3 downto 0) := (others => '0');
   signal read_reg2 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal read_data1 : std_logic_vector(15 downto 0);
   signal read_data2 : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: logFiles PORT MAP (
          clr => clr,
          clk => clk,
          she => she,
          wr => wr,
          dir => dir,
          shamt => shamt,
          write_data => write_data,
          write_reg => write_reg,
          read_reg1 => read_reg1,
          read_reg2 => read_reg2,
          read_data1 => read_data1,
          read_data2 => read_data2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	-- ------------------------------------------------------------------------------
   -- Stimulus process																	
   stim_proc: process
		file ARCH_RES : TEXT;																					
		variable LINEA_RES : line;
		
		file ARCH_VEC : TEXT;
		variable LINEA_VEC : line;
		VARIABLE CADENA : STRING(1 TO 4);
		
		variable VAR_CLR : std_logic;
		variable VAR_CLK : std_logic;
		variable VAR_SHE : std_logic;
		variable VAR_WR : std_logic;
		variable VAR_DIR : std_logic;
		variable VAR_SHAMT : std_logic_vector(3 downto 0);
		variable VAR_WRITE_DATA : std_logic_vector(15 downto 0);
		variable VAR_WRITE_REG : std_logic_vector(3 downto 0);
		variable VAR_READ_REG1 : std_logic_vector(3 downto 0);
		variable VAR_READ_REG2 : std_logic_vector(3 downto 0);
		
		variable VAR_READ_DATA1 : std_logic_vector(15 downto 0);
		variable VAR_READ_DATA2 : std_logic_vector(15 downto 0);
   begin		
		file_open(ARCH_VEC, "input.txt", READ_MODE); 	
		file_open(ARCH_RES, "output.txt", WRITE_MODE); 	

		CADENA := " RR1";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA " RR1"
		CADENA := " RR2";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA " RR2"
		CADENA := "  SH";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "  SH"
		CADENA := "WREG";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "WREG"
		CADENA := "  WD";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "  WD"
		CADENA := "  WR";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "  WR"
		CADENA := " SHE";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA " SHE"
		CADENA := " DIR";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA " DIR"
		CADENA := " RD1";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA " RD1"
		CADENA := " RD2";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA " RD2"
		writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

		WAIT FOR 100 NS;
		FOR I IN 1 TO 5 LOOP
			readline(ARCH_VEC,LINEA_VEC); -- lee una linea completa

			--Inputs
			Hread(LINEA_VEC, VAR_READ_REG1);
			read_reg1 <= VAR_READ_REG1;
			Hread(LINEA_VEC, VAR_READ_REG2);
			read_reg2 <= VAR_READ_REG2;
			Hread(LINEA_VEC, VAR_SHAMT);
			shamt <= VAR_SHAMT;
			Hread(LINEA_VEC, VAR_WRITE_REG);
			write_reg <= VAR_WRITE_REG;
			Hread(LINEA_VEC, VAR_WRITE_DATA);
			write_data <= VAR_WRITE_DATA;
			read(LINEA_VEC, VAR_WR);
			wr <= VAR_WR;
			read(LINEA_VEC, VAR_SHE);
			she <= VAR_SHE;
			read(LINEA_VEC, VAR_DIR);
			dir <= VAR_DIR;
			read(LINEA_VEC, VAR_CLR);
			clr <= VAR_CLR;
			
			WAIT UNTIL RISING_EDGE(CLK);											-- Esperar AL FLANCO DE SUBIDA 

			VAR_READ_DATA1 := read_data1;
			VAR_READ_DATA2 := read_data2;			
			Hwrite(LINEA_RES, VAR_READ_REG1, right, 5);						-- ESCRIBE EL CAMPO RR1
			Hwrite(LINEA_RES, VAR_READ_REG2, 	right, 5);					-- ESCRIBE EL CAMPO RR2
			Hwrite(LINEA_RES, VAR_SHAMT, 	right, 5);							-- ESCRIBE EL CAMPO SH
			Hwrite(LINEA_RES, VAR_WRITE_REG, 	right, 5);					-- ESCRIBE EL CAMPO WREG
			Hwrite(LINEA_RES, VAR_WRITE_DATA, 	right, 5);					-- ESCRIBE EL CAMPO WD
			write(LINEA_RES, VAR_WR, 	right, 5);								-- ESCRIBE EL CAMPO WR
			write(LINEA_RES, VAR_SHE, 	right, 5);								-- ESCRIBE EL CAMPO SHE
			write(LINEA_RES, VAR_DIR, 	right, 5);								-- ESCRIBE EL CAMPO DIR
			Hwrite(LINEA_RES, VAR_READ_DATA1, 	right, 5);					-- ESCRIBE EL CAMPO RD1
			Hwrite(LINEA_RES, VAR_READ_DATA2, 	right, 5);					-- ESCRIBE EL CAMPO RD2

			writeline(ARCH_RES,LINEA_RES);										-- Escribe la linea en el archivo
			
		end loop;
		file_close(ARCH_VEC);  														-- cierra el archivo
		file_close(ARCH_RES);  														-- cierra el archivo

      wait;
   end process;
END;

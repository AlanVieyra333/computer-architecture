LIBRARY ieee;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;	--PERMITE USAR STD_LOGIC 

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
USE ieee.std_logic_ARITH.ALL;
 
ENTITY dataMemory_TB IS
END dataMemory_TB;
 
ARCHITECTURE behavior OF dataMemory_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dataMemory
    PORT(
         clk : IN  std_logic;
         data_in : IN  std_logic_vector(15 downto 0);
         dir : IN  std_logic_vector(15 downto 0);
         wd : IN  std_logic;
         data_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal dir : std_logic_vector(15 downto 0) := (others => '0');
   signal wd : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(15 downto 0) := (others => '0');

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dataMemory PORT MAP (
          clk => clk,
          data_in => data_in,
          dir => dir,
          wd => wd,
          data_out => data_out
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
		
		variable var_data_in : std_logic_vector(15 downto 0);					-- Data to load.
		variable var_dir : std_logic_vector(15 downto 0);						-- Memory address.
		variable var_wd : STD_LOGIC;													-- Enable write data.
		
		variable var_data_out : std_logic_vector(15 downto 0);				-- Data output.
   begin		
		file_open(ARCH_VEC, "input.txt", READ_MODE); 	
		file_open(ARCH_RES, "output.txt", WRITE_MODE); 	

		CADENA := "   A";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "   A"
		CADENA := "  DI";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "  DI"
		CADENA := "  WD";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "  WD"
		CADENA := "  Bo";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "  Do"
		writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

		WAIT FOR 100 NS;
		FOR I IN 1 TO 4 LOOP
			readline(ARCH_VEC,LINEA_VEC); -- lee una linea completa
			
			--Inputs
			Hread(LINEA_VEC, var_data_in);
			data_in <= var_data_in;
			Hread(LINEA_VEC, var_dir);
			dir <= var_dir;
			read(LINEA_VEC, var_wd);
			wd <= var_wd;
			
			WAIT UNTIL RISING_EDGE(CLK);										-- Esperar AL FLANCO DE SUBIDA 

			var_data_out := data_out;	
			Hwrite(LINEA_RES, var_dir, right, 5);							-- ESCRIBE EL CAMPO A
			Hwrite(LINEA_RES, var_data_in, 	right, 5);					-- ESCRIBE EL CAMPO DI
			write(LINEA_RES, var_wd, 	right, 5);							-- ESCRIBE EL CAMPO WD
			Hwrite(LINEA_RES, var_data_out, 	right, 5);					-- ESCRIBE EL CAMPO Do
			
			writeline(ARCH_RES,LINEA_RES);										-- Escribe la linea en el archivo
			
		end loop;
		file_close(ARCH_VEC);  														-- cierra el archivo
		file_close(ARCH_RES);  														-- cierra el archivo

      wait;
   end process;
END;

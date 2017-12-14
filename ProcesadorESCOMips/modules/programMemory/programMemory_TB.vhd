LIBRARY ieee;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;	--PERMITE USAR STD_LOGIC 

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
USE ieee.std_logic_ARITH.ALL;

ENTITY programMemory_TB IS
END programMemory_TB;
 
ARCHITECTURE behavior OF programMemory_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT programMemory
    PORT(
         dir : IN  std_logic_vector(11 downto 0);
         operation : OUT  std_logic_vector(24 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal dir : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal operation : std_logic_vector(24 downto 0);
   -- No clocks detected in port list. Replace clk below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: programMemory PORT MAP (
          dir => dir,
          operation => operation
        );
 
-- ------------------------------------------------------------------------------
   -- Stimulus process																	
   stim_proc: process
		file ARCH_RES : TEXT;																					
		variable LINEA_RES : line;
		
		file ARCH_VEC : TEXT;
		variable LINEA_VEC : line;
		VARIABLE CADENA : STRING(1 TO 5);
		
		variable var_dir : std_logic_vector(11 downto 0);						-- Memory address.
		
		variable var_operation : std_logic_vector(24 downto 0);				-- Data output.
   begin		
		file_open(ARCH_VEC, "input.txt", READ_MODE); 	
		file_open(ARCH_RES, "output.txt", WRITE_MODE); 	

		CADENA := "    A";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "    A"
		CADENA := " CODE";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA " CODE"
		CADENA := "19,16";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "19,16"
		CADENA := "15,12";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "15,12"
		CADENA := "11,08";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "11,08"
		CADENA := "07,04";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "07,04"
		CADENA := "03,00";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);	--ESCRIBE LA CADENA "03,00"
		writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

		WAIT FOR 100 NS;
		FOR I IN 1 TO 7 LOOP
			readline(ARCH_VEC,LINEA_VEC); -- lee una linea completa
			
			--Inputs
			Hread(LINEA_VEC, var_dir);
			dir <= var_dir;
			WAIT FOR 10 NS;
			var_operation := operation;	
			Hwrite(LINEA_RES, var_dir, right, 6);							-- ESCRIBE EL CAMPO A
			write(LINEA_RES, var_operation, right, 27);					-- ESCRIBE EL CAMPO DI
			
			writeline(ARCH_RES,LINEA_RES);										-- Escribe la linea en el archivo
			
		end loop;
		file_close(ARCH_VEC);  														-- cierra el archivo
		file_close(ARCH_RES);  														-- cierra el archivo

      wait;
   end process;

END;

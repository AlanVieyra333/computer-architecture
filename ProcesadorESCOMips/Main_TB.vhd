LIBRARY ieee;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE ieee.std_logic_TEXTIO.ALL;	--PERMITE USAR STD_LOGIC 

USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
USE ieee.std_logic_ARITH.ALL;

ENTITY Main_TB IS
END Main_TB;
 
ARCHITECTURE behavior OF Main_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Main
    PORT(
         RCLR : IN  std_logic;
         RCLK : IN  std_logic;
         DATA : OUT  std_logic_vector(7 downto 0);
         PC : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal RCLR : std_logic := '0';
   signal RCLK : std_logic := '0';

 	--Outputs
   signal DATA : std_logic_vector(7 downto 0);
   signal PC : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Main PORT MAP (
          RCLR => RCLR,
          RCLK => RCLK,
          DATA => DATA,
          PC => PC
        );

   -- Clock process definitions
   CLK_process :process
   begin
		RCLK <= '1';
		wait for CLK_period/2;
		RCLK <= '0';
		wait for CLK_period/2;
   end process;
 

   -- ------------------------------------------------------------------------------
   -- Stimulus process																	
   stim_proc: process
		file ARCH_RES : TEXT;																					
		variable LINEA_RES : line;
		
		variable var_DATA : std_logic_vector(7 downto 0);					-- Data to load.
		variable var_PC : std_logic_vector(7 downto 0);						-- Memory address.

   begin		
		file_open(ARCH_RES, "output.txt", WRITE_MODE); 	

		write(LINEA_RES, "PC", right, 2+1);						--ESCRIBE LA CADENA "   A"
		write(LINEA_RES, "Instruccion", right, 11+1);		--ESCRIBE LA CADENA "  DI"
		write(LINEA_RES, "Salida de datos", right, 15+1);	--ESCRIBE LA CADENA "  WD"
		write(LINEA_RES, "Razon del valor en la salida", right, 28+1);	--ESCRIBE LA CADENA "  Do"
		
		writeline(ARCH_RES,LINEA_RES);-- escribe la linea en el archivo

		WAIT FOR 10 NS;
		RCLR <= '1';
		WAIT FOR 7 NS;
		RCLR <= '0';
		
		FOR I IN 1 TO 80 LOOP
			
			WAIT UNTIL RISING_EDGE(RCLK);										-- Esperar AL FLANCO DE SUBIDA 

			var_PC := PC;
			var_DATA := DATA;	
			
			Hwrite(LINEA_RES, var_PC, right, 3);							-- ESCRIBE EL CAMPO A
			Hwrite(LINEA_RES, var_DATA, 	right, 28);							-- ESCRIBE EL CAMPO WD
			
			writeline(ARCH_RES,LINEA_RES);									-- Escribe la linea en el archivo
		end loop;
		file_close(ARCH_RES);  													-- cierra el archivo

      wait;
   end process;

END;

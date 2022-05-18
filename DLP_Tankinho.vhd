library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity DLP_Tankinho is
	port(
	
		-- Sensores
		SNBP : in std_logic;   -- Sensor Nivel Baixo Poco
		SNBT : in std_logic;   -- Sensor Nivel Baixo Tanque
		SNAT : in std_logic;   -- Sensor Nivel Alto Tanque
		
		-- Clock
		ALNBP_CLK  : in std_logic; -- Clock para ALNBP	

		-- Atuador
		BH    : out std_logic;    -- Bomba Hidraulica
		
		-- Alarmes
		ASNBP : out std_logic; -- Alarme Sonoro Nivel Baixo Poco
		ALNBP : out std_logic; -- Alarme Luminoso Nivel Baixo Poco
		
		-- Indicador Visual
		NT_DISPLAY : out std_logic_vector(0 to 7) -- Display Nivel Tanque
		
	);
end DLP_Tankinho;


architecture behavior of DLP_Tankinho is
begin

	contator_process : process (SNBP, SNBT, SNAT, ALNBP_CLK)
	begin
		
		if (sens_reservatorio = '1') then
			
			-- Logica principal
			
		
		else
			
			-- Piscar led de aviso
		
		end if
	
	end process;
	
end behavior;


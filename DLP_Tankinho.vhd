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
		NT_DISPLAY : out std_logic_vector(0 to 6) -- Display Nivel Tanque
		
	);
end DLP_Tankinho;


architecture behavior of DLP_Tankinho is
begin

	contator_process : process (SNBP, SNBT, SNAT, ALNBP_CLK)
	begin

				
			-- Verifica se há água no poço
			if (SNBP='0') then
				-- Mantem alarmes desligados
				ASNBP <= '0';
				ALNBP <= '0';

				if(SNAT='0') then
					BH <= '0';
					NT_DISPLAY <= "0001001";
				
				-- Mantem bomba ligada enquanto tanque não está cheio
				elsif(SNAT='1' and SNBT='1') then
					BH <= '1';
					NT_DISPLAY <= "1110111";
					
				elsif(SNAT='1' and SNBT='0') then
					NT_DISPLAY <= "1101010";
				end if;
				
			else
				-- Desliga bomba e aciona alarmes
				BH <= '0';

				ASNBP <= '1';
				ALNBP <= ALNBP_CLK;

			end if;
	
	end process;
	
end behavior;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity DLP_Tankinho is
	port(

		-- Sensores boias no reservatorio e caixas dagua
		sens_reservatorio 	  : in  std_logic;
		sens_externo_nivel_min : in std_logic;
		sens_externo_nivel_max : in std_logic;
		sens_caixa_dagua 		  : in std_logic;
		
		-- Placa Solar gerando energia e motor bomba funcionando
		placa_solar	: in std_logic;
		bomba_dagua	: out std_logic;
		
		-- Clock utilizado para piscar o led em caso de reservatorio vazio
		reservatorio_clk : out std_logic;
		
		-- Indicacoes de nivel do reservatorio e caixas dagua
		reservatorio  : out std_logic;
		caixa_externo : out std_logic_vector(0 to 7);
		caixa_dagua	  : out std_logic_vector(0 to 7)
		
	);
end DLP_Tankinho;


architecture behavior of DLP_Tankinho is
begin

	contator_process : process (sens_reservatorio, sens_externo_nivel_min, sens_externo_nivel_max, sens_caixa_dagua, placa_solar)
	begin
		
		if (sens_reservatorio = '1') then
			
			-- Logica principal
			
		
		else
			
			-- Piscar led de aviso
		
		end if
	
	end process;
	
end behavior;


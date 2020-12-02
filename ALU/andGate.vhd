library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--define entity AND gate
entity andGate is 
    Port( Input0,Input1: in bit;
          Output	 : out bit);
end andGate;

--define behaviour of AND gate
architecture Behavioral of andGate is

begin
	process (Input0,Input1)
		begin
		--Output 1 only if Input0 and Input1 both are 1 else 0
         		if Input0 = '1' and Input1='1' then 
				Output<='1';
			else 
				Output<='0';
			end if;
		
	end process;

end Behavioral;
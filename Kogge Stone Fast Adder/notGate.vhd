library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--define entity NOT gate
entity notGate is 
    Port( Input  : in bit;
          Output	 : out bit);
end notGate;

--define behaviour of NOT gate
architecture Behavioral of notGate is

begin
	process (Input)
		begin
		--Output 1 if Input=0 and 0 if Input =1
			if Input = '0' then
				Output<='1';
			else
				Output<='0';
			end if;
			
	end process;

end Behavioral;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--define entity OR gate
entity orGate is 
    Port( Input0,Input1: in bit;
          Output	 : out bit);
end orGate;

--define behaviour of OR gate
architecture Behavioral of orGate is

begin
	process (Input0,Input1)
		begin
		-- Output is 0 only if Input0 and Input1 both are 0 , else 1
         		if Input0 = '0' and Input1='0' then
					Output<='0';
			else
					Output<='1';
			end if;
				
	end process;
 
end Behavioral;
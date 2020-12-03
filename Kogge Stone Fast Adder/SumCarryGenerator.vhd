
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumCarrygenerator is
Port (GP : in bit_vector(1 downto 0);
		c,p : in bit;
		S,C_out : out bit);
end SumCarryGenerator;

architecture Structural of SumCarryGenerator is

--add component AND Gate
component andGate
port(Input0,Input1:in bit;
	  Output  :out bit);
end component;

--add component XOR Gate
component XORGate
port(Input0,Input1:in bit;
	  Output  :out bit);
end component;

--add component OR Gate
component orGate
port(Input0,Input1:in bit;
	  Output  :out bit);
end component;

--Define temporary signal
signal temp1: bit;

begin

C_out  <= GP(0);
Sum    :  XORgate port map(Input0=>c,Input1=>p,Output=>S);

end Structural;
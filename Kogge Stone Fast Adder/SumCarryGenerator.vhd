
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumCarrygenerator is
Port (GP : in bit_vector(1 downto 0);
		c,p,C_in : in bit;
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

temp_1     :  andGate port map(Input0=>C_in,Input1=>GP(1),Output=>temp1);
Carry_out  :  orGate port map(Input0=>GP(0),Input1=>temp1,Output=>C_out);
Sum        :  XORgate port map(Input0=>c,Input1=>p,Output=>S);

end Structural;
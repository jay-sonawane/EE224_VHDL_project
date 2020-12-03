library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--define entity GP_Generator
entity GP_Generator is 
    Port( GPinput1,GPinput2: in bit;
          GPoutput	 : out bit_vector(1 downto 0));
end GP_Generator;

--define structure of GP_Generator
architecture Structural of GP_Generator is

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

begin
--define connections with appropriate mapping of the ports

G: andGate port map(Input0=>GPinput1,Input1=>GPinput2,Output=>GPoutput(0));--GP(1) = g = Input1.Input2
P: XORGate port map(Input0=>GPinput1,Input1=>GPinput2,Output=>GPoutput(1));--GP(0) = p = Input1(+)Input2

end Structural;


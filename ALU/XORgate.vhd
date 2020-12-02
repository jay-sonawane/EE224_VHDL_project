library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--define entity XOR gate
entity XORGate is 
    Port( Input0,Input1: in bit;
          Output	 : out bit);
end XORGate;

--define structure of XOR gate
architecture Structural of XORGate is

--add component AND Gate
component andGate
port(Input0,Input1:in bit;
	  Output  :out bit);
end component;

--add component NOT Gate
component notGate
port(Input  :in bit;
	  Output  :out bit);
end component;

--add component OR Gate
component orGate
port(Input0,Input1:in bit;
	  Output  :out bit);
end component;

--define temporary signals(connections)
signal temp1,temp2,temp3,temp4:bit;

begin
--define connections with appropriate mapping of the ports

I0_bar: notGate port map(Input=>Input0,Output=>temp1); 
I1_bar: notGate port map(Input=>Input1,Output=>temp2); 

I0I1_bar: andGate port map(Input0=>Input0,Input1=>temp2,Output=>temp3);
I0_barI1: andGate port map(Input0=>temp1,Input1=>Input1,Output=>temp4); 

Output_xor: orGate port map(Input0=>temp3,Input1=>temp4,Output=>Output);


end Structural;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--define entity GPcell
entity GPcell is 
    Port( GPinput1,GPinput2: in bit_vector(1 downto 0);--GPinput1 = (G[i,j],P[i,j]) , GPinput2 = (G[j-1,k],P[j-1,k])
          GPoutput	 : out bit_vector(1 downto 0));--Gpoutput = (G[i,k],P[i,k])
end GPcell;

--define structure of GPcell
architecture Structural of GPcell is

--add component AND Gate
component andGate
port(Input0,Input1:in bit;
	  Output  :out bit);
end component;

--add component OR Gate
component orGate
port(Input0,Input1:in bit;
	  Output  :out bit);
end component;

--define temporary signals(connections)
signal temp1:bit;

begin
--define connections with appropriate mapping of the ports

P_i_jG_jMinus1_k : andGate port map(Input0=>GPinput1(1),Input1=>GPinput2(0),Output=>temp1);--temp1 = P[i,j].G[j-1,k]
G_i_k            : orGate port map(Input0=>GPinput1(0),Input1=>temp1,Output=>GPoutput(0));--G[i,k] = G[i,j]+temp1

P_i_k            : andGate port map(Input0=>GPinput1(1),Input1=>GPinput2(1),Output=>GPoutput(1));--P[i,k] = P[i,j].P[j-1,k]

end Structural;


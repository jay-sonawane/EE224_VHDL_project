entity MUX_2 is
	port(
		I0: in bit;
		I1: in bit;
		S: in bit; --Control (select) Input
		X : out bit
		);
end entity MUX_2;
		
architecture Struct of MUX_2 is
  component andGate                    -- and component declaration
   port (Input0, Input1: in bit;
      Output: out bit);
  end component;
  
  component notGate
	port (Input: in bit;
      Output: out bit);
  end component;
  
  component orGate
   port (Input0, Input1: in bit;
      Output: out bit);
  end component;
  signal Temp_0, Temp_1, Temp_2: bit;
begin
U0: notGate port map (S,Temp_0);
U1: andGate port map (I0,Temp_0,Temp_1);
U2: andGate port map (I1, S, Temp_2);
U3: orGate port map (Temp_1, Temp_2, X);
end Struct;
entity MUX_2 is
	port(
		I0: in bit;
		I1: in bit;
		S: in bit; --Control (select) Input
		X : out bit
		);
end entity MUX;
		
architecture Struct of MUX_2 is
  component and_gate                    -- and component declaration
   port (A, B: in bit;
      C: out bit);
  end component;
  
  component not_gate
	port (A: in bit;
      B: out bit);
  end component;
  
  component or_gate
   port (A, B: in bit;
      C: out bit);
  end component;
  signal Temp_0, Temp_1, Temp_2: bit;
begin
U0: not_gate port map (A => S,B => Temp_0);
U1: and_gate port map (A => I0, B => Temp_0, C => Temp_1);
U2: and_gate port map (A => I1, B => S, C => Temp_2);
U3: or_gate port map (A => Temp_1, B => Temp_2, C => X);
end Struct;
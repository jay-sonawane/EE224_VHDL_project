entity or_gate is                   -- or gate declaration
   port (A, B: in bit;
      C: out bit);
end entity or_gate;
		
architecture Struct of or_gate is
begin
	C <= '1' when A='1' else
			B;
end Struct;

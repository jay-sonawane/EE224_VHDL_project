entity and_gate is               -- and gate declaration
   port (A, B: in bit;
      C: out bit);
end entity and_gate;
		
architecture Struct of and_gate is
begin
	C <= '0' when A='0' else
			B;
end Struct;
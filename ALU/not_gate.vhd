entity not_gate is                    -- not gate declaration
   port (A : in bit;
      B: out bit);
end entity not_gate;
		
architecture Struct of not_gate is
begin
	B <= '0' when A='1' else
		  '1';
end Struct;
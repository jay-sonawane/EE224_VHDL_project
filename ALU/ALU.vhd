entity ALU is
	port(
		I0: in bit_vector(0 to 15);
		I1: in bit_vector(0 to 15);
		
		S0: in bit; --Control (select) Inputs
		S1: in bit;
		
		A: out bit_vector(0 to 15);  --Output vector
		C: out bit;  --Carry
		Z: out bit  --Zero bit
		);
end entity ALU;

architecture Struct of ALU is
  component ADD                    -- Adder declaration
   port (I0, I1: in bit_vector(0 to 15);
      A: out bit_vector(0 to 15);
		C,Z: out bit);
  end component;
  
  component SUB                    -- Subtractor declaration
   port (I0, I1: in bit_vector(0 to 15);
      A: out bit_vector(0 to 15);
		C,Z: out bit);
  end component;
  
  component  MY_NAND                   -- NAND declaration
   port (I0, I1: in bit_vector(0 to 15);
      A: out bit_vector(0 to 15);
		Z: out bit);
  end component;

  component  MY_XOR                   -- Adder declaration
   port (I0, I1: in bit_vector(0 to 15);
      A: out bit_vector(0 to 15);
		Z: out bit);
  end component;
  
  component MUX_2                    -- MUX (for 2 bits) component declaration
   port (I0, I1, S: in bit;
      X: out bit);
  end component;
  

  
  
  
-- temporary signals for intermediate wires in the circuit
  signal Temp_0, Temp_1, Temp_2, Temp_3, Temp_4, Temp_5: bit;
begin
U0: ADD port map();
U1: SUB port map();
U2: MY_NAND port map();
U3: MY_XOR port map();
U4: MUX_vec port map();
U5: MUX_2 port map();
U6: MUX_bit port map();
end Struct;


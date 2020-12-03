entity ALU is
	port(
		I0: in bit_vector(15 downto 0);
		I1: in bit_vector(15 downto 0);
		
		S0: in bit; --Control (select) Inputs
		S1: in bit;
		
		A: out bit_vector(15 downto 0);  --Output vector
		C: out bit;  --Carry
		Z: out bit  --Zero bit
		);
end entity ALU;

architecture Struct of ALU is
  component KoggeStoneFastAdder is
   Port( Input0,Input2 : in bit_vector(15 downto 0);
          Sum	 		  : out bit_vector(15 downto 0);
			 Carry_in     : in bit;
			 Carry_Output : out bit);
end component;
  
  
  component  MY_NAND       is            -- NAND declaration
   port (I0, I1: in bit_vector(15 downto 0);
      A: out bit_vector(15 downto 0)
		);
  end component;

  component  MY_XOR           is        -- Adder declaration
   port (I0, I1: in bit_vector(15 downto 0);
      A: out bit_vector(15 downto 0)
		);
  end component;
  
  component MUX_2                    -- MUX (for 2 bits) component declaration
   port (I0, I1, S: in bit;
      X: out bit);
  end component;
  
  component MUX_vec                   -- MUX (for 2 vectors) component declaration
   port (I0, I1: in bit_vector(15 downto 0);
	S: in bit;
      X: out bit_vector(15 downto 0));
  end component;
  
  component Z_check                   -- MUX (for 2 vectors) component declaration
   port (I0: in bit_vector(15 downto 0);
      X: out bit);
  end component;
  
  
  
  
-- temporary signals for intermediate wires in the circuit
  signal Temp_0, Temp_1, Temp_2, Temp_3, Temp_4, Temp_5: bit;
  signal vec_0, vec_1, vec_2, vec_3, vec_4 : bit_vector(15 downto 0);
begin
U0: KoggeStoneFastAdder port map(I0, I1, vec_0, S0, Temp_0);
U1: MY_NAND port map(I0, I1, vec_1);
U2: MY_XOR port map(I0, I1, vec_2);
U3: MUX_vec  port map(vec_1,vec_2, S0,vec_3);
U4: MUX_vec port map(vec_0,vec_3, S1, vec_4);
U5: MUX_2 port map(Temp_0, '0', S1, C); --To ret
U6: Z_check port map(vec_4,Z);

A<=vec_4;

end Struct;


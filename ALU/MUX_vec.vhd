entity MUX_vec is
	port(
		I0,I1: in bit_vector(15 downto 0);
		S: in bit; --Control (select) Input
		X : out bit_vector(15 downto 0)
		);
end entity MUX_vec;
		
	
architecture Struct of MUX_vec is

component MUX_2                    -- MUX (for 2 bits) component declaration
   port (I0, I1, S: in bit;
      X: out bit);
  end component;

  
  begin
  GEN_MUX: for I in 0 to 15 generate
U: MUX_2 port map(I0(I), I1(I), S, X(I));
end generate GEN_MUX;
 end Struct;
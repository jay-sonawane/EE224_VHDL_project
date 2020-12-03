entity Z_check is
	port(
		I0: in bit_vector(15 downto 0);
		X : out bit
		);
end entity Z_check;
		
	
architecture Struct of Z_check is

  
	component orGate                    -- OR component
   port (Input0,Input1: in bit;
      Output: out bit);
  end component;

  component notGate                    -- Not component
   port (Input: in bit;
      Output: out bit);
  end component;
  
  signal vec_0 : bit_vector(15 downto 0);
  signal temp : bit;
  begin
  vec_0(0)<='0';
  GEN_OR: for I in 0 to 14 generate
	U: orGate port map(vec_0(I), I0(I), vec_0(I+1));
end generate GEN_OR;
	U2: orGate port map(vec_0(15), I0(15), temp);
	U3: notGate port map(temp, X);
 end Struct;
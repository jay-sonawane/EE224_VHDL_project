entity MY_XOR is 
port( I0,I1:in bit_vector(15 downto 0);
		A:out bit_vector(15 downto 0)
		);
		
End MY_XOR;
 architecture behavioral of MY_XOR is
 
 begin
 
-- O <= I0 and I1;
GEN_XOR: for I in 0 to 15 generate
A(I) <= I0(I) XOR I1(I);
end generate GEN_XOR;
 end behavioral;
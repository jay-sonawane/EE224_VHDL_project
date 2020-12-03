entity MY_NAND is 
port( I0,I1:in bit_vector(15 downto 0);
		A:out bit_vector(15 downto 0)
		);
		
End MY_NAND;
 architecture behavioral of MY_NAND is
 
 begin
 
-- O <= I0 and I1;
GEN_NAND: for I in 0 to 15 generate
A(I) <= I0(I) NAND I1(I);
end generate GEN_NAND;
 end behavioral;
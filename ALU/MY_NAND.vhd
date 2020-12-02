entity MY_NAND is 
port( A,B:in bit_vector(0 to 15);
		O:out bit_vector(0 to 15)
		);
		
End MY_NAND;
 architecture behavioral of MY_NAND is
 
 begin
 
-- O <= A and B;
GEN_NAND: for I in 0 to 15 generate
O(I) <= A(I) NAND B(I);
end generate GEN_NAND;
 end behavioral;
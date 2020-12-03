library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--define entity KoggeStoneFastAdder
entity KoggeStoneFastAdder is 
    Port( Input0,Input2: in bit_vector(15 downto 0);
          Sum	 		  : out bit_vector(15 downto 0);
			 Carry_in     : in bit;
			 Carry_Output : out bit);
end KoggeStoneFastAdder;

architecture Structural of KoggeStoneFastAdder is


--Component for XOR
component XORGate
port(Input0,Input1:in bit;
	  Output  :out bit);
end component;

--add component GP_Generator
component GP_Generator
Port( GPinput1,GPinput2  : in bit;
          GPoutput	 	 : out bit_vector(1 downto 0));
end component;

--add component GPcell
component GPcell
Port( GPinput1,GPinput2 : in bit_vector(1 downto 0);--GPinput1 = (G[i,j],P[i,j]) , GPinput2 = (G[j-1,k],P[j-1,k])
          GPoutput	   : out bit_vector(1 downto 0));--Gpoutput = (G[i,k],P[i,k])
end component;

--add component SumCarrygenerator
component SumCarrygenerator
Port( GP       : in bit_vector(1 downto 0);
		c,p,C_in : in bit;
		S,C_out  : out bit);
end component;

--Define GP[i:j] signals

signal GP0_0,GP1_1,GP2_2,GP3_3,GP4_4,GP5_5,GP6_6,GP7_7,GP8_8,GP9_9,GP10_10,GP11_11,GP12_12,GP13_13,GP14_14,GP15_15: bit_vector(1 downto 0);--Stage 0 GP
signal GP1_0,GP2_1,GP3_2,GP4_3,GP5_4,GP6_5,GP7_6,GP8_7,GP9_8,GP10_9,GP11_10,GP12_11,GP13_12,GP14_13,GP15_14       : bit_vector(1 downto 0);--Stage 1 GP
signal GP2_0,GP3_0,GP4_1,GP5_2,GP6_3,GP7_4,GP8_5,GP9_6,GP10_7,GP11_8,GP12_9,GP13_10,GP14_11,GP15_12               : bit_vector(1 downto 0);--Stage 2 GP
signal GP4_0,GP5_0,GP6_0,GP7_0,GP8_1,GP9_2,GP10_3,GP11_4,GP12_5,GP13_6,GP14_7,GP15_8                              : bit_vector(1 downto 0);--Stage 3 GP
signal GP8_0,GP9_0,GP10_0,GP11_0,GP12_0,GP13_0,GP14_0,GP15_0																		: bit_vector(1 downto 0);--Stage 4 GP

--define carry
signal c : bit_vector(14 downto 0);

signal Input1: bit_vector(15 downto 0);--For storing the complemented version

begin

--Complementing second input when subtractor is needed
Comp: for I in 0 to 15 generate
Input1(I)<= Input2(I) XOR Carry_in;
end generate Comp;
	
--Stage 0

GP_0_0  : GP_Generator port map(GPinput1=>Input0(0) ,GPinput2=>Input1(0) ,GPoutput=>GP0_0);
GP_1_1  : GP_Generator port map(GPinput1=>Input0(1) ,GPinput2=>Input1(1) ,GPoutput=>GP1_1);
GP_2_2  : GP_Generator port map(GPinput1=>Input0(2) ,GPinput2=>Input1(2) ,GPoutput=>GP2_2);
GP_3_3  : GP_Generator port map(GPinput1=>Input0(3) ,GPinput2=>Input1(3) ,GPoutput=>GP3_3);
GP_4_4  : GP_Generator port map(GPinput1=>Input0(4) ,GPinput2=>Input1(4) ,GPoutput=>GP4_4);
GP_5_5  : GP_Generator port map(GPinput1=>Input0(5) ,GPinput2=>Input1(5) ,GPoutput=>GP5_5);
GP_6_6  : GP_Generator port map(GPinput1=>Input0(6) ,GPinput2=>Input1(6) ,GPoutput=>GP6_6);
GP_7_7  : GP_Generator port map(GPinput1=>Input0(7) ,GPinput2=>Input1(7) ,GPoutput=>GP7_7);
GP_8_8  : Gp_Generator port map(GPinput1=>Input0(8) ,GPinput2=>Input1(8) ,GPoutput=>GP8_8);
GP_9_9  : GP_Generator port map(GPinput1=>Input0(9) ,GPinput2=>Input1(9) ,GPoutput=>GP9_9);
GP_10_10: GP_Generator port map(GPinput1=>Input0(10),GPinput2=>Input1(10),GPoutput=>GP10_10);
GP_11_11: GP_Generator port map(GPinput1=>Input0(11),GPinput2=>Input1(11),GPoutput=>GP11_11);
GP_12_12: GP_Generator port map(GPinput1=>Input0(12),GPinput2=>Input1(12),GPoutput=>GP12_12);
GP_13_13: GP_Generator port map(GPinput1=>Input0(13),GPinput2=>Input1(13),GPoutput=>GP13_13);
GP_14_14: GP_Generator port map(GPinput1=>Input0(14),GPinput2=>Input1(14),GPoutput=>GP14_14);
GP_15_15: GP_Generator port map(GPinput1=>Input0(15),GPinput2=>Input1(15),GPoutput=>GP15_15);

		
--Stage 1

GP_1_0  : GPcell port map(GPinput1=>GP1_1  ,GPinput2=>GP0_0  ,GPoutput=>GP1_0);
GP_2_1  : GPcell port map(GPinput1=>GP2_2  ,GPinput2=>GP1_1  ,GPoutput=>GP2_1);
GP_3_2  : GPcell port map(GPinput1=>GP3_3  ,GPinput2=>GP2_2  ,GPoutput=>GP3_2);
GP_4_3  : GPcell port map(GPinput1=>GP4_4  ,GPinput2=>GP3_3  ,GPoutput=>GP4_3);
GP_5_4  : GPcell port map(GPinput1=>GP5_5  ,GPinput2=>GP4_4  ,GPoutput=>GP5_4);
GP_6_5  : GPcell port map(GPinput1=>GP6_6  ,GPinput2=>GP5_5  ,GPoutput=>GP6_5);
GP_7_6  : GPcell port map(GPinput1=>GP7_7  ,GPinput2=>GP6_6  ,GPoutput=>GP7_6);
GP_8_7  : GPcell port map(GPinput1=>GP8_8  ,GPinput2=>GP7_7  ,GPoutput=>GP8_7);
GP_9_8  : GPcell port map(GPinput1=>GP9_9  ,GPinput2=>GP8_8  ,GPoutput=>GP9_8);
GP_10_9 : GPcell port map(GPinput1=>GP10_10,GPinput2=>GP9_9  ,GPoutput=>GP10_9);
GP_11_10: GPcell port map(GPinput1=>GP11_11,GPinput2=>GP10_10,GPoutput=>GP11_10);
GP_12_11: GPcell port map(GPinput1=>GP12_12,GPinput2=>GP11_11,GPoutput=>GP12_11);
GP_13_12: GPcell port map(GPinput1=>GP13_13,GPinput2=>GP12_12,GPoutput=>GP13_12);
GP_14_13: GPcell port map(GPinput1=>GP14_14,GPinput2=>GP13_13,GPoutput=>GP14_13);
GP_15_14: GPcell port map(GPinput1=>GP15_15,GPinput2=>GP14_14,GPoutput=>GP15_14);

--Stage 2

GP_2_0  : GPcell port map(GPinput1=>GP2_1  ,GPinput2=>GP0_0  ,GPoutput=>GP2_0);
GP_3_0  : GPcell port map(GPinput1=>GP3_2  ,GPinput2=>GP1_0  ,GPoutput=>GP3_0);
GP_4_1  : GPcell port map(GPinput1=>GP4_3  ,GPinput2=>GP2_1  ,GPoutput=>GP4_1);
GP_5_2  : GPcell port map(GPinput1=>GP5_4  ,GPinput2=>GP3_2  ,GPoutput=>GP5_2);
GP_6_3  : GPcell port map(GPinput1=>GP6_5  ,GPinput2=>GP4_3  ,GPoutput=>GP6_3);
GP_7_4  : GPcell port map(GPinput1=>GP7_6  ,GPinput2=>GP5_4  ,GPoutput=>GP7_4);
GP_8_5  : GPcell port map(GPinput1=>GP8_7  ,GPinput2=>GP6_5  ,GPoutput=>GP8_5);
GP_9_6  : GPcell port map(GPinput1=>GP9_8  ,GPinput2=>GP7_6  ,GPoutput=>GP9_6);
GP_10_7 : GPcell port map(GPinput1=>GP10_9 ,GPinput2=>GP8_7  ,GPoutput=>GP10_7);
GP_11_8 : GPcell port map(GPinput1=>GP11_10,GPinput2=>GP9_8  ,GPoutput=>GP11_8);
GP_12_9 : GPcell port map(GPinput1=>GP12_11,GPinput2=>GP10_9 ,GPoutput=>GP12_9);
GP_13_10: GPcell port map(GPinput1=>GP13_12,GPinput2=>GP11_10,GPoutput=>GP13_10);
GP_14_11: GPcell port map(GPinput1=>GP14_13,GPinput2=>GP12_11,GPoutput=>GP14_11);
GP_15_12: GPcell port map(GPinput1=>GP15_14,GPinput2=>GP13_12,GPoutput=>GP15_12);

--Stage 3

GP_4_0  : GPcell port map(GPinput1=>GP4_1  ,GPinput2=>GP0_0 ,GPoutput=>GP4_0);
GP_5_0  : GPcell port map(GPinput1=>GP5_2  ,GPinput2=>GP1_0 ,GPoutput=>GP5_0);
GP_6_0  : GPcell port map(GPinput1=>GP6_3  ,GPinput2=>GP2_0 ,GPoutput=>GP6_0);
GP_7_0  : GPcell port map(GPinput1=>GP7_4  ,GPinput2=>GP3_0 ,GPoutput=>GP7_0);
GP_8_1  : GPcell port map(GPinput1=>GP8_5  ,GPinput2=>GP4_1 ,GPoutput=>GP8_1);
GP_9_2  : GPcell port map(GPinput1=>GP9_6  ,GPinput2=>GP5_2 ,GPoutput=>GP9_2);
GP_10_3 : GPcell port map(GPinput1=>GP10_7 ,GPinput2=>GP6_3 ,GPoutput=>GP10_3);
GP_11_4 : GPcell port map(GPinput1=>GP11_8 ,GPinput2=>GP7_4 ,GPoutput=>GP11_4);
GP_12_5 : GPcell port map(GPinput1=>GP12_9 ,GPinput2=>GP8_5 ,GPoutput=>GP12_5);
GP_13_6 : GPcell port map(GPinput1=>GP13_10,GPinput2=>GP9_6 ,GPoutput=>GP13_6);
GP_14_7 : GPcell port map(GPinput1=>GP14_11,GPinput2=>GP10_7,GPoutput=>GP14_7);
GP_15_8 : GPcell port map(GPinput1=>GP15_12,GPinput2=>GP11_8,GPoutput=>GP15_8);

--Stage 4

GP_8_0  : GPcell port map(GPinput1=>GP8_1 ,GPinput2=>GP0_0,GPoutput=>GP8_0);
GP_9_0  : GPcell port map(GPinput1=>GP9_2 ,GPinput2=>GP1_0,GPoutput=>GP9_0);
GP_10_0 : GPcell port map(GPinput1=>GP10_3,GPinput2=>GP2_0,GPoutput=>GP10_0);
GP_11_0 : GPcell port map(GPinput1=>GP11_4,GPinput2=>GP3_0,GPoutput=>GP11_0);
GP_12_0 : GPcell port map(GPinput1=>GP12_5,GPinput2=>GP4_0,GPoutput=>GP12_0);
GP_13_0 : GPcell port map(GPinput1=>GP13_6,GPinput2=>GP5_0,GPoutput=>GP13_0);
GP_14_0 : GPcell port map(GPinput1=>GP14_7,GPinput2=>GP6_0,GPoutput=>GP14_0);
GP_15_0 : GPcell port map(GPinput1=>GP15_8,GPinput2=>GP7_0,GPoutput=>GP15_0);

sum_carry_0  : SumCarrygenerator port map(GP=>GP0_0 ,c=>Carry_in  ,p=>GP0_0(1)  ,C_in=>Carry_in,S=>Sum(0) ,C_out=>c(0));
sum_carry_1  : SumCarrygenerator port map(GP=>GP1_0 ,c=>c(0)      ,p=>GP1_1(1)  ,C_in=>Carry_in,S=>Sum(1) ,C_out=>c(1));
sum_carry_2  : SumCarrygenerator port map(GP=>GP2_0 ,c=>c(1)      ,p=>GP2_2(1)  ,C_in=>Carry_in,S=>Sum(2) ,C_out=>c(2));
sum_carry_3  : SumCarrygenerator port map(GP=>GP3_0 ,c=>c(2)      ,p=>GP3_3(1)  ,C_in=>Carry_in,S=>Sum(3) ,C_out=>c(3));
sum_carry_4  : SumCarrygenerator port map(GP=>GP4_0 ,c=>c(3)      ,p=>GP4_4(1)  ,C_in=>Carry_in,S=>Sum(4) ,C_out=>c(4));
sum_carry_5  : SumCarrygenerator port map(GP=>GP5_0 ,c=>c(4)      ,p=>GP5_5(1)  ,C_in=>Carry_in,S=>Sum(5) ,C_out=>c(5));
sum_carry_6  : SumCarrygenerator port map(GP=>GP6_0 ,c=>c(5)      ,p=>GP6_6(1)  ,C_in=>Carry_in,S=>Sum(6) ,C_out=>c(6));
sum_carry_7  : SumCarrygenerator port map(GP=>GP7_0 ,c=>c(6)      ,p=>GP7_7(1)  ,C_in=>Carry_in,S=>Sum(7) ,C_out=>c(7));
sum_carry_8  : SumCarrygenerator port map(GP=>GP8_0 ,c=>c(7)      ,p=>GP8_8(1)  ,C_in=>Carry_in,S=>Sum(8) ,C_out=>c(8));
sum_carry_9  : SumCarrygenerator port map(GP=>GP9_0 ,c=>c(8)      ,p=>GP9_9(1)  ,C_in=>Carry_in,S=>Sum(9) ,C_out=>c(9));
sum_carry_10 : SumCarrygenerator port map(GP=>GP10_0,c=>c(9)      ,p=>GP10_10(1),C_in=>Carry_in,S=>Sum(10),C_out=>c(10));
sum_carry_11 : SumCarrygenerator port map(GP=>GP11_0,c=>c(10)     ,p=>GP11_11(1),C_in=>Carry_in,S=>Sum(11),C_out=>c(11));
sum_carry_12 : SumCarrygenerator port map(GP=>GP12_0,c=>c(11)     ,p=>GP12_12(1),C_in=>Carry_in,S=>Sum(12),C_out=>c(12));
sum_carry_13 : SumCarrygenerator port map(GP=>GP13_0,c=>c(12)     ,p=>GP13_13(1),C_in=>Carry_in,S=>Sum(13),C_out=>c(13));
sum_carry_14 : SumCarrygenerator port map(GP=>GP14_0,c=>c(13)     ,p=>GP14_14(1),C_in=>Carry_in,S=>Sum(14),C_out=>c(14));
sum_carry_15 : SumCarrygenerator port map(GP=>GP15_0,c=>c(14)     ,p=>GP15_15(1),C_in=>Carry_in,S=>Sum(15),C_out=>Carry_Output);

end Structural;
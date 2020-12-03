library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture tb of testbench is

signal A,B,S:bit_vector(15 downto 0);
signal C:bit;

component KoggeStoneFastAdder is
   Port( Input0,Input1 : in bit_vector(15 downto 0);
          Sum	 		  : out bit_vector(15 downto 0);
			 Carry_Output : out bit);
end component;

begin 
dut_instance:KoggeStoneFastAdder
port map(Input0=>A,Input1=>B,Sum=>S,Carry_output=>C);

process
begin

A<="0000000000000000";
B<="0000000010000000";
--assert (S="0000000010000000" and C='0') report "First testbench is not ok";
	
wait for 5 ns;

A<="0000001001111111";
B<="0000010010110001";
--assert (S="0000011100110001" and C='0') report "Second testbench is not ok";

wait for 5 ns;

A<="1111111111111110";
B<="0000000000000001";
--assert (S="1111111111111111" and C='0') report "Third testbench is not ok";

wait for 5 ns;

A<="1011101010101010";
B<="1101011010110101";
--assert (S="1001000101011111" and C='1') report "fourth testbench is not ok";

wait for 5 ns;

end process;
end tb;
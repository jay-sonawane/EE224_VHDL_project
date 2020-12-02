library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture tb of testbench is

signal A,B,S:bit_vector(15 downto 0);
signal C_out:bit;

component KoggeStoneFastAdder is
   Port( Input0,Input1 : in bit_vector(0 to 15);
          Sum	 		  : out bit_vector(0 to 15);
			 Carry_Output : out bit);
end component;

begin 
dut_instance:KoggeStoneFastAdder
port map(Input0=>A,Input1=>B,Sum=>S,Carry_output=>C_out);

process
begin

A<="0000000000000001";
B<="0000000010000001";
wait for 5 ns;

A<="0000001001111111";
B<="0000010010110001";
wait for 5 ns;

A<="1111111111111110";
B<="0000000000000000";
wait for 5 ns;

A<="1011101010101010";
B<="1101011010110101";
wait for 5 ns;

end process;
end tb;
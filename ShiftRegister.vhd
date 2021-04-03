use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity REGISTER is
port (Q: out std_logic_vector (3 downto 0);
      CLK in std_logic;
      D: in std_logic (3 downto 0);
      PL: in std_logic_vector (3 downto 0);
      R: in std_logic;
	  SEL: in std_logic_vector; //00-Hold, 01-SHR, 10-SHL, 11-LOAD
	  SH_INPUT: in std_logic);
end REGISTER;

architecture arh of REGISTER is

signal R1, R2, R3, R4:std_logic_vector(3 downto 0);



begin

R1<=Q;
R2<= SH_INPUT & Q (3 downto 0);
R3<= Q(2 downto 0) & SH_INPUT; 
R4<=PL;

process (CLK)

case SEL is
	when "00" => Q<=R1;
	when "01" => Q<=R2;
	when "10" => Q<=R3;
	when others => Q<=R4;
end case



if R ='1'
	Q<='0';
end if

end process

end arh;
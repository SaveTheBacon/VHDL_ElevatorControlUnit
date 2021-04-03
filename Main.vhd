library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity MAIN is
	port (reset, clock, Iu, Ic, Ia, Iok : in std_logic;
	Y : out std_logic;
	urca: out std_logic;
	coboara: out std_logic);
end MAIN;
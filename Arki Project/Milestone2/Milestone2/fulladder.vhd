----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:18:15 04/06/2017 
-- Design Name: 
-- Module Name:    fulladder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fulladder is

	PORT (A : IN  STD_LOGIC;
			Bmultx : IN  STD_LOGIC;
			carryin : in std_logic;
			sum: OUT STD_LOGIC;
			Carryout: OUT  STD_LOGIC);
end fulladder;

architecture Behavioral of fulladder is

--SIGNAL Tmp: STD_LOGIC_VECTOR (1 DOWNTO 0);
SIGNAL Tmp: STD_LOGIC_VECTOR (1 DOWNTO 0);

begin

Tmp <= ('0' & A) + ('0' & Bmultx) + ('0'&carryin);
sum <= Tmp(0);
carryout <= Tmp(1);

end Behavioral;


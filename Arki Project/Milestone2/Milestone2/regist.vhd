----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:51:04 04/01/2017 
-- Design Name: 
-- Module Name:    regist - Behavioral 
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

entity regist is
    Port (  I : in  STD_LOGIC_VECTOR (31 downto 0);
           o : out  STD_LOGIC_VECTOR (31 downto 0);
           L : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           INC : in  STD_LOGIC);
end regist;

architecture Behavioral of regist is

signal tmp :STD_LOGIC_VECTOR (31 downto 0);
begin

process(CLK)
begin

if(CLK' event and CLK='1')then

if(L='1')then
tmp<= I;
elsif(INC='1')then
tmp<= tmp + 1;
elsif(CLR='1')then
tmp<= (others=> '0');
end if;

end if;
end process;
o <=tmp;

end Behavioral;


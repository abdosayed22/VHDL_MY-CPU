----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:45:53 05/02/2017 
-- Design Name: 
-- Module Name:    multx2_bit - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multx2_bit is
 GENERIC(n:NATURAL:=32);
    Port ( I0 : in  STD_LOGIC_VECTOR(n-1 downto 0);
           I1 : in  STD_LOGIC_VECTOR(n-1 downto 0);
           sel : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR(n-1 downto 0));
end multx2_bit;

architecture Behavioral of multx2_bit is

begin
output<=I0 when sel ='0' else
        I1 when sel='1' else
        (others =>'Z');

end Behavioral;


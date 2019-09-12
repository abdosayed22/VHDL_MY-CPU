----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:11:50 04/20/2017 
-- Design Name: 
-- Module Name:    MUL - Behavioral 
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

entity MUL is
Port ( input_6bit: in  STD_LOGIC_vector(5 downto 0);
       output_32bit: out  STD_LOGIC_vector(31 downto 0));
end MUL;

architecture Behavioral of MUL is

begin
output_32bit <= "000000000000000000000000" & input_6bit & "00";
end Behavioral;


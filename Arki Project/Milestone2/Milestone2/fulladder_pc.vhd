----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:17:32 05/01/2017 
-- Design Name: 
-- Module Name:    fulladder_pc - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL ;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fulladder_pc is
 Port (    A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           res : out  STD_LOGIC_VECTOR (31 downto 0);
			  carryout: out std_logic);
end fulladder_pc;

architecture Behavioral of fulladder_pc is

signal tmp: std_logic_vector(32 downto 0);
begin

tmp <= ('0'& A) + ('0'& B);
res  <=tmp(31 downto 0);
carryout <=tmp(32);

end Behavioral;


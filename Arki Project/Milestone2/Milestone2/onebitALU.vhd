
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:22:29 04/06/2017 
-- Design Name: 
-- Module Name:    onebitALU - Behavioral 
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
use work.packageALU.all;
use work.package_register.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity onebitALU is
  Port (A : in  STD_LOGIC;
       B : in  STD_LOGIC;
		operation : in  STD_LOGIC_VECTOR (3 downto 0);
      carryin : in  STD_LOGIC;
		carryout : out  STD_LOGIC;
      result : out  STD_LOGIC;
		less_in :in std_logic);
end onebitALU;

architecture Behavioral of onebitALU is

signal Multx2out: std_logic;
signal Multx2out2: std_logic;
signal adder_sum:std_logic;
signal adder_carry:std_logic;
signal notinputB :std_logic;
signal notinputA :std_logic;
signal output_and :std_logic;
signal output_or :std_logic;

begin

notinputB <=not(B);
notinputA <=not(A);
Multx2_obj1: multx2  port map (B,notinputB,operation(2),Multx2out);
Multx2_obj2: multx2  port map (A,notinputA,operation(3),Multx2out2);

output_and <=Multx2out and Multx2out2;
output_or  <=Multx2out or Multx2out2;
Multx4_obj: multx4  port map(operation(1 downto 0),output_and,output_or,adder_sum,less_in,result);

fulladder_obj: fulladder  port map (Multx2out, Multx2out2,carryin,adder_sum, adder_carry);
carryout <= adder_carry;

end Behavioral;
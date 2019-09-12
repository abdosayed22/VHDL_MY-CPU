----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:30:48 04/01/2017 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use work.package_register.all;
use work.packageALU.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
port (

		read_sel1 : in std_logic_vector(4 downto 0);
		read_sel2 : in std_logic_vector(4 downto 0); 
		write_sel : in std_logic_vector(4 downto 0);
		write_ena : in std_logic;
		clk: in std_logic;
		write_data: in std_logic_vector(31 downto 0);
		data1: out std_logic_vector(31 downto 0);
		data2: out std_logic_vector(31 downto 0));

end RegisterFile;


architecture Behavioral of RegisterFile is

signal load:  STD_LOGIC_VECTOR (31 downto 0);
signal L0 :std_logic;
signal L1 :std_logic;
signal L2 :std_logic;
signal L3 :std_logic;
signal L4 :std_logic;
signal L5 :std_logic;
signal L6 :std_logic;
signal L7 :std_logic;
signal L8 :std_logic;
signal L9 :std_logic;
signal L10 :std_logic;
signal L11 :std_logic;
signal L12 :std_logic;
signal L13 :std_logic;
signal L14 :std_logic;
signal L15 :std_logic;
signal L16 :std_logic;
signal L17 :std_logic;
signal L18 :std_logic;
signal L19 :std_logic;
signal L20 :std_logic;
signal L21 :std_logic;
signal L22 :std_logic;
signal L23 :std_logic;
signal L24 :std_logic;
signal L25 :std_logic;
signal L26 :std_logic;
signal L27 :std_logic;
signal L28 :std_logic;
signal L29 :std_logic;
signal L30 :std_logic;
signal L31 :std_logic;


signal outtmp0 :std_logic_vector(31 downto 0);
signal outtmp1 :std_logic_vector(31 downto 0);
signal outtmp2 :std_logic_vector(31 downto 0);
signal outtmp3 :std_logic_vector(31 downto 0);
signal outtmp4 :std_logic_vector(31 downto 0);
signal outtmp5 :std_logic_vector(31 downto 0);
signal outtmp6 :std_logic_vector(31 downto 0);
signal outtmp7 :std_logic_vector(31 downto 0);
signal outtmp8 :std_logic_vector(31 downto 0);
signal outtmp9 :std_logic_vector(31 downto 0);
signal outtmp10 :std_logic_vector(31 downto 0);
signal outtmp11 :std_logic_vector(31 downto 0);
signal outtmp12 :std_logic_vector(31 downto 0);
signal outtmp13 :std_logic_vector(31 downto 0);
signal outtmp14 :std_logic_vector(31 downto 0);
signal outtmp15 :std_logic_vector(31 downto 0);
signal outtmp16 :std_logic_vector(31 downto 0);
signal outtmp17 :std_logic_vector(31 downto 0);
signal outtmp18 :std_logic_vector(31 downto 0);
signal outtmp19 :std_logic_vector(31 downto 0);
signal outtmp20 :std_logic_vector(31 downto 0);
signal outtmp21 :std_logic_vector(31 downto 0);
signal outtmp22 :std_logic_vector(31 downto 0);
signal outtmp23 :std_logic_vector(31 downto 0);
signal outtmp24 :std_logic_vector(31 downto 0);
signal outtmp25 :std_logic_vector(31 downto 0);
signal outtmp26 :std_logic_vector(31 downto 0);
signal outtmp27 :std_logic_vector(31 downto 0);
signal outtmp28 :std_logic_vector(31 downto 0);
signal outtmp29 :std_logic_vector(31 downto 0);
signal outtmp30 :std_logic_vector(31 downto 0);
signal outtmp31 :std_logic_vector(31 downto 0);

begin
			L0 <=load(0)and write_ena;
			L1<=load(1)and write_ena;
			L2<=load(2)and write_ena;
			L3<=load(3)and write_ena;
			L4<=load(4)and write_ena;
			L5<=load(5)and write_ena;
			L6<=load(6)and write_ena;
			L7<=load(7)and write_ena;
			L8<=load(8)and write_ena;
			L9<=load(9)and write_ena;
			L10<=load(10)and write_ena;
			L12<=load(12)and write_ena;
			L13<=load(13)and write_ena;
			L14<=load(14)and write_ena;
			L15<=load(15)and write_ena;
			L16<=load(16)and write_ena;
			L17<=load(17)and write_ena;
			L18<=load(18)and write_ena;
			L19<=load(19)and write_ena;
			L20<=load(20)and write_ena;
			L21<=load(21)and write_ena;
			L22<=load(22)and write_ena;
			L23<=load(23)and write_ena;
			L24<=load(24)and write_ena;
			L25<=load(25)and write_ena;
			L26<=load(26)and write_ena;
			L27<=load(27)and write_ena;
			L28<=load(28)and write_ena;
			L29<=load(29)and write_ena;
			L30<=load(30)and write_ena;
			L31<=load(31)and write_ena;

			R0 : reg generic map(32) port map (write_data,cLk,L0,'0','0',outtmp0);
			R1 : reg generic map(32) port map (write_data,cLk,L1,'0','0',outtmp1);
			R2 : reg generic map(32) port map (write_data,clk,L2,'0','0',outtmp2);  
			R3 : reg  generic map(32) port map (write_data,clk,L3,'0','0',outtmp3);
			R4 : reg generic map(32) port map (write_data,clk,L4,'0','0',outtmp4);
			R5 : reg generic map(32) port map (write_data,clk,L5,'0','0',outtmp5);
			R6 : reg generic map(32) port map (write_data,clk,L6,'0','0',outtmp6);
			R7 : reg generic map(32) port map (write_data,clk,L7,'0','0',outtmp7);
			R8 : reg generic map(32) port map (write_data,clk,L8,'0','0',outtmp8);
			R9 : reg generic map(32) port map (write_data,clk,L9,'0','0',outtmp9);
			R10: reg generic map(32) port map (write_data,clk,L10,'0','0',outtmp10);
			R11: reg generic map(32) port map (write_data,clk,L11,'0','0',outtmp11);
			R12: reg generic map(32) port map (write_data,clk,L12,'0','0',outtmp12);
			R13: reg generic map(32) port map (write_data,clk,L13,'0','0',outtmp13);
			R14: reg generic map(32) port map (write_data,clk,L14,'0','0',outtmp14);
			R15: reg generic map(32) port map (write_data,clk,L15,'0','0',outtmp15);
			R16: reg generic map(32) port map (write_data,clk,L16,'0','0',outtmp16);
			R17: reg generic map(32) port map (write_data,clk,L17,'0','0',outtmp17);
			R18: reg generic map(32) port map (write_data,clk,L18,'0','0',outtmp18);
			R19: reg generic map(32) port map (write_data,clk,L19,'0','0',outtmp19);
			R20: reg generic map(32) port map (write_data,clk,L20,'0','0',outtmp20);
			R21: reg generic map(32) port map (write_data,clk,L21,'0','0',outtmp21);
			R22: reg generic map(32) port map (write_data,clk,L22,'0','0',outtmp22);
			R23: reg generic map(32) port map (write_data,clk,L23,'0','0',outtmp23);
			R24: reg generic map(32) port map (write_data,clk,L24,'0','0',outtmp24);
			R25: reg generic map(32) port map (write_data,clk,L25,'0','0',outtmp25);
			R26: reg generic map(32) port map (write_data,clk,L26,'0','0',outtmp26);
			R27: reg generic map(32) port map (write_data,clk,L27,'0','0',outtmp27);
			R28: reg generic map(32) port map (write_data,clk,L28,'0','0',outtmp28);
			R29: reg generic map(32) port map (write_data,clk,L29,'0','0',outtmp29);
			R30: reg generic map(32) port map (write_data,clk,L30,'0','0',outtmp30);
			R31: reg generic map(32) port map (write_data,clk,L31,'0','0',outtmp31);
			
			multx1 :multx port map(read_sel1,outtmp0,outtmp1,outtmp2,outtmp3,outtmp4,outtmp5,outtmp6,outtmp7,outtmp8,outtmp9,outtmp10,outtmp11,outtmp12,outtmp13,outtmp14,outtmp15,outtmp16,outtmp17,outtmp18,outtmp19,outtmp20,outtmp21,outtmp22,outtmp23,outtmp24,outtmp25,outtmp26,outtmp27,outtmp28,outtmp29,outtmp30,outtmp31,data1);
			multx2 :multx port map(read_sel2,outtmp0,outtmp1,outtmp2,outtmp3,outtmp4,outtmp5,outtmp6,outtmp7,outtmp8,outtmp9,outtmp10,outtmp11,outtmp12,outtmp13,outtmp14,outtmp15,outtmp16,outtmp17,outtmp18,outtmp19,outtmp20,outtmp21,outtmp22,outtmp23,outtmp24,outtmp25,outtmp26,outtmp27,outtmp28,outtmp29,outtmp30,outtmp31,data2);
         
			decoder1 :decoder port map(write_sel,'1',load);
			
end Behavioral;


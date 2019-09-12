 --
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package package_register is

component RegisterFile is
port (
		read_sel1 : in std_logic_vector(4 downto 0);
		read_sel2 : in std_logic_vector(4 downto 0); 
		write_sel : in std_logic_vector(4 downto 0);
		write_ena : in std_logic;
		clk: in std_logic;
		write_data: in std_logic_vector(31 downto 0);
		data1: out std_logic_vector(31 downto 0);
		data2: out std_logic_vector(31 downto 0));
end component;

component reg IS
	GENERIC(n:NATURAL);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;


component multx is
				 Port ( selector : in  STD_LOGIC_VECTOR (4 downto 0);
						  I0 : in  STD_LOGIC_VECTOR (31 downto 0);
						  I1 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I2 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I3 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I4 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I5 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I6 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I7 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I8 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I9 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I10 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I11 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I12 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I13 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I14 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I15 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I16 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I17 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I18 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I19 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I20 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I21 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I22 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I23 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I24 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I25 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I26 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I27 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I28 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I29 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I30 : in  STD_LOGIC_VECTOR (31 downto 0);
	        	        I31 : in  STD_LOGIC_VECTOR (31 downto 0);
						  Output : out  STD_LOGIC_VECTOR (31 downto 0)
	        	        );
end component;

component decoder is
    Port ( input : in  STD_LOGIC_VECTOR (4 downto 0);
           ena : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Reg32_0 IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;

component reg32_1 IS
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
END component;

component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC );
end component;

component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC);
end component;

end package_register;

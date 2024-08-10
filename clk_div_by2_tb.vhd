----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2024 20:37:25
-- Design Name: 
-- Module Name: clk_div_by2_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_div_by2_tb is
--  Port ( );
end clk_div_by2_tb;

architecture Behavioral of clk_div_by2_tb is

component clk_div_by2 
	port (  clk_in : in STD_LOGIC;
			rst : in STD_LOGIC;
			clk_out : out STD_LOGIC );
end component;

signal clk_in, clk_out: std_logic := '0';
signal rst : std_logic := '1';

begin
	DUT: clk_div_by2 port map (	clk_in, rst, clk_out );
	
	clk_in <= not(clk_in) after 100ns;
	rst <= '0' after 250ns;

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.08.2024 22:29:32
-- Design Name: 
-- Module Name: dmux_4bit_tb - Behavioral
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

entity dmux_4bit_tb is
--  Port ( );
end dmux_4bit_tb;

architecture Behavioral of dmux_4bit_tb is

component dmux_4bit 
    Port ( sel : in STD_LOGIC_VECTOR (1 downto 0);
           a : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (3 downto 0) );
end component;

signal sel: std_logic_vector (1 downto 0) := "00";
signal a: std_logic := '0' ;
signal y: std_logic_vector (3 downto 0) := "0000";

begin
a1: dmux_4bit port map (sel, a, y);

 
sel <= "00" after 20ns,
       "01" after 100ns,
       "10" after 250ns,
       "11" after 500ns,
       "00" after 600ns;

input: process begin
    wait for 10ns;
    a <= not(a);
end process;

end Behavioral;

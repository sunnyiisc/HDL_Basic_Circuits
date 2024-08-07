----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.08.2024 21:45:11
-- Design Name: 4-bit Demultiplexer
-- Module Name: dmux_4bit - Behavioral
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

entity dmux_4bit is
    Port ( sel : in STD_LOGIC_VECTOR (1 downto 0);
           a : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (3 downto 0) );
end dmux_4bit;

architecture behav_1b of dmux_4bit is

begin
with sel select
    y <= (3 => a, others => '0') when "00",
         (2 => a, others => '0') when "01",
         (1 => a, others => '0') when "10",
         (0 => a, others => '0') when "11",
         (others => '0') when others;

end behav_1b;

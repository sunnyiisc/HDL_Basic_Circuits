----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2024 20:31:43
-- Design Name: 
-- Module Name: clk_div_by2 - Behavioral
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

entity clk_div_by2 is
    Port ( clk_in : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end clk_div_by2;

architecture Behavioral of clk_div_by2 is

signal clkby2: std_logic ;

begin
	clk_out <= clkby2;
    
    clk_by2: process (clk_in) begin
        if (clk_in'event and clk_in = '1') then
        	if (rst = '1') then 
                clkby2 <= '0'; 
            else
                clkby2 <= not(clkby2);
            end if;
        end if;
    end process;

end Behavioral;

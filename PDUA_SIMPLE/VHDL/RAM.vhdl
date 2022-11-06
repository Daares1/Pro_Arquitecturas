-- ***********************************************
-- **  PROYECTO PDUA                            **
-- **  Modulo:  RAM                             **
-- **  Creacion:    Julio 07                    **
-- **  Revisión:    Marzo 08                    **
-- **  Por :        MGH-DIMENDEZ-CMUA-UNIANDES  **
-- ***********************************************
-- **  Revisión abril 2014 David Arévalo
-- Descripcion:
-- RAM (Buses de datos independientes in-out)
--                       cs  
--                   _____|_
--            rw -->|       |
-- dir(direccion)-->|       |--> data_out
--       data_in -->|_______|
--        
-- ***********************************************
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RAM is
    Port ( CS,RW       : in std_logic;
           CLK         : in std_Logic;
           DIR     : in std_logic_vector(2 downto 0);
           DATA_IN  : in std_logic_vector(7 downto 0);
           DATA_OUT  : out std_logic_vector(7 downto 0));
end RAM;

architecture Behavioral of RAM is

type memoria is array (7 downto 0) of std_logic_vector(7 downto 0);
signal mem: memoria;

begin

-- Memory Write Block
MEM_WRITE:
process (CLK) begin
 if (rising_edge(clk)) then
   if (CS = '1' and RW = '1') then
       mem(conv_integer(DIR)) <= DATA_IN;
   end if;
 end if;
end process;

-- Memory Read Block
MEM_READ:
process (CLK) begin
 if (rising_edge(clk)) then
    if (CS = '1' and RW = '0')  then
         DATA_OUT <= mem(conv_integer(DIR));
    else DATA_OUT <= (others => 'Z');
    end if;
 end if;
end process;
end Behavioral;

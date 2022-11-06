-- ***********************************************
-- **  PROYECTO PDUA                            **
-- **  Modulo:  BANCO                           **
-- **  Creacion:    Julio 07                    **
-- **  Revision:   Julio 09                    **
-- **  Por:     MGH-CMUA-UNIANDES               **
-- ***********************************************
-- Descripcion:
-- Banco de registros etapa ID
-- ***********************************************
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ID_REG is
    Port ( RESET      : in    std_logic;
           CLK        : in    std_Logic;
           SD_I,HR_I,FLAG_I  : in    std_Logic := '0';
           SD_O,HR_O,FLAG_O  : out   std_Logic := '0';
           SC_I       : in    std_logic_vector(2  downto 0) := (OTHERS => '0');
           BUSA_I     : in    std_logic_vector(7  downto 0) := (OTHERS => '0');
           BUSB_I     : in    std_logic_vector(7  downto 0) := (OTHERS => '0');
           DATA_I     : in    std_logic_vector(7  downto 0) := (OTHERS => '0');
           UI_I       : in    std_logic_vector(15 downto 0) := (OTHERS => '0');
           SC_O       : out   std_logic_vector(2  downto 0) := (OTHERS => '0');
           BUSA_O     : out   std_logic_vector(7  downto 0) := (OTHERS => '0');
           BUSB_O     : out   std_Logic_vector(7  downto 0) := (OTHERS => '0');
           DATA_O     : out   std_Logic_vector(7  downto 0) := (OTHERS => '0');
           UI_O       : out   std_logic_vector(15 downto 0) := (OTHERS => '0')
         );
end ID_REG;

ARCHITECTURE Behavioral OF ID_REG IS
BEGIN

process (CLK)
begin
if (rising_edge(CLK)) then
    if RESET = '1' then
       SD_O   <= '0';
       HR_O   <= '0';
       FLAG_O <= '0';
       SC_O   <= (OTHERS => '0');
       BUSA_O <= (OTHERS => '0');
       BUSB_O <= (OTHERS => '0');
       DATA_O <= (OTHERS => '0');
       UI_O   <= (OTHERS => '0');
    else
       SD_O   <= SD_I;
       HR_O   <= HR_I;
       FLAG_O <= FLAG_I;
       SC_O   <= SC_I;
       BUSA_O <= BUSA_I;
       BUSB_O <= BUSB_I;
       DATA_O <= DATA_I;
       UI_O   <= UI_I;
    end if;
end if;
end process;
end Behavioral;

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

entity MEM_REG is
    Port ( RESET      : in    std_logic;
           CLK        : in    std_Logic;
           HR_I,CS_I  : in    std_Logic := '0';
           HR_O,CS_O  : out   std_Logic := '0';
           COND_I     : in    std_Logic := '0';
           SC_I       : in    std_logic_vector(2  downto 0) := (OTHERS => '0');
           PC_I       : in    std_logic_vector(4  downto 0) := (OTHERS => '0');
           S_I        : in    std_logic_vector(7  downto 0) := (OTHERS => '0');
           MEM_DATA_I : in    std_logic_vector(7  downto 0) := (OTHERS => '0');
           COND_O     : out   std_Logic := '0';
           SC_O       : out   std_logic_vector(2  downto 0) := (OTHERS => '0');
           PC_O       : out   std_logic_vector(4  downto 0) := (OTHERS => '0');
           MEM_DATA_O : out   std_logic_vector(7  downto 0) := (OTHERS => '0');
           S_O        : out   std_Logic_vector(7  downto 0) := (OTHERS => '0')
         );
end MEM_REG;

architecture Behavioral of MEM_REG is
begin

process (CLK)
begin
if (rising_edge(CLK)) then
    if RESET = '1' then
       CS_O   <= '0';
       HR_O   <= '0';
       COND_O <= '0';
       SC_O   <= (OTHERS => '0');
       PC_O   <= (OTHERS => '0');
       S_O    <= (OTHERS => '0');

    else
       CS_O   <= CS_I;
       HR_O   <= HR_I;
       COND_O <= COND_I;
       SC_O   <= SC_I;
       PC_O   <= PC_I;
       S_O    <= S_I;
    end if;
end if;
end process;
end Behavioral;

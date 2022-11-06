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

entity IF_REG is
    Port ( RESET      : in    std_logic;
           CLK        : in    std_Logic;
           INST_I     : in    std_logic_vector(15 downto 0);
           INST_O     : out   std_Logic_vector(15 downto 0)
         );
end IF_REG;

architecture Behavioral of IF_REG is

SIGNAL INST : std_Logic_vector(15 downto 0);

begin
process (CLK)
begin
if (rising_edge(CLK)) then
    if RESET = '0' then
       INST <= "0000000000000000";
    else
       INST <= INST_I;
    end if;
end if;
end process;
       INST_O <= INST;
end Behavioral;

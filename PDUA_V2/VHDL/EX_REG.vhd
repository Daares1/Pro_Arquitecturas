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

entity EX_REG is
    Port ( RESET      : in    std_logic;
           CLK        : in    std_Logic;
           Z_I        : in    std_Logic := '0';
           N_I        : in    std_Logic := '0';
           C_I        : in    std_Logic := '0';
           P_I        : in    std_Logic := '0';
           HR_I       : in    std_Logic := '0';
           SC_I       : in    std_Logic_vector(2  downto 0) := (OTHERS => '0');
           BUSA_I     : in    std_Logic_vector(7  downto 0) := (OTHERS => '0');
           S_I        : in    std_Logic_vector(7  downto 0) := (OTHERS => '0');
           UI_I       : in    std_logic_vector(15 downto 0) := (OTHERS => '0');
           Z_O        : out   std_Logic := '0';
           N_O        : out   std_Logic := '0';
           C_O        : out   std_Logic := '0';
           P_O        : out   std_Logic := '0';
           HR_O       : out   std_Logic := '0';
           SC_O       : out   std_Logic_vector(2  downto 0) := (OTHERS => '0');
           BUSA_O     : out   std_Logic_vector(7  downto 0) := (OTHERS => '0');
           S_O        : out   std_Logic_vector(7  downto 0) := (OTHERS => '0');
           UI_O       : out   std_Logic_vector(15 downto 0) := (OTHERS => '0')
         );
end EX_REG;

architecture Behavioral of EX_REG is
begin
process (CLK)
begin
if (rising_edge(CLK)) then
    if RESET = '1' then
       Z_O    <= '0';
       N_O    <= '0';
       C_O    <= '0';
       P_O    <= '0';
       HR_O   <= '0';
       SC_O   <= (OTHERS => '0');
       BUSA_O <= (OTHERS => '0');
       S_O    <= (OTHERS => '0');
       UI_O   <= (OTHERS => '0');
    else
       Z_O    <= Z_I;
       N_O    <= N_I;
       C_O    <= C_I;
       P_O    <= P_I;
       HR_O   <= HR_I;
       SC_O   <= SC_I;
       BUSA_O <= BUSA_I;
       S_O    <= S_I;
       UI_O   <= UI_I;
    end if;
end if;
end process;
end Behavioral;

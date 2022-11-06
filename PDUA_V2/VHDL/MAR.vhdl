-- ***********************************************
-- **  PROYECTO PDUA                            **
-- **  Modulo:  MAR  (Registro de direcciones)  **
-- **  Creacion:    Julio 07                    **
-- **  Revisión:    Marzo 08                    **
-- **  Por:     MGH-CMUA-UNIANDES               **
-- ***********************************************
-- **  Single Cycle PDUA CPU by David Arévalo
-- Descripcion:
-- ALU Bit_Slice de N Bits
--             Clk //HMAR (habilitador)
--             _|___|_
--            |       |
--  BUS_DIR ->|       |--> BUS_C
--            |_______|
--
-- ***********************************************

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MAR is
    Port ( CLK          : in std_logic;
           RESET        : in std_Logic;
           BUS_DIR      : out std_logic_vector(4 downto 0);
           BUS_C        : in std_logic_vector(4 downto 0)
           --HMAR         : in std_logic);
         );
end MAR;

architecture Behavioral of MAR is

begin
process(RESET,CLK)
begin
if RESET = '1'then
    BUS_DIR <= "00000";
else
    if (CLK'event and CLK ='1')then
    --if HMAR = '1' then
       BUS_DIR <= BUS_C;
    --end if;
    end if;
end if;
end process;
end Behavioral;

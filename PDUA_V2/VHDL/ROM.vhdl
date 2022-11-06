-- ***********************************************
-- **  PROYECTO PDUA                            **
-- **  Modulo:  ROM                             **
-- **  Creacion:    Julio 07                    **
-- **  Revisión:   Marzo 08                    **
-- **  Por:        MGH-CMUA-UNIANDES            **
-- ***********************************************
-- **Revisión abril 2014 David Arévalo
-- ** Procesador PDUA de ciclo simple
-- Descripcion:
-- ROM (Solo lectura)
--                      cs
--                  _____|_
--           rd -->|       |
--          dir -->|       |--> data
--                 |_______|
--
-- ***********************************************

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ROM is
    Port ( CS,RD    : in std_logic;
           DIR      : in std_logic_vector(4 downto 0);
           INST     : out std_logic_vector(15 downto 0));
end ROM;

architecture Behavioral of ROM is

begin
process(CS,RD,DIR)
begin
if CS = '1' and RD = '0' then
       case DIR is
       --TIPO INSTRUCCIÓN (1) INSTRUCCIÓN (4) H_REGISTRO(1) X(1) FLAGS (1) DATO(8)
        when "00000" => INST <= "1101000000000101";  -- JMP MAIN     -- MAIN
        when "00001" => INST <= "0000000000000000";  -- STALL
        when "00010" => INST <= "0000000000000000";  -- STALL
        when "00011" => INST <= "0000000000000000";  -- STALL
        when "00100" => INST <= "0000100000000000";  -- RAI Vector de Interrupcion
        when "00101" => INST <= "1001110000000001";  -- MAIN: MOV ACC,CTE  -- CTE (0x01)
        when "00110" => INST <= "0000000000000000";  -- STALl
        when "00111" => INST <= "0000000000000000";  -- STALl
        when "01000" => INST <= "0000000000000000";  -- STALL
        when "01001" => INST <= "0000000000000000";  -- STALL
        when "01010" => INST <= "0001010100000000";  -- MOV A,ACC
        when "01011" => INST <= "1001110011111100";  -- MOV ACC,CTE  -- CTE (0xFC)
        when "01100" => INST <= "0000000000000000";  -- STALL
        when "01101" => INST <= "0000000000000000";  -- STALL
        when "01110" => INST <= "0000000000000000";  -- STALL
        when "01111" => INST <= "0000000000000000";  -- STALL
        when "10000" => INST <= "0100110100000000";  -- OTRA: ADD ACC,A
        when "10001" => INST <= "1110100000011100";  -- JC FIN       -- FIN
        when "10010" => INST <= "0000000000000000";  -- STALL
        when "10011" => INST <= "0000000000000000";  -- STALL
        when "10100" => INST <= "0000000000000000";  -- STALL
        when "10101" => INST <= "0000000000000000";  -- STALL
        when "10110" => INST <= "1101000000010000";  -- JMP OTRA     -- OTRA
        when "10111" => INST <= "0000000000000000";  -- STALL
        when "11000" => INST <= "0000000000000000";  -- STALL
        when "11001" => INST <= "0000000000000000";  -- STALL
        when "11010" => INST <= "0000000000000000";  -- STALL
        when "11011" => INST <= "0000000000000000";  -- STALL
        when "11100" => INST <= "1101000000011100";  -- FIN: JMP FIN -- FIN
        when "11101" => INST <= "0000000000000000";  --
        when "11110" => INST <= "0111100000000000";  -- RET
        when "11111" => INST <= "0000000000000000";  --

        when others => INST <= (others => 'X');
       end case;
else INST <= (others => 'Z');
end if;  
end process;
end;

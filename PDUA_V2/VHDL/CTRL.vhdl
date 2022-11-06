-- ***********************************************
-- **  PROYECTO PDUA                            **
-- **  Modulo:  CONTROL                         **
-- **  Creacion:    Julio 07                    **
-- **  Por:         Mauricio Guerrero H.        **
-- **  Revisión:    Marzo 08                    **
-- **             Conjunto de Instrucciones     **
-- **  Por:       Mauricio Guerrero H.          **
-- **             Diego Mendez Chaves           **
-- ***********************************************
-- **  Bloque para decodificar la instrucción
-- **  15/05/2014 David Arévalo
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  UNIDAD DE CONTROL MG

entity CTRL is
    Port ( RESET    : in  std_logic;
           FLAG     : out std_Logic := '0';
           INST     : in  std_logic_vector(15 downto 0);
           HR       : out  std_Logic;
           SD       : out std_Logic;
           UI       : out std_Logic_vector(15 downto 0);
           DATA     : out std_Logic_vector(7 downto 0)
          );
end CTRL;

architecture Behavioral of CTRL is
signal hs,hr1,flag1    : std_logic;
signal data_s: std_Logic_vector(7 downto 0);
signal insts  : std_logic_vector(3 downto 0);

begin
 RI: process(RESET,INST,insts)
 begin
    if RESET = '1' then
       UI <= "0000000000000000";
    else
      hs     <= INST(15);
      hr1    <= INST(10);
      flag1  <= INST(8);
      insts  <= INST(14 downto 11);
      data_s <= INST(7 downto 0);
      case insts is

      --CS(1) RW(1) BUS_C(3) BUSC_B(3) OP(3) DESP (2) COND(3)
           when "0000" => UI <= "0011011000000000";
           when "0001" => UI <= "0011101100000000"; --00001   MOV ACC,A   B
           when "0010" => UI <= "0001111100000000"; --00010   MOV A,ACC   B
           when "0011" => UI <= "00111XXX00000000"; --00011   MOV ACC,CTE B
           when "0100" => UI <= "1011101000000000"; --MOV ACC,[DPTR]      B
           when "0101" => UI <= "0001011100000000"; --MOV DPTR,ACC        B
           when "0110" => UI <= "1111001000000000"; --MOV [DPTR],ACC      B
           when "0111" => UI <= "0011111100100000"; --INV ACC             B
           when "1000" => UI <= "0011101101000000"; --AND ACC,A           B
           when "1001" => UI <= "0011101110100000"; --ADD ACC,A           B
           when "1010" => UI <= "00000XXX00000001"; --JMP DIR             B
           when "1011" => UI <= "00000XXX00000010"; --JZ DIR              B
           when "1100" => UI <= "00000XXX00000011"; --JN DIR              B
           when "1101" => UI <= "00000XXX00000100"; --JC DIR              B
           when "1110" => UI <= "00110110000XXXXX"; --CALL DIR            ?
           when "1111" => UI <= "00110110000XXXXX"; --RET                 ?
           when others => UI <= (others => 'X');
      end case;
    end if;
 end process;
 DATA <= data_s;
 FLAG <= flag1;
 SD <= hs;
 HR <= hr1;
end Behavioral;

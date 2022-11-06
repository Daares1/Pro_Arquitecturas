-- *******************************************************
-- **                      PDUA                         **
-- **              PROCESADOR DIDACTICO                 **
-- **    Arquitectura y Diseno de Sistemas Digitales    **
-- **            UNIVERSIDAD DE LOS ANDES               **
-- **       CMUA: Centro de Microelectronica            **
-- *******************************************************
-- ** Version  0.0 Junio 2007                           **
-- ** Revision 0.1 Noviembre 2007                       **
-- ** Revision 0.2 Marzo 2008                           **
-- *******************************************************
-- **Revisión Abril 2014 David Arévalo
-- Descripcion:                 
--               ______________________________________
--              |                ______   _____        |
--              |               | ROM  | | RAM |       |
--              |               |______| |_____|       |
--              |    _________                         |
--       CLK -->|-->|         |                        |
--     Rst_n -->|-->|  PDUA   |----------------> D_out | 
--       INT -->|-->|         |<---------------- D_in  |    
--              |   |         |----------------> Dir   |
--              |   |         |----------------> Ctrl  |  
--              |   |_________|                        |
--              |                                      |
--              |______________________________________|  

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Sistema is
    Port ( CLK      : in    std_logic;
           Rst_n    : in    std_logic;
           INT      : in    std_logic);
end Sistema;

architecture Behavioral of Sistema is

component pdua is
    Port ( clk  : in    std_logic;
           rst_n    : in    std_logic;
           int  : in    std_logic;
           iom  : out   std_logic;
           rw       : out   std_logic;
           bus_dir  : out   std_logic_vector(7 downto 0);
           bus_data_in : in     std_logic_vector(7 downto 0);
           bus_data_out : out    std_logic_vector(7 downto 0));
end component;

component ROM is
    Port ( CS,RD    : in std_logic;
           DIR      : in std_logic_vector(4 downto 0);
           DATA     : out std_logic_vector(7 downto 0));
end component;

component RAM is
    Port ( CS,RW     : in    std_logic;
           DIR       : in    std_logic_vector(2 downto 0);
           DATA_IN   : in    std_logic_vector(7 downto 0);
           DATA_OUT  : out std_logic_vector(7 downto 0));
end component;

signal rwi,cs_ROM,cs_RAM,iom    : std_logic;
signal datai,datao,diri     : std_logic_vector(7 downto 0);

begin
U1: pdua    port map (CLK,Rst_n,INT,iom,rwi,diri,datai,datao);
U2: ROM     port map (cs_ROM,rwi,diri(4 downto 0),datai);
U3: RAM     port map (cs_RAM,rwi,diri(2 downto 0),datao,datai);

-- Decodificador
cs_ROM <= not diri(7);
cs_RAM <= diri(7); 

end Behavioral;

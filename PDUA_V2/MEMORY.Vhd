--------------------------------------------------------------------------------
-- SubModule MEMORY
-- Created   22/05/2014 09:29:42 p.m.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.Std_Logic_1164.all;

entity MEMORY is port
   (
     EN         : in    std_logic;
     WE         : in    std_logic;
     ADDR       : in    std_logic_vector(2 downto 0);
     DIN        : in    std_logic_vector(7 downto 0);
     CLK        : in    std_logic;
     DOUT       : out   std_logic_vector(7 downto 0)
   );

end MEMORY;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
architecture Structure of MEMORY is

-- Component Declarations

-- Signal Declarations

begin

end Structure;
--------------------------------------------------------------------------------

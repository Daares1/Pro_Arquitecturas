------------------------------------------------------------
-- VHDL TOP_PDUA_V1
-- 2014 5 28 22 5 39
-- Created By "DXP VHDL Generator"
-- "Copyright (c) 2002-2004 Altium Limited"
------------------------------------------------------------

------------------------------------------------------------
-- VHDL TOP_PDUA_V1
------------------------------------------------------------

Library IEEE;
Use     IEEE.std_logic_1164.all;

Entity TOP_PDUA_V1 Is
  port
  (
    TEST_BUTTON : In    STD_LOGIC                            -- ObjectKind=Port|PrimaryId=TEST_BUTTON
  );
  attribute MacroCell : boolean;

End TOP_PDUA_V1;
------------------------------------------------------------

------------------------------------------------------------
architecture structure of TOP_PDUA_V1 is
   Component alu                                             -- ObjectKind=Sheet Symbol|PrimaryId=U_alu
      port
      (
        A     : in  STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-A[7..0]
        B     : in  STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-B[7..0]
        C     : out STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-C
        CLK   : in  STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-CLK
        DESP  : in  STD_LOGIC_VECTOR(1 downto 0);            -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-DESP[1..0]
        HF    : in  STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-HF
        N     : out STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-N
        P     : out STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-P
        S     : out STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-S[7..0]
        SELOP : in  STD_LOGIC_VECTOR(2 downto 0);            -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-SELOP[2..0]
        Z     : out STD_LOGIC                                -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-Z
      );
   End Component;

   Component banco                                           -- ObjectKind=Sheet Symbol|PrimaryId=U_banco
      port
      (
        BUSA  : out STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-BUSA[7..0]
        BUSB  : out STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-BUSB[7..0]
        BUSC  : in  STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-BUSC[7..0]
        CLK   : in  STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-CLK
        HR    : in  STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-HR
        RESET : in  STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-RESET
        SB    : in  STD_LOGIC_VECTOR(2 downto 0);            -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-SB[2..0]
        SC    : in  STD_LOGIC_VECTOR(2 downto 0)             -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-SC[2..0]
      );
   End Component;

   Component Configurable_U1                                 -- ObjectKind=Part|PrimaryId=U1|SecondaryId=1
   End Component;

   Component Configurable_U2                                 -- ObjectKind=Part|PrimaryId=U2|SecondaryId=1
      port
      (
        BUS_DIR : in  STD_LOGIC_VECTOR(4 downto 0);          -- ObjectKind=Pin|PrimaryId=U2-BUS_DIR[4..0]
        CLK     : out STD_LOGIC;                             -- ObjectKind=Pin|PrimaryId=U2-CLK
        CS      : out STD_LOGIC;                             -- ObjectKind=Pin|PrimaryId=U2-CS
        INST    : in  STD_LOGIC_VECTOR(15 downto 0);         -- ObjectKind=Pin|PrimaryId=U2-INST[15..0]
        RD      : out STD_LOGIC                              -- ObjectKind=Pin|PrimaryId=U2-RD
      );
   End Component;

   Component Configurable_U3                                 -- ObjectKind=Part|PrimaryId=U3|SecondaryId=1
      port
      (
        A : in  STD_LOGIC_VECTOR(4 downto 0);                -- ObjectKind=Pin|PrimaryId=U3-A[4..0]
        B : in  STD_LOGIC_VECTOR(4 downto 0);                -- ObjectKind=Pin|PrimaryId=U3-B[4..0]
        S : out STD_LOGIC_VECTOR(4 downto 0)                 -- ObjectKind=Pin|PrimaryId=U3-S[4..0]
      );
   End Component;

   Component Configurable_U4                                 -- ObjectKind=Part|PrimaryId=U4|SecondaryId=1
      port
      (
        DA : in  STD_LOGIC_VECTOR(4 downto 0);               -- ObjectKind=Pin|PrimaryId=U4-DA[4..0]
        DB : in  STD_LOGIC_VECTOR(4 downto 0);               -- ObjectKind=Pin|PrimaryId=U4-DB[4..0]
        S  : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U4-S
        Y  : out STD_LOGIC_VECTOR(4 downto 0)                -- ObjectKind=Pin|PrimaryId=U4-Y[4..0]
      );
   End Component;

   Component Configurable_U6                                 -- ObjectKind=Part|PrimaryId=U6|SecondaryId=1
      port
      (
        DA : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U6-DA
        DB : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U6-DB
        DC : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U6-DC
        DD : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U6-DD
        DE : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U6-DE
        DF : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U6-DF
        DG : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U6-DG
        DH : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U6-DH
        S  : in  STD_LOGIC_VECTOR(2 downto 0);               -- ObjectKind=Pin|PrimaryId=U6-S[2..0]
        Y  : out STD_LOGIC                                   -- ObjectKind=Pin|PrimaryId=U6-Y
      );
   End Component;

   Component Configurable_U7                                 -- ObjectKind=Part|PrimaryId=U7|SecondaryId=1
      port
      (
        DA : in  STD_LOGIC_VECTOR(7 downto 0);               -- ObjectKind=Pin|PrimaryId=U7-DA[7..0]
        DB : in  STD_LOGIC_VECTOR(7 downto 0);               -- ObjectKind=Pin|PrimaryId=U7-DB[7..0]
        S  : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U7-S
        Y  : out STD_LOGIC_VECTOR(7 downto 0)                -- ObjectKind=Pin|PrimaryId=U7-Y[7..0]
      );
   End Component;

   Component Configurable_U8                                 -- ObjectKind=Part|PrimaryId=U8|SecondaryId=1
      port
      (
        DA : in  STD_LOGIC_VECTOR(7 downto 0);               -- ObjectKind=Pin|PrimaryId=U8-DA[7..0]
        DB : in  STD_LOGIC_VECTOR(7 downto 0);               -- ObjectKind=Pin|PrimaryId=U8-DB[7..0]
        S  : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U8-S
        Y  : out STD_LOGIC_VECTOR(7 downto 0)                -- ObjectKind=Pin|PrimaryId=U8-Y[7..0]
      );
   End Component;

   Component ctrl                                            -- ObjectKind=Sheet Symbol|PrimaryId=U_ctrl
      port
      (
        DATA  : out STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-DATA[7..0]
        HR    : out STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-HR
        INST  : in  STD_LOGIC_VECTOR(15 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-INST[15..0]
        RESET : in  STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-RESET
        SD    : out STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-SD
        UI    : out STD_LOGIC_VECTOR(15 downto 0)            -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-UI[15..0]
      );
   End Component;

   Component mar                                             -- ObjectKind=Sheet Symbol|PrimaryId=U_mar
      port
      (
        BUS_C   : in  STD_LOGIC_VECTOR(4 downto 0);          -- ObjectKind=Sheet Entry|PrimaryId=MAR.vhdl-BUS_C[4..0]
        BUS_DIR : out STD_LOGIC_VECTOR(4 downto 0);          -- ObjectKind=Sheet Entry|PrimaryId=MAR.vhdl-BUS_DIR[4..0]
        CLK     : in  STD_LOGIC;                             -- ObjectKind=Sheet Entry|PrimaryId=MAR.vhdl-CLK
        RESET   : in  STD_LOGIC                              -- ObjectKind=Sheet Entry|PrimaryId=MAR.vhdl-RESET
      );
   End Component;

   Component ram                                             -- ObjectKind=Sheet Symbol|PrimaryId=U_ram
      port
      (
        CLK      : in  STD_LOGIC;                            -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-CLK
        CS       : in  STD_LOGIC;                            -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-CS
        DATA_IN  : in  STD_LOGIC_VECTOR(7 downto 0);         -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-DATA_IN[7..0]
        DATA_OUT : out STD_LOGIC_VECTOR(7 downto 0);         -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-DATA_OUT[7..0]
        DIR      : in  STD_LOGIC_VECTOR(2 downto 0);         -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-DIR[2..0]
        RW       : in  STD_LOGIC                             -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-RW
      );
   End Component;

   Component rom                                             -- ObjectKind=Sheet Symbol|PrimaryId=U_rom
      port
      (
        CS   : in  STD_LOGIC;                                -- ObjectKind=Sheet Entry|PrimaryId=ROM.vhdl-CS
        DIR  : in  STD_LOGIC_VECTOR(4 downto 0);             -- ObjectKind=Sheet Entry|PrimaryId=ROM.vhdl-DIR[4..0]
        INST : out STD_LOGIC_VECTOR(15 downto 0);            -- ObjectKind=Sheet Entry|PrimaryId=ROM.vhdl-INST[15..0]
        RD   : in  STD_LOGIC                                 -- ObjectKind=Sheet Entry|PrimaryId=ROM.vhdl-RD
      );
   End Component;


    Signal NamedSignal_ADD1         : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=ADD1[4..0]
    Signal NamedSignal_S            : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=S[4..0]
    Signal NamedSignal_UI           : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=UI[2..0]
    Signal PinSignal_U_alu_C        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU6_DE
    Signal PinSignal_U_alu_DESP     : STD_LOGIC_VECTOR(1 downto 0); -- ObjectKind=Net|PrimaryId=UI[4..0]
    Signal PinSignal_U_alu_N        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU6_DD
    Signal PinSignal_U_alu_P        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU6_DF
    Signal PinSignal_U_alu_S        : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=S[7..0]
    Signal PinSignal_U_alu_SELOP    : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=UI[7..0]
    Signal PinSignal_U_alu_Z        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU6_DC
    Signal PinSignal_U_banco_BUSA   : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=A
    Signal PinSignal_U_banco_BUSB   : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=NetU8_DA[7..0]
    Signal PinSignal_U_banco_SB     : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=UI[10..0]
    Signal PinSignal_U_banco_SC     : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=UI[13..0]
    Signal PinSignal_U_ctrl_DATA    : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=NetU8_DB[7..0]
    Signal PinSignal_U_ctrl_HR      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=HR
    Signal PinSignal_U_ctrl_SD      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU8_S
    Signal PinSignal_U_ctrl_UI      : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=UI[15..0]
    Signal PinSignal_U_mar_BUS_DIR  : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=NetU2_BUS_DIR[4..0]
    Signal PinSignal_U_ram_DATA_OUT : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=NetU7_DB[7..0]
    Signal PinSignal_U_rom_INST     : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=NetU2_INST[15..0]
    Signal PinSignal_U2_CLK         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU2_CLK
    Signal PinSignal_U2_CS          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU2_CS
    Signal PinSignal_U2_RD          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU2_RD
    Signal PinSignal_U3_S           : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=NetU3_S[4..0]
    Signal PinSignal_U4_Y           : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=NetU4_Y[4..0]
    Signal PinSignal_U6_Y           : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU4_S
    Signal PinSignal_U7_Y           : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=NetU7_Y[7..0]
    Signal PinSignal_U8_Y           : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=NetU8_Y[7..0]
    Signal PowerSignal_GND          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=GND
    Signal PowerSignal_VCC          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VCC

begin
    U_rom : rom                                              -- ObjectKind=Sheet Symbol|PrimaryId=U_rom
      Port Map
      (
        CS   => PinSignal_U2_CS,                             -- ObjectKind=Sheet Entry|PrimaryId=ROM.vhdl-CS
        DIR  => PinSignal_U_mar_BUS_DIR,                     -- ObjectKind=Sheet Entry|PrimaryId=ROM.vhdl-DIR[4..0]
        INST => PinSignal_U_rom_INST,                        -- ObjectKind=Sheet Entry|PrimaryId=ROM.vhdl-INST[15..0]
        RD   => PinSignal_U2_RD                              -- ObjectKind=Sheet Entry|PrimaryId=ROM.vhdl-RD
      );

    U_ram : ram                                              -- ObjectKind=Sheet Symbol|PrimaryId=U_ram
      Port Map
      (
        CLK      => PinSignal_U2_CLK,                        -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-CLK
        CS       => NamedSignal_UI(15),                      -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-CS
        DATA_IN  => PinSignal_U_banco_BUSA,                  -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-DATA_IN[7..0]
        DATA_OUT => PinSignal_U_ram_DATA_OUT,                -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-DATA_OUT[7..0]
        DIR      => NamedSignal_S(2 downto 0),               -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-DIR[2..0]
        RW       => NamedSignal_UI(14)                       -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-RW
      );

    U_mar : mar                                              -- ObjectKind=Sheet Symbol|PrimaryId=U_mar
      Port Map
      (
        BUS_C   => PinSignal_U4_Y,                           -- ObjectKind=Sheet Entry|PrimaryId=MAR.vhdl-BUS_C[4..0]
        BUS_DIR => PinSignal_U_mar_BUS_DIR,                  -- ObjectKind=Sheet Entry|PrimaryId=MAR.vhdl-BUS_DIR[4..0]
        CLK     => PinSignal_U2_CLK,                         -- ObjectKind=Sheet Entry|PrimaryId=MAR.vhdl-CLK
        RESET   => TEST_BUTTON                               -- ObjectKind=Sheet Entry|PrimaryId=MAR.vhdl-RESET
      );

    U_ctrl : ctrl                                            -- ObjectKind=Sheet Symbol|PrimaryId=U_ctrl
      Port Map
      (
        DATA  => PinSignal_U_ctrl_DATA,                      -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-DATA[7..0]
        HR    => PinSignal_U_ctrl_HR,                        -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-HR
        INST  => PinSignal_U_rom_INST,                       -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-INST[15..0]
        RESET => TEST_BUTTON,                                -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-RESET
        SD    => PinSignal_U_ctrl_SD,                        -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-SD
        UI    => PinSignal_U_ctrl_UI                         -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-UI[15..0]
      );

    U_banco : banco                                          -- ObjectKind=Sheet Symbol|PrimaryId=U_banco
      Port Map
      (
        BUSA  => PinSignal_U_banco_BUSA,                     -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-BUSA[7..0]
        BUSB  => PinSignal_U_banco_BUSB,                     -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-BUSB[7..0]
        BUSC  => PinSignal_U7_Y,                             -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-BUSC[7..0]
        CLK   => PinSignal_U2_CLK,                           -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-CLK
        HR    => PinSignal_U_ctrl_HR,                        -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-HR
        RESET => TEST_BUTTON,                                -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-RESET
        SB    => PinSignal_U_banco_SB,                       -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-SB[2..0]
        SC    => PinSignal_U_banco_SC                        -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-SC[2..0]
      );

    U_alu : alu                                              -- ObjectKind=Sheet Symbol|PrimaryId=U_alu
      Port Map
      (
        A     => PinSignal_U_banco_BUSA,                     -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-A[7..0]
        B     => PinSignal_U8_Y,                             -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-B[7..0]
        C     => PinSignal_U_alu_C,                          -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-C
        CLK   => PinSignal_U2_CLK,                           -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-CLK
        DESP  => PinSignal_U_alu_DESP,                       -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-DESP[1..0]
        HF    => PowerSignal_VCC,                            -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-HF
        N     => PinSignal_U_alu_N,                          -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-N
        P     => PinSignal_U_alu_P,                          -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-P
        S     => PinSignal_U_alu_S,                          -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-S[7..0]
        SELOP => PinSignal_U_alu_SELOP,                      -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-SELOP[2..0]
        Z     => PinSignal_U_alu_Z                           -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-Z
      );

    U8 : Configurable_U8                                     -- ObjectKind=Part|PrimaryId=U8|SecondaryId=1
      Port Map
      (
        DA => PinSignal_U_banco_BUSB,                        -- ObjectKind=Pin|PrimaryId=U8-DA[7..0]
        DB => PinSignal_U_ctrl_DATA,                         -- ObjectKind=Pin|PrimaryId=U8-DB[7..0]
        S  => PinSignal_U_ctrl_SD,                           -- ObjectKind=Pin|PrimaryId=U8-S
        Y  => PinSignal_U8_Y                                 -- ObjectKind=Pin|PrimaryId=U8-Y[7..0]
      );

    U7 : Configurable_U7                                     -- ObjectKind=Part|PrimaryId=U7|SecondaryId=1
      Port Map
      (
        DA => NamedSignal_S,                                 -- ObjectKind=Pin|PrimaryId=U7-DA[7..0]
        DB => PinSignal_U_ram_DATA_OUT,                      -- ObjectKind=Pin|PrimaryId=U7-DB[7..0]
        S  => NamedSignal_UI(15),                            -- ObjectKind=Pin|PrimaryId=U7-S
        Y  => PinSignal_U7_Y                                 -- ObjectKind=Pin|PrimaryId=U7-Y[7..0]
      );

    U6 : Configurable_U6                                     -- ObjectKind=Part|PrimaryId=U6|SecondaryId=1
      Port Map
      (
        DA => PowerSignal_GND,                               -- ObjectKind=Pin|PrimaryId=U6-DA
        DB => PowerSignal_VCC,                               -- ObjectKind=Pin|PrimaryId=U6-DB
        DC => PinSignal_U_alu_Z,                             -- ObjectKind=Pin|PrimaryId=U6-DC
        DD => PinSignal_U_alu_N,                             -- ObjectKind=Pin|PrimaryId=U6-DD
        DE => PinSignal_U_alu_C,                             -- ObjectKind=Pin|PrimaryId=U6-DE
        DF => PinSignal_U_alu_P,                             -- ObjectKind=Pin|PrimaryId=U6-DF
        DG => PowerSignal_GND,                               -- ObjectKind=Pin|PrimaryId=U6-DG
        DH => PowerSignal_GND,                               -- ObjectKind=Pin|PrimaryId=U6-DH
        S  => NamedSignal_UI(2 downto 0),                    -- ObjectKind=Pin|PrimaryId=U6-S[2..0]
        Y  => PinSignal_U6_Y                                 -- ObjectKind=Pin|PrimaryId=U6-Y
      );

    U4 : Configurable_U4                                     -- ObjectKind=Part|PrimaryId=U4|SecondaryId=1
      Port Map
      (
        DA => PinSignal_U3_S,                                -- ObjectKind=Pin|PrimaryId=U4-DA[4..0]
        DB => NamedSignal_S(4 downto 0),                     -- ObjectKind=Pin|PrimaryId=U4-DB[4..0]
        S  => PinSignal_U6_Y,                                -- ObjectKind=Pin|PrimaryId=U4-S
        Y  => PinSignal_U4_Y                                 -- ObjectKind=Pin|PrimaryId=U4-Y[4..0]
      );

    U3 : Configurable_U3                                     -- ObjectKind=Part|PrimaryId=U3|SecondaryId=1
      Port Map
      (
        A => PinSignal_U_mar_BUS_DIR,                        -- ObjectKind=Pin|PrimaryId=U3-A[4..0]
        B => NamedSignal_ADD1,                               -- ObjectKind=Pin|PrimaryId=U3-B[4..0]
        S => PinSignal_U3_S                                  -- ObjectKind=Pin|PrimaryId=U3-S[4..0]
      );

    U2 : Configurable_U2                                     -- ObjectKind=Part|PrimaryId=U2|SecondaryId=1
      Port Map
      (
        BUS_DIR => PinSignal_U_mar_BUS_DIR,                  -- ObjectKind=Pin|PrimaryId=U2-BUS_DIR[4..0]
        CLK     => PinSignal_U2_CLK,                         -- ObjectKind=Pin|PrimaryId=U2-CLK
        CS      => PinSignal_U2_CS,                          -- ObjectKind=Pin|PrimaryId=U2-CS
        INST    => PinSignal_U_rom_INST,                     -- ObjectKind=Pin|PrimaryId=U2-INST[15..0]
        RD      => PinSignal_U2_RD                           -- ObjectKind=Pin|PrimaryId=U2-RD
      );

    U1 : Configurable_U1                                     -- ObjectKind=Part|PrimaryId=U1|SecondaryId=1
;

    -- Signal Assignments
    ---------------------
    NamedSignal_ADD1      <= "00001"; -- ObjectKind=Net|PrimaryId=ADD1[4..0]
    NamedSignal_S         <= PinSignal_U_alu_S; -- ObjectKind=Net|PrimaryId=S[7..0]
    NamedSignal_UI        <= PinSignal_U_ctrl_UI; -- ObjectKind=Net|PrimaryId=UI[15..0]
    PinSignal_U_alu_DESP  <= NamedSignal_UI(4 downto 3); -- ObjectKind=Net|PrimaryId=UI[4..0]
    PinSignal_U_alu_SELOP <= NamedSignal_UI(7 downto 5); -- ObjectKind=Net|PrimaryId=UI[7..0]
    PinSignal_U_banco_SB  <= NamedSignal_UI(10 downto 8); -- ObjectKind=Net|PrimaryId=UI[10..0]
    PinSignal_U_banco_SC  <= NamedSignal_UI(13 downto 11); -- ObjectKind=Net|PrimaryId=UI[13..0]
    PowerSignal_GND       <= '0'; -- ObjectKind=Net|PrimaryId=GND
    PowerSignal_VCC       <= '1'; -- ObjectKind=Net|PrimaryId=VCC

end structure;
------------------------------------------------------------


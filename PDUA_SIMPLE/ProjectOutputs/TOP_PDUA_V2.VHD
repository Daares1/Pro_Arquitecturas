------------------------------------------------------------
-- VHDL TOP_PDUA_V2
-- 2014 5 28 1 16 27
-- Created By "DXP VHDL Generator"
-- "Copyright (c) 2002-2004 Altium Limited"
------------------------------------------------------------

------------------------------------------------------------
-- VHDL TOP_PDUA_V2
------------------------------------------------------------

Library IEEE;
Use     IEEE.std_logic_1164.all;

Entity TOP_PDUA_V2 Is
  port
  (
    TEST_BUTTON : In    STD_LOGIC                            -- ObjectKind=Port|PrimaryId=TEST_BUTTON
  );
  attribute MacroCell : boolean;

End TOP_PDUA_V2;
------------------------------------------------------------

------------------------------------------------------------
architecture structure of TOP_PDUA_V2 is
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
        PC      : in  STD_LOGIC_VECTOR(4 downto 0)           -- ObjectKind=Pin|PrimaryId=U2-PC[4..0]
      );
   End Component;

   Component Configurable_U6                                 -- ObjectKind=Part|PrimaryId=U6|SecondaryId=1
      port
      (
        A : in  STD_LOGIC_VECTOR(4 downto 0);                -- ObjectKind=Pin|PrimaryId=U6-A[4..0]
        B : in  STD_LOGIC_VECTOR(4 downto 0);                -- ObjectKind=Pin|PrimaryId=U6-B[4..0]
        S : out STD_LOGIC_VECTOR(4 downto 0)                 -- ObjectKind=Pin|PrimaryId=U6-S[4..0]
      );
   End Component;

   Component Configurable_U7                                 -- ObjectKind=Part|PrimaryId=U7|SecondaryId=1
      port
      (
        C  : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U7-C
        DA : in  STD_LOGIC_VECTOR(4 downto 0);               -- ObjectKind=Pin|PrimaryId=U7-DA[4..0]
        DB : in  STD_LOGIC_VECTOR(4 downto 0);               -- ObjectKind=Pin|PrimaryId=U7-DB[4..0]
        S  : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U7-S
        Y  : out STD_LOGIC_VECTOR(4 downto 0)                -- ObjectKind=Pin|PrimaryId=U7-Y[4..0]
      );
   End Component;

   Component Configurable_U8                                 -- ObjectKind=Part|PrimaryId=U8|SecondaryId=1
      port
      (
        DA : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U8-DA
        DB : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U8-DB
        DC : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U8-DC
        DD : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U8-DD
        DE : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U8-DE
        DF : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U8-DF
        DG : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U8-DG
        DH : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U8-DH
        S  : in  STD_LOGIC_VECTOR(2 downto 0);               -- ObjectKind=Pin|PrimaryId=U8-S[2..0]
        Y  : out STD_LOGIC                                   -- ObjectKind=Pin|PrimaryId=U8-Y
      );
   End Component;

   Component Configurable_U9                                 -- ObjectKind=Part|PrimaryId=U9|SecondaryId=1
      port
      (
        DA : in  STD_LOGIC_VECTOR(7 downto 0);               -- ObjectKind=Pin|PrimaryId=U9-DA[7..0]
        DB : in  STD_LOGIC_VECTOR(7 downto 0);               -- ObjectKind=Pin|PrimaryId=U9-DB[7..0]
        S  : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U9-S
        Y  : out STD_LOGIC_VECTOR(7 downto 0)                -- ObjectKind=Pin|PrimaryId=U9-Y[7..0]
      );
   End Component;

   Component Configurable_U10                                -- ObjectKind=Part|PrimaryId=U10|SecondaryId=1
      port
      (
        C   : in  STD_LOGIC;                                 -- ObjectKind=Pin|PrimaryId=U10-C
        D_B : in  STD_LOGIC_VECTOR(15 downto 0);             -- ObjectKind=Pin|PrimaryId=U10-D_B[15..0]
        Q_B : out STD_LOGIC_VECTOR(15 downto 0);             -- ObjectKind=Pin|PrimaryId=U10-Q_B[15..0]
        R   : in  STD_LOGIC                                  -- ObjectKind=Pin|PrimaryId=U10-R
      );
   End Component;

   Component Configurable_U11                                -- ObjectKind=Part|PrimaryId=U11|SecondaryId=1
      port
      (
        I : in  STD_LOGIC;                                   -- ObjectKind=Pin|PrimaryId=U11-I
        O : out STD_LOGIC                                    -- ObjectKind=Pin|PrimaryId=U11-O
      );
   End Component;

   Component Configurable_U12                                -- ObjectKind=Part|PrimaryId=U12|SecondaryId=1
      port
      (
        DA : in  STD_LOGIC_VECTOR(7 downto 0);               -- ObjectKind=Pin|PrimaryId=U12-DA[7..0]
        DB : in  STD_LOGIC_VECTOR(7 downto 0);               -- ObjectKind=Pin|PrimaryId=U12-DB[7..0]
        S  : in  STD_LOGIC;                                  -- ObjectKind=Pin|PrimaryId=U12-S
        Y  : out STD_LOGIC_VECTOR(7 downto 0)                -- ObjectKind=Pin|PrimaryId=U12-Y[7..0]
      );
   End Component;

   Component ctrl                                            -- ObjectKind=Sheet Symbol|PrimaryId=U_ctrl
      port
      (
        DATA  : out STD_LOGIC_VECTOR(7 downto 0);            -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-DATA[7..0]
        FLAG  : out STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-FLAG
        HR    : out STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-HR
        INST  : in  STD_LOGIC_VECTOR(15 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-INST[15..0]
        RESET : in  STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-RESET
        SD    : out STD_LOGIC;                               -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-SD
        UI    : out STD_LOGIC_VECTOR(15 downto 0)            -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-UI[15..0]
      );
   End Component;

   Component ex_reg                                          -- ObjectKind=Sheet Symbol|PrimaryId=U_ex_reg
      port
      (
        BUSA_I : in  STD_LOGIC_VECTOR(7 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-BUSA_I[7..0]
        BUSA_O : out STD_LOGIC_VECTOR(7 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-BUSA_O[7..0]
        C_I    : in  STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-C_I
        C_O    : out STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-C_O
        CLK    : in  STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-CLK
        HR_I   : in  STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-HR_I
        HR_O   : out STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-HR_O
        N_I    : in  STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-N_I
        N_O    : out STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-N_O
        P_I    : in  STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-P_I
        P_O    : out STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-P_O
        RESET  : in  STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-RESET
        S_I    : in  STD_LOGIC_VECTOR(7 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-S_I[7..0]
        S_O    : out STD_LOGIC_VECTOR(7 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-S_O[7..0]
        SC_I   : in  STD_LOGIC_VECTOR(2 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-SC_I[2..0]
        SC_O   : out STD_LOGIC_VECTOR(2 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-SC_O[2..0]
        UI_I   : in  STD_LOGIC_VECTOR(15 downto 0);          -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-UI_I[15..0]
        UI_O   : out STD_LOGIC_VECTOR(15 downto 0);          -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-UI_O[15..0]
        Z_I    : in  STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-Z_I
        Z_O    : out STD_LOGIC                               -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-Z_O
      );
   End Component;

   Component id_reg                                          -- ObjectKind=Sheet Symbol|PrimaryId=U_id_reg
      port
      (
        BUSA_I : in  STD_LOGIC_VECTOR(7 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-BUSA_I[7..0]
        BUSA_O : out STD_LOGIC_VECTOR(7 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-BUSA_O[7..0]
        BUSB_I : in  STD_LOGIC_VECTOR(7 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-BUSB_I[7..0]
        BUSB_O : out STD_LOGIC_VECTOR(7 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-BUSB_O[7..0]
        CLK    : in  STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-CLK
        DATA_I : in  STD_LOGIC_VECTOR(7 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-DATA_I[7..0]
        DATA_O : out STD_LOGIC_VECTOR(7 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-DATA_O[7..0]
        FLAG_I : in  STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-FLAG_I
        FLAG_O : out STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-FLAG_O
        HR_I   : in  STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-HR_I
        HR_O   : out STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-HR_O
        RESET  : in  STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-RESET
        SC_I   : in  STD_LOGIC_VECTOR(2 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-SC_I[2..0]
        SC_O   : out STD_LOGIC_VECTOR(2 downto 0);           -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-SC_O[2..0]
        SD_I   : in  STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-SD_I
        SD_O   : out STD_LOGIC;                              -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-SD_O
        UI_I   : in  STD_LOGIC_VECTOR(15 downto 0);          -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-UI_I[15..0]
        UI_O   : out STD_LOGIC_VECTOR(15 downto 0)           -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-UI_O[15..0]
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

   Component mem_reg                                         -- ObjectKind=Sheet Symbol|PrimaryId=U_mem_reg
      port
      (
        CLK        : in  STD_LOGIC;                          -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-CLK
        COND_I     : in  STD_LOGIC;                          -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-COND_I
        COND_O     : out STD_LOGIC;                          -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-COND_O
        CS_I       : in  STD_LOGIC;                          -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-CS_I
        CS_O       : out STD_LOGIC;                          -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-CS_O
        HR_I       : in  STD_LOGIC;                          -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-HR_I
        HR_O       : out STD_LOGIC;                          -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-HR_O
        MEM_DATA_I : in  STD_LOGIC_VECTOR(7 downto 0);       -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-MEM_DATA_I[7..0]
        MEM_DATA_O : out STD_LOGIC_VECTOR(7 downto 0);       -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-MEM_DATA_O[7..0]
        PC_I       : in  STD_LOGIC_VECTOR(4 downto 0);       -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-PC_I[4..0]
        PC_O       : out STD_LOGIC_VECTOR(4 downto 0);       -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-PC_O[4..0]
        RESET      : in  STD_LOGIC;                          -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-RESET
        S_I        : in  STD_LOGIC_VECTOR(7 downto 0);       -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-S_I[7..0]
        S_O        : out STD_LOGIC_VECTOR(7 downto 0);       -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-S_O[7..0]
        SC_I       : in  STD_LOGIC_VECTOR(2 downto 0);       -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-SC_I[2..0]
        SC_O       : out STD_LOGIC_VECTOR(2 downto 0)        -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-SC_O[2..0]
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


    Signal NamedSignal_ADD1               : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=ADD1[4..0]
    Signal NamedSignal_CLK                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=CLK
    Signal NamedSignal_S                  : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=S[7..0]
    Signal NamedSignal_U1I                : STD_LOGIC_VECTOR(13 downto 11); -- ObjectKind=Net|PrimaryId=U1I[13..0]
    Signal NamedSignal_UI                 : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=UI[10..0]
    Signal NamedSignal_UI_EX              : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=UI_EX[15..0]
    Signal NamedSignal_UI_WB              : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=UI_WB[2..0]
    Signal PinSignal_U_alu_C              : STD_LOGIC; -- ObjectKind=Net|PrimaryId=C
    Signal PinSignal_U_alu_DESP           : STD_LOGIC_VECTOR(1 downto 0); -- ObjectKind=Net|PrimaryId=UI_EX[4..0]
    Signal PinSignal_U_alu_N              : STD_LOGIC; -- ObjectKind=Net|PrimaryId=N
    Signal PinSignal_U_alu_P              : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P
    Signal PinSignal_U_alu_S              : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=S
    Signal PinSignal_U_alu_SELOP          : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=UI_EX[7..0]
    Signal PinSignal_U_alu_Z              : STD_LOGIC; -- ObjectKind=Net|PrimaryId=Z
    Signal PinSignal_U_banco_BUSA         : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=BUSA
    Signal PinSignal_U_banco_BUSB         : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=BUSB
    Signal PinSignal_U_banco_SB           : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=UI[10..0]
    Signal PinSignal_U_banco_SC           : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=U1I[13..0]
    Signal PinSignal_U_ctrl_DATA          : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=DATA
    Signal PinSignal_U_ctrl_FLAG          : STD_LOGIC; -- ObjectKind=Net|PrimaryId=FLAG
    Signal PinSignal_U_ctrl_HR            : STD_LOGIC; -- ObjectKind=Net|PrimaryId=HR
    Signal PinSignal_U_ctrl_SD            : STD_LOGIC; -- ObjectKind=Net|PrimaryId=SD
    Signal PinSignal_U_ctrl_UI            : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=UI[15..0]
    Signal PinSignal_U_ex_reg_BUSA_O      : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=BUSA_O
    Signal PinSignal_U_ex_reg_C_O         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU8_DE
    Signal PinSignal_U_ex_reg_HR_O        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=HR_O
    Signal PinSignal_U_ex_reg_N_O         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU8_DD
    Signal PinSignal_U_ex_reg_P_O         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU8_DF
    Signal PinSignal_U_ex_reg_S_O         : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=S[7..0]
    Signal PinSignal_U_ex_reg_SC_O        : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=SC_O
    Signal PinSignal_U_ex_reg_UI_O        : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=UI_WB[15..0]
    Signal PinSignal_U_ex_reg_Z_O         : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU8_DC
    Signal PinSignal_U_id_reg_BUSA_O      : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=A
    Signal PinSignal_U_id_reg_BUSB_O      : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=NetU12_DA[7..0]
    Signal PinSignal_U_id_reg_DATA_O      : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=NetU12_DB[7..0]
    Signal PinSignal_U_id_reg_FLAG_O      : STD_LOGIC; -- ObjectKind=Net|PrimaryId=HF
    Signal PinSignal_U_id_reg_HR_O        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=HR_I
    Signal PinSignal_U_id_reg_SC_I        : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=UI[13..0]
    Signal PinSignal_U_id_reg_SC_O        : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=SC_I
    Signal PinSignal_U_id_reg_SD_O        : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU12_S
    Signal PinSignal_U_id_reg_UI_O        : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=UI_EX[15..0]
    Signal PinSignal_U_mar_BUS_DIR        : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=NetU2_BUS_DIR[4..0]
    Signal PinSignal_U_mem_reg_COND_O     : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU7_S
    Signal PinSignal_U_mem_reg_CS_O       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU9_S
    Signal PinSignal_U_mem_reg_HR_O       : STD_LOGIC; -- ObjectKind=Net|PrimaryId=HR
    Signal PinSignal_U_mem_reg_MEM_DATA_O : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=NetU9_DB[7..0]
    Signal PinSignal_U_mem_reg_PC_O       : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=NetU7_DB[4..0]
    Signal PinSignal_U_mem_reg_S_O        : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=NetU9_DA[7..0]
    Signal PinSignal_U_mem_reg_SC_O       : STD_LOGIC_VECTOR(2 downto 0); -- ObjectKind=Net|PrimaryId=U1I[13..0]
    Signal PinSignal_U_ram_DATA_OUT       : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=MEM_DATA_I
    Signal PinSignal_U_rom_INST           : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=NetU10_D_B[15..0]
    Signal PinSignal_U10_Q_B              : STD_LOGIC_VECTOR(15 downto 0); -- ObjectKind=Net|PrimaryId=NetU10_Q_B[15..0]
    Signal PinSignal_U11_O                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU10_R
    Signal PinSignal_U12_Y                : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=NetU12_Y[7..0]
    Signal PinSignal_U2_CLK               : STD_LOGIC; -- ObjectKind=Net|PrimaryId=CLK
    Signal PinSignal_U6_S                 : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=NetU6_S[4..0]
    Signal PinSignal_U7_Y                 : STD_LOGIC_VECTOR(4 downto 0); -- ObjectKind=Net|PrimaryId=NetU2_PC[4..0]
    Signal PinSignal_U8_Y                 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetU8_Y
    Signal PinSignal_U9_Y                 : STD_LOGIC_VECTOR(7 downto 0); -- ObjectKind=Net|PrimaryId=NetU9_Y[7..0]
    Signal PowerSignal_GND                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=GND
    Signal PowerSignal_VCC                : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VCC

begin
    U_rom : rom                                              -- ObjectKind=Sheet Symbol|PrimaryId=U_rom
      Port Map
      (
        CS   => PowerSignal_VCC,                             -- ObjectKind=Sheet Entry|PrimaryId=ROM.vhdl-CS
        DIR  => PinSignal_U_mar_BUS_DIR,                     -- ObjectKind=Sheet Entry|PrimaryId=ROM.vhdl-DIR[4..0]
        INST => PinSignal_U_rom_INST,                        -- ObjectKind=Sheet Entry|PrimaryId=ROM.vhdl-INST[15..0]
        RD   => PowerSignal_GND                              -- ObjectKind=Sheet Entry|PrimaryId=ROM.vhdl-RD
      );

    U_ram : ram                                              -- ObjectKind=Sheet Symbol|PrimaryId=U_ram
      Port Map
      (
        CLK      => PinSignal_U2_CLK,                        -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-CLK
        CS       => NamedSignal_UI_WB(15),                   -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-CS
        DATA_IN  => PinSignal_U_ex_reg_BUSA_O,               -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-DATA_IN[7..0]
        DATA_OUT => PinSignal_U_ram_DATA_OUT,                -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-DATA_OUT[7..0]
        DIR      => NamedSignal_S(2 downto 0),               -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-DIR[2..0]
        RW       => NamedSignal_UI_WB(14)                    -- ObjectKind=Sheet Entry|PrimaryId=RAM.vhdl-RW
      );

    U_mem_reg : mem_reg                                      -- ObjectKind=Sheet Symbol|PrimaryId=U_mem_reg
      Port Map
      (
        CLK        => PinSignal_U2_CLK,                      -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-CLK
        COND_I     => PinSignal_U8_Y,                        -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-COND_I
        COND_O     => PinSignal_U_mem_reg_COND_O,            -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-COND_O
        CS_I       => NamedSignal_UI_WB(15),                 -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-CS_I
        CS_O       => PinSignal_U_mem_reg_CS_O,              -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-CS_O
        HR_I       => PinSignal_U_ex_reg_HR_O,               -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-HR_I
        HR_O       => PinSignal_U_mem_reg_HR_O,              -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-HR_O
        MEM_DATA_I => PinSignal_U_ram_DATA_OUT,              -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-MEM_DATA_I[7..0]
        MEM_DATA_O => PinSignal_U_mem_reg_MEM_DATA_O,        -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-MEM_DATA_O[7..0]
        PC_I       => NamedSignal_S(4 downto 0),             -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-PC_I[4..0]
        PC_O       => PinSignal_U_mem_reg_PC_O,              -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-PC_O[4..0]
        RESET      => PinSignal_U11_O,                       -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-RESET
        S_I        => NamedSignal_S,                         -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-S_I[7..0]
        S_O        => PinSignal_U_mem_reg_S_O,               -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-S_O[7..0]
        SC_I       => PinSignal_U_ex_reg_SC_O,               -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-SC_I[2..0]
        SC_O       => PinSignal_U_mem_reg_SC_O               -- ObjectKind=Sheet Entry|PrimaryId=MEM_REG.vhd-SC_O[2..0]
      );

    U_mar : mar                                              -- ObjectKind=Sheet Symbol|PrimaryId=U_mar
      Port Map
      (
        BUS_C   => PinSignal_U7_Y,                           -- ObjectKind=Sheet Entry|PrimaryId=MAR.vhdl-BUS_C[4..0]
        BUS_DIR => PinSignal_U_mar_BUS_DIR,                  -- ObjectKind=Sheet Entry|PrimaryId=MAR.vhdl-BUS_DIR[4..0]
        CLK     => PinSignal_U2_CLK,                         -- ObjectKind=Sheet Entry|PrimaryId=MAR.vhdl-CLK
        RESET   => PinSignal_U11_O                           -- ObjectKind=Sheet Entry|PrimaryId=MAR.vhdl-RESET
      );

    U_id_reg : id_reg                                        -- ObjectKind=Sheet Symbol|PrimaryId=U_id_reg
      Port Map
      (
        BUSA_I => PinSignal_U_banco_BUSA,                    -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-BUSA_I[7..0]
        BUSA_O => PinSignal_U_id_reg_BUSA_O,                 -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-BUSA_O[7..0]
        BUSB_I => PinSignal_U_banco_BUSB,                    -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-BUSB_I[7..0]
        BUSB_O => PinSignal_U_id_reg_BUSB_O,                 -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-BUSB_O[7..0]
        CLK    => PinSignal_U2_CLK,                          -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-CLK
        DATA_I => PinSignal_U_ctrl_DATA,                     -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-DATA_I[7..0]
        DATA_O => PinSignal_U_id_reg_DATA_O,                 -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-DATA_O[7..0]
        FLAG_I => PinSignal_U_ctrl_FLAG,                     -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-FLAG_I
        FLAG_O => PinSignal_U_id_reg_FLAG_O,                 -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-FLAG_O
        HR_I   => PinSignal_U_ctrl_HR,                       -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-HR_I
        HR_O   => PinSignal_U_id_reg_HR_O,                   -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-HR_O
        RESET  => PinSignal_U11_O,                           -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-RESET
        SC_I   => PinSignal_U_id_reg_SC_I,                   -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-SC_I[2..0]
        SC_O   => PinSignal_U_id_reg_SC_O,                   -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-SC_O[2..0]
        SD_I   => PinSignal_U_ctrl_SD,                       -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-SD_I
        SD_O   => PinSignal_U_id_reg_SD_O,                   -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-SD_O
        UI_I   => PinSignal_U_ctrl_UI,                       -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-UI_I[15..0]
        UI_O   => PinSignal_U_id_reg_UI_O                    -- ObjectKind=Sheet Entry|PrimaryId=ID_REG.vhd-UI_O[15..0]
      );

    U_ex_reg : ex_reg                                        -- ObjectKind=Sheet Symbol|PrimaryId=U_ex_reg
      Port Map
      (
        BUSA_I => PinSignal_U_id_reg_BUSA_O,                 -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-BUSA_I[7..0]
        BUSA_O => PinSignal_U_ex_reg_BUSA_O,                 -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-BUSA_O[7..0]
        C_I    => PinSignal_U_alu_C,                         -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-C_I
        C_O    => PinSignal_U_ex_reg_C_O,                    -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-C_O
        CLK    => PinSignal_U2_CLK,                          -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-CLK
        HR_I   => PinSignal_U_id_reg_HR_O,                   -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-HR_I
        HR_O   => PinSignal_U_ex_reg_HR_O,                   -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-HR_O
        N_I    => PinSignal_U_alu_N,                         -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-N_I
        N_O    => PinSignal_U_ex_reg_N_O,                    -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-N_O
        P_I    => PinSignal_U_alu_P,                         -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-P_I
        P_O    => PinSignal_U_ex_reg_P_O,                    -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-P_O
        RESET  => PinSignal_U11_O,                           -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-RESET
        S_I    => PinSignal_U_alu_S,                         -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-S_I[7..0]
        S_O    => PinSignal_U_ex_reg_S_O,                    -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-S_O[7..0]
        SC_I   => PinSignal_U_id_reg_SC_O,                   -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-SC_I[2..0]
        SC_O   => PinSignal_U_ex_reg_SC_O,                   -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-SC_O[2..0]
        UI_I   => PinSignal_U_id_reg_UI_O,                   -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-UI_I[15..0]
        UI_O   => PinSignal_U_ex_reg_UI_O,                   -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-UI_O[15..0]
        Z_I    => PinSignal_U_alu_Z,                         -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-Z_I
        Z_O    => PinSignal_U_ex_reg_Z_O                     -- ObjectKind=Sheet Entry|PrimaryId=EX_REG.vhd-Z_O
      );

    U_ctrl : ctrl                                            -- ObjectKind=Sheet Symbol|PrimaryId=U_ctrl
      Port Map
      (
        DATA  => PinSignal_U_ctrl_DATA,                      -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-DATA[7..0]
        FLAG  => PinSignal_U_ctrl_FLAG,                      -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-FLAG
        HR    => PinSignal_U_ctrl_HR,                        -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-HR
        INST  => PinSignal_U10_Q_B,                          -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-INST[15..0]
        RESET => PinSignal_U11_O,                            -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-RESET
        SD    => PinSignal_U_ctrl_SD,                        -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-SD
        UI    => PinSignal_U_ctrl_UI                         -- ObjectKind=Sheet Entry|PrimaryId=CTRL.vhdl-UI[15..0]
      );

    U_banco : banco                                          -- ObjectKind=Sheet Symbol|PrimaryId=U_banco
      Port Map
      (
        BUSA  => PinSignal_U_banco_BUSA,                     -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-BUSA[7..0]
        BUSB  => PinSignal_U_banco_BUSB,                     -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-BUSB[7..0]
        BUSC  => PinSignal_U9_Y,                             -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-BUSC[7..0]
        CLK   => PinSignal_U2_CLK,                           -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-CLK
        HR    => PinSignal_U_mem_reg_HR_O,                   -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-HR
        RESET => PinSignal_U11_O,                            -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-RESET
        SB    => PinSignal_U_banco_SB,                       -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-SB[2..0]
        SC    => PinSignal_U_banco_SC                        -- ObjectKind=Sheet Entry|PrimaryId=banco.vhdl-SC[2..0]
      );

    U_alu : alu                                              -- ObjectKind=Sheet Symbol|PrimaryId=U_alu
      Port Map
      (
        A     => PinSignal_U_id_reg_BUSA_O,                  -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-A[7..0]
        B     => PinSignal_U12_Y,                            -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-B[7..0]
        C     => PinSignal_U_alu_C,                          -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-C
        CLK   => PinSignal_U2_CLK,                           -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-CLK
        DESP  => PinSignal_U_alu_DESP,                       -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-DESP[1..0]
        HF    => PinSignal_U_id_reg_FLAG_O,                  -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-HF
        N     => PinSignal_U_alu_N,                          -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-N
        P     => PinSignal_U_alu_P,                          -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-P
        S     => PinSignal_U_alu_S,                          -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-S[7..0]
        SELOP => PinSignal_U_alu_SELOP,                      -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-SELOP[2..0]
        Z     => PinSignal_U_alu_Z                           -- ObjectKind=Sheet Entry|PrimaryId=ALU.vhdl-Z
      );

    U12 : Configurable_U12                                   -- ObjectKind=Part|PrimaryId=U12|SecondaryId=1
      Port Map
      (
        DA => PinSignal_U_id_reg_BUSB_O,                     -- ObjectKind=Pin|PrimaryId=U12-DA[7..0]
        DB => PinSignal_U_id_reg_DATA_O,                     -- ObjectKind=Pin|PrimaryId=U12-DB[7..0]
        S  => PinSignal_U_id_reg_SD_O,                       -- ObjectKind=Pin|PrimaryId=U12-S
        Y  => PinSignal_U12_Y                                -- ObjectKind=Pin|PrimaryId=U12-Y[7..0]
      );

    U11 : Configurable_U11                                   -- ObjectKind=Part|PrimaryId=U11|SecondaryId=1
      Port Map
      (
        I => TEST_BUTTON,                                    -- ObjectKind=Pin|PrimaryId=U11-I
        O => PinSignal_U11_O                                 -- ObjectKind=Pin|PrimaryId=U11-O
      );

    U10 : Configurable_U10                                   -- ObjectKind=Part|PrimaryId=U10|SecondaryId=1
      Port Map
      (
        C   => PinSignal_U2_CLK,                             -- ObjectKind=Pin|PrimaryId=U10-C
        D_B => PinSignal_U_rom_INST,                         -- ObjectKind=Pin|PrimaryId=U10-D_B[15..0]
        Q_B => PinSignal_U10_Q_B,                            -- ObjectKind=Pin|PrimaryId=U10-Q_B[15..0]
        R   => PinSignal_U11_O                               -- ObjectKind=Pin|PrimaryId=U10-R
      );

    U9 : Configurable_U9                                     -- ObjectKind=Part|PrimaryId=U9|SecondaryId=1
      Port Map
      (
        DA => PinSignal_U_mem_reg_S_O,                       -- ObjectKind=Pin|PrimaryId=U9-DA[7..0]
        DB => PinSignal_U_mem_reg_MEM_DATA_O,                -- ObjectKind=Pin|PrimaryId=U9-DB[7..0]
        S  => PinSignal_U_mem_reg_CS_O,                      -- ObjectKind=Pin|PrimaryId=U9-S
        Y  => PinSignal_U9_Y                                 -- ObjectKind=Pin|PrimaryId=U9-Y[7..0]
      );

    U8 : Configurable_U8                                     -- ObjectKind=Part|PrimaryId=U8|SecondaryId=1
      Port Map
      (
        DA => PowerSignal_GND,                               -- ObjectKind=Pin|PrimaryId=U8-DA
        DB => PowerSignal_VCC,                               -- ObjectKind=Pin|PrimaryId=U8-DB
        DC => PinSignal_U_ex_reg_Z_O,                        -- ObjectKind=Pin|PrimaryId=U8-DC
        DD => PinSignal_U_ex_reg_N_O,                        -- ObjectKind=Pin|PrimaryId=U8-DD
        DE => PinSignal_U_ex_reg_C_O,                        -- ObjectKind=Pin|PrimaryId=U8-DE
        DF => PinSignal_U_ex_reg_P_O,                        -- ObjectKind=Pin|PrimaryId=U8-DF
        DG => PowerSignal_GND,                               -- ObjectKind=Pin|PrimaryId=U8-DG
        DH => PowerSignal_GND,                               -- ObjectKind=Pin|PrimaryId=U8-DH
        S  => NamedSignal_UI_WB(2 downto 0),                 -- ObjectKind=Pin|PrimaryId=U8-S[2..0]
        Y  => PinSignal_U8_Y                                 -- ObjectKind=Pin|PrimaryId=U8-Y
      );

    U7 : Configurable_U7                                     -- ObjectKind=Part|PrimaryId=U7|SecondaryId=1
      Port Map
      (
        C  => NamedSignal_CLK,                               -- ObjectKind=Pin|PrimaryId=U7-C
        DA => PinSignal_U6_S,                                -- ObjectKind=Pin|PrimaryId=U7-DA[4..0]
        DB => PinSignal_U_mem_reg_PC_O,                      -- ObjectKind=Pin|PrimaryId=U7-DB[4..0]
        S  => PinSignal_U_mem_reg_COND_O,                    -- ObjectKind=Pin|PrimaryId=U7-S
        Y  => PinSignal_U7_Y                                 -- ObjectKind=Pin|PrimaryId=U7-Y[4..0]
      );

    U6 : Configurable_U6                                     -- ObjectKind=Part|PrimaryId=U6|SecondaryId=1
      Port Map
      (
        A => PinSignal_U_mar_BUS_DIR,                        -- ObjectKind=Pin|PrimaryId=U6-A[4..0]
        B => NamedSignal_ADD1,                               -- ObjectKind=Pin|PrimaryId=U6-B[4..0]
        S => PinSignal_U6_S                                  -- ObjectKind=Pin|PrimaryId=U6-S[4..0]
      );

    U2 : Configurable_U2                                     -- ObjectKind=Part|PrimaryId=U2|SecondaryId=1
      Port Map
      (
        BUS_DIR => PinSignal_U_mar_BUS_DIR,                  -- ObjectKind=Pin|PrimaryId=U2-BUS_DIR[4..0]
        CLK     => PinSignal_U2_CLK,                         -- ObjectKind=Pin|PrimaryId=U2-CLK
        PC      => PinSignal_U7_Y                            -- ObjectKind=Pin|PrimaryId=U2-PC[4..0]
      );

    U1 : Configurable_U1                                     -- ObjectKind=Part|PrimaryId=U1|SecondaryId=1
;

    -- Signal Assignments
    ---------------------
    NamedSignal_ADD1        <= "00001"; -- ObjectKind=Net|PrimaryId=ADD1[4..0]
    NamedSignal_CLK         <= PinSignal_U2_CLK; -- ObjectKind=Net|PrimaryId=CLK
    NamedSignal_S           <= PinSignal_U_ex_reg_S_O; -- ObjectKind=Net|PrimaryId=S[7..0]
    NamedSignal_U1I         <= PinSignal_U_mem_reg_SC_O; -- ObjectKind=Net|PrimaryId=U1I[13..0]
    NamedSignal_UI          <= PinSignal_U_ctrl_UI; -- ObjectKind=Net|PrimaryId=UI[15..0]
    NamedSignal_UI_EX       <= PinSignal_U_id_reg_UI_O; -- ObjectKind=Net|PrimaryId=UI_EX[15..0]
    NamedSignal_UI_WB       <= PinSignal_U_ex_reg_UI_O; -- ObjectKind=Net|PrimaryId=UI_WB[15..0]
    PinSignal_U_alu_DESP    <= NamedSignal_UI_EX(4 downto 3); -- ObjectKind=Net|PrimaryId=UI_EX[4..0]
    PinSignal_U_alu_SELOP   <= NamedSignal_UI_EX(7 downto 5); -- ObjectKind=Net|PrimaryId=UI_EX[7..0]
    PinSignal_U_banco_SB    <= NamedSignal_UI(10 downto 8); -- ObjectKind=Net|PrimaryId=UI[10..0]
    PinSignal_U_banco_SC    <= NamedSignal_U1I; -- ObjectKind=Net|PrimaryId=U1I[13..0]
    PinSignal_U_id_reg_SC_I <= NamedSignal_UI(13 downto 11); -- ObjectKind=Net|PrimaryId=UI[13..0]
    PowerSignal_GND         <= '0'; -- ObjectKind=Net|PrimaryId=GND
    PowerSignal_VCC         <= '1'; -- ObjectKind=Net|PrimaryId=VCC

end structure;
------------------------------------------------------------


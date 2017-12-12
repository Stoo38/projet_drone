-----------------------------------------------------------------------------
--
-- FILE NAME: SEND_RECEIVE.vhd
--
-- AUTHOR: Heyman Tamir
-- Created: 16Oct97
--
-- Description: Include two entities:
-- RECEIVER handle four phase hand shaking with external receiver
-- SENDER handle four phase hand shaking with external sender
--   
-- Last update: 2013-12-05
-----------------------------------------------------------------------------
library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_unsigned.all;

entity RECEIVER is 
  port(
    CLK  		: in     std_logic;
    RST           	: in     std_logic;
    RtoB_ACK		: in     std_logic;
    FIFO_EMPTY 		: in     std_logic;
    GNT 		: in     std_logic;
    BtoR_REQ		: buffer std_logic;
    RtoB_NEW_ACK	: buffer std_logic;
    WRITE		: buffer std_logic
  );
end RECEIVER;

architecture RTL_VIEW of RECEIVER is 
  type 	 R_STATES is (R_IDLE, R_SEND);
  signal R_STATE : R_STATES;
begin
    RECEIVER_INTERFACE: process
    begin
      wait until CLK'event and CLK='1';
      if (RST = '1') then
        R_STATE <= R_IDLE;
      elsif (R_STATE = R_IDLE) then
      if (RtoB_ACK = '0' and 
          GNT= '1' and 
          FIFO_EMPTY = '0'
         ) then R_STATE <= R_SEND;
        end if;
      elsif (R_STATE = R_SEND) then
        if (RtoB_ACK = '1')
          then R_STATE <= R_IDLE;
        end if;
      end if;
    end process;
    WRITE  <= '1' when (R_STATE = R_SEND) and (RtoB_ACK = '1') else '0';
--    BtoR_REQ <= '1' when (R_STATE = R_SEND) else '0';
    BtoR_REQ <= '1' when (R_STATE = R_SEND) and (RST ='0') else '0';  --  Sergio: suppress request on reset to avoid a couple of fails
    RtoB_NEW_ACK <= '1' when (R_STATE = R_IDLE) and 
                     (RST ='0') and RtoB_ACK = '0'
                      and (FIFO_EMPTY = '0') 
                    else '0'; 

end RTL_VIEW;

library IEEE;
 use IEEE.std_logic_1164.all;
 use IEEE.std_logic_unsigned.all;

entity SENDER is 
  port(
    CLK  		: in     std_logic;
    RST           	: in     std_logic;
    StoB_REQ		: in     std_logic;
    FIFO_FULL 		: in     std_logic;
    GNT 		: in     std_logic;
    BtoS_ACK		: buffer std_logic;
    StoB_NEW_REQ	: buffer std_logic;
    READ		: buffer std_logic 
  );
end SENDER;

architecture RTL_VIEW of SENDER is 
  type S_STATES is (S_IDLE, S_READ, S_DONE);
  signal S_STATE : S_STATES;
begin
    StoB_NEW_REQ<= '1' when (S_STATE = S_IDLE) and 
                     (RST ='0') and 
                     (StoB_REQ = '1') and (FIFO_FULL = '0') 
                    else '0'; 

    SENDERS_INTERFACE: process
    begin
      wait until CLK'event and CLK='1';
      if (RST = '1') then
        S_STATE <= S_IDLE;
      elsif (S_STATE = S_IDLE) then
        if (StoB_REQ = '1' and (GNT='1'))
          then S_STATE <= S_READ;
        end if;
      elsif (S_STATE = S_READ ) then
        S_STATE <= S_DONE;  
      elsif (S_STATE = S_DONE ) then
        if (StoB_REQ = '0')
          then S_STATE <= S_IDLE;
        end if;
      end if;
    end process;

    READ  <= '1' when (S_STATE = S_READ) else '0';
    BtoS_ACK <= '1' when (S_STATE = S_DONE) else '0';
end RTL_VIEW;


-----------------------------------
-- Area: West Sarutabaruta [S]
--  NPC: Sealed Entrance (Sealed_Entrance_1)
-- !pos -245.000 -18.100 660.000 95
-----------------------------------
require("scripts/globals/quests");
require("scripts/globals/keyitems");
local ID = require("scripts/zones/West_Sarutabaruta_[S]/IDs");
-----------------------------------

function onTrigger(player,npc)
    local QuestStatus = player:getQuestStatus(CRYSTAL_WAR, SNAKE_ON_THE_PLAINS);
    local HasPutty = player:hasKeyItem(dsp.ki.ZONPAZIPPAS_ALLPURPOSE_PUTTY);
    local MaskBit1 = player:getMaskBit(player:getVar("SEALED_DOORS"),0)
    local MaskBit2 = player:getMaskBit(player:getVar("SEALED_DOORS"),1)
    local MaskBit3 = player:getMaskBit(player:getVar("SEALED_DOORS"),2)

    if (QuestStatus == QUEST_ACCEPTED and HasPutty) then
        if (MaskBit1 == false) then
            if (MaskBit2 == false or MaskBit3 == false) then
                player:setMaskBit(player:getVar("SEALED_DOORS"),"SEALED_DOORS",0,true);
                player:messageSpecial(ID.text.DOOR_OFFSET+1,dsp.ki.ZONPAZIPPAS_ALLPURPOSE_PUTTY);
            else
                player:setMaskBit(player:getVar("SEALED_DOORS"),"SEALED_DOORS",0,true);
                player:messageSpecial(ID.text.DOOR_OFFSET+4,dsp.ki.ZONPAZIPPAS_ALLPURPOSE_PUTTY);
                player:delKeyItem(dsp.ki.ZONPAZIPPAS_ALLPURPOSE_PUTTY);
            end
        else
            player:messageSpecial(ID.text.DOOR_OFFSET+2,dsp.ki.ZONPAZIPPAS_ALLPURPOSE_PUTTY);
        end
    elseif (player:getQuestStatus(CRYSTAL_WAR,SNAKE_ON_THE_PLAINS) == QUEST_COMPLETED) then
        player:messageSpecial(ID.text.DOOR_OFFSET+2, dsp.ki.ZONPAZIPPAS_ALLPURPOSE_PUTTY);
    else
        player:messageSpecial(ID.text.DOOR_OFFSET+3);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
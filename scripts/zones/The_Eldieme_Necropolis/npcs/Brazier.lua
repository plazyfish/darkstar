-----------------------------------
-- Area: The Eldieme Necropolis
-- NPC:  Brazier
-- Involved in Quests: Save my Sister
-- !pos 101 -33 -59 195 (F-9)
-- !pos 259 -33 99 195 (H-7)
-- !pos 99 -33 98 195 (F-7)
-- !pos 259 -33 -58 195 (H-9)
-----------------------------------
local ID = require("scripts/zones/The_Eldieme_Necropolis/IDs");
require("scripts/globals/quests");

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if (player:getQuestStatus(JEUNO,SAVE_MY_SISTER) == QUEST_ACCEPTED and player:getVar("saveMySisterFireLantern") < 4) then
        player:setVar("saveMySisterLanternID",npc:getID());
        player:startEvent(44);
    else
        player:messageSpecial(ID.text.NOTHING_OUT_OF_ORDINARY);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 44 and option == 0) then
        local LanternOrder = player:getVar("saveMySisterFireLantern");
        local offset = player:getVar("saveMySisterLanternID") - ID.npc.ELDIEME_BRAZIER_OFFSET;
        player:setVar("saveMySisterLanternID",0);

        if (LanternOrder == 0) then
            if (offset == 0) then --(F-9)
                player:messageSpecial(ID.text.THE_LIGHT_DIMLY,0,0,0,dsp.ki.DUCAL_GUARDS_LANTERN_LIT);
                player:setVar("saveMySisterFireLantern",1);
            else
                player:messageSpecial(ID.text.REFUSE_TO_LIGHT,0,0,0,dsp.ki.DUCAL_GUARDS_LANTERN_LIT);
            end
        elseif (LanternOrder == 1) then
            if (offset == 1) then --(H-7)
                player:messageSpecial(ID.text.THE_LIGHT_HAS_INTENSIFIED,0,0,0,dsp.ki.DUCAL_GUARDS_LANTERN_LIT);
                player:setVar("saveMySisterFireLantern",2);
            else
                player:messageSpecial(ID.text.LANTERN_GOES_OUT,0,0,0,dsp.ki.DUCAL_GUARDS_LANTERN_LIT);
                player:setVar("saveMySisterFireLantern",0);
            end
        elseif (LanternOrder == 2) then
            if (offset == 2) then --(F-7)
                player:messageSpecial(ID.text.THE_LIGHT_HAS_INTENSIFIED,0,0,0,dsp.ki.DUCAL_GUARDS_LANTERN_LIT);
                player:setVar("saveMySisterFireLantern",3);
            else
                player:messageSpecial(ID.text.LANTERN_GOES_OUT,0,0,0,dsp.ki.DUCAL_GUARDS_LANTERN_LIT);
                player:setVar("saveMySisterFireLantern",0);
            end
        elseif (LanternOrder == 3) then
            if (offset == 3) then --(H-9)
                player:messageSpecial(ID.text.THE_LIGHT_IS_FULLY_LIT,0,0,0,dsp.ki.DUCAL_GUARDS_LANTERN_LIT);
                player:setVar("saveMySisterFireLantern",4);
            else
                player:messageSpecial(ID.text.LANTERN_GOES_OUT,0,0,0,dsp.ki.DUCAL_GUARDS_LANTERN_LIT);
                player:setVar("saveMySisterFireLantern",0);
            end
        end
    end

end;

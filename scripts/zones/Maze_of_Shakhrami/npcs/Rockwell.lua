-----------------------------------
-- Area: Maze of Shakhrami
--  NPC: Rockwell
-- Quest: Your Crystal Ball
-- !pos -18 -13 181 198
-----------------------------------
local ID = require("scripts/zones/Maze_of_Shakhrami/IDs");
require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/quests");
-----------------------------------

function onTrade(player,npc,trade)
    if (player:getQuestStatus(JEUNO,YOUR_CRYSTAL_BALL) == QUEST_ACCEPTED and trade:hasItemQty(557,1) == true and trade:getGil() == 0 and trade:getItemCount() == 1) then
        --no cs i think
        player:setVar("QuestYourCrystalBall_prog", 1);
        player:tradeComplete(trade);
    end
end;

function onTrigger(player,npc)
    if (player:getQuestStatus(JEUNO,YOUR_CRYSTAL_BALL) == QUEST_ACCEPTED and player:getVar("QuestYourCrystalBall_prog") == 1) then
        player:startEvent(52);
    else
        player:messageSpecial(ID.text.NOTHING_OUT_OF_ORDINARY);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 52) then
        if (player:getFreeSlotsCount() == 0) then
            player:messageSpecial(ID.text.ITEM_CANNOT_BE_OBTAINED,556);
        else
            player:addItem(556);
            player:messageSpecial(ID.text.ITEM_OBTAINED,556);
            player:setVar("QuestYourCrystalBall_prog", 0);
        end
    end
end;

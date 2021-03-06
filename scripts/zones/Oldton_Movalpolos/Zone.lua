-----------------------------------
--
-- Zone: Oldton_Movalpolos (11)
--
-----------------------------------
local ID = require("scripts/zones/Oldton_Movalpolos/IDs");
require("scripts/globals/conquest");
require("scripts/globals/missions");
require("scripts/globals/helm")
-----------------------------------

function onInitialize(zone)
    UpdateTreasureSpawnPoint(ID.mob.OLDTON_TREASURE_CHEST);

    dsp.conq.setRegionalConquestOverseers(zone:getRegionID())

    dsp.helm.initZone(zone, dsp.helm.type.MINING)
end;

function onConquestUpdate(zone, updatetype)
    dsp.conq.onConquestUpdate(zone, updatetype)
end;

function onZoneIn(player,prevZone)
    local currentday = tonumber(os.date("%j"));
    local LouverancePath=player:getVar("COP_Louverance_s_Path");
    local cs = -1;

    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(70.956,5.99,139.843,134);
    end
    if (player:getCurrentMission(COP) == THREE_PATHS and (LouverancePath == 3 or LouverancePath == 4)) then
        cs=1;
    elseif (player:getCurrentMission(COP) == DAWN and player:getVar("PromathiaStatus")==3 and player:getVar("Promathia_kill_day")~=currentday and player:getVar("COP_jabbos_story")== 0 ) then
        cs=57;
    end
    return cs;
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid==1) then
        player:setVar("COP_Louverance_s_Path",5);
    elseif (csid == 57) then
        player:setVar("COP_jabbos_story",1);
    end
end;

-----------------------------------
--
-- Zone: Toraimarai_Canal (169)
--
-----------------------------------
local ID = require("scripts/zones/Toraimarai_Canal/IDs")
require("scripts/globals/conquest")
-----------------------------------

function onInitialize(zone)
    UpdateTreasureSpawnPoint(ID.npc.TORAIMARAI_TREASURE_COFFER);
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(-259.98,21.794,81.887,66);
    end
    return cs;
end;

function onConquestUpdate(zone, updatetype)
    dsp.conq.onConquestUpdate(zone, updatetype)
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

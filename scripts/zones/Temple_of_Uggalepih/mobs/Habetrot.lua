-----------------------------------
-- Area: Temple Of Uggalepih
--  MOB: Habetrot
-- !pos -60 -8 58 220
-----------------------------------
local ID = require("scripts/zones/Temple_of_Uggalepih/IDs");
require("scripts/globals/settings");

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
    GetNPCByID(ID.npc.HABETROT_QM):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
end;
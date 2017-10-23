-----------------------------------------
-- ID: 18312
-- Item: Kikoku
-- Additional Effect: Paralysis
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local chance = 10;

    if (math.random(0,99) >= chance or applyResistanceAddEffect(player,target,ELE_ICE,0) <= 0.5) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_PARALYSIS, 17, 0, 30); -- Power needs verification/adjustment.
        return SUBEFFECT_PARALYSIS, msgBasic.ADD_EFFECT_STATUS, EFFECT_PARALYSIS;
    end
end;
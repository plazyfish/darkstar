-----------------------------------
-- Area: Korroloka_Tunnel
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[dsp.zone.KORROLOKA_TUNNEL] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED = 6381, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6387, -- Obtained: <item>.
        GIL_OBTAINED            = 6388, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6390, -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY = 6401, -- There is nothing out of the ordinary here.
        SENSE_OF_BOREBODING     = 6402, -- You are suddenly overcome with a sense of foreboding...
        FISHING_MESSAGE_OFFSET  = 7048, -- You can't fish here.
        CONQUEST_BASE           = 7148, -- Tallying conquest results...
        MINING_IS_POSSIBLE_HERE = 7307, -- Mining is possible here if you have <item>.
        ENTERED_SPRING          = 7323, -- The water in this spring is pleasant and tepid. This looks like a nice place to warm yourself up.
        LEFT_SPRING_EARLY       = 7324, -- You are not warm enough yet. You will need to spend more time than that in the spring to get your body heated up.
        LEFT_SPRING_CLEAN       = 7325, -- Your whole body is piping hot, and the smell of the Rafflesia pollen is gone!
        MORION_WORM_1           = 7328, -- It appears to be a hole made by some kind of animal. Fragments of iron ore are scattered around the area...
        REGIME_REGISTERED       = 9456, -- New training regime registered!
    },
    mob =
    {
        CARGO_CRAB_COLIN_PH =
        {
            [17486002] = 17485980, -- -30.384 1.000 -33.277
            [17486095] = 17485980, -- -85.000 -0.500 -37.000
        },
        DAME_BLANCHE_PH     =
        {
            [17486128] = 17486129, -- -345.369 0.716 119.486
            [17486127] = 17486129, -- -319.266 -0.244 130.650
            [17486126] = 17486129, -- -319.225 -0.146 109.776
            [17486124] = 17486129, -- -296.821 -3.207 131.239
            [17486125] = 17486129, -- -292.487 -5.993 141.408
            [17486119] = 17486129, -- -277.338 -9.352 139.763
            [17486118] = 17486129, -- -276.713 -9.954 135.353
        },
        FALCATUS_ARANEI_PH  =
        {
            [17486033] = 17486031, -- -68.852 -5.029 141.069
            [17486032] = 17486031, -- -94.545 -6.095 136.480
            [17486034] = 17486031, -- -79.827 -6.046 133.982
            [17486027] = 17486031, -- -25.445 -6.073 142.192
            [17486028] = 17486031, -- -33.446 -6.038 141.987
        },
        KORROLOKA_LEECH_I   = 17486187,
        KORROLOKA_LEECH_II  = 17486188,
        KORROLOKA_LEECH_III = 17486189,
        MORION_WORM         = 17486190,
    },
    npc =
    {
        MORION_WORM_QM = 17486213,
        EXCAVATION =
        {
            17486253,
            17486254,
            17486255,
            17486256,
            17486257,
            17486258,
        },
    },
}

return zones[dsp.zone.KORROLOKA_TUNNEL]
Config = {}

-- settings
Config.Debug = false
Config.SellTime = 10000

-- blip settings
Config.Blip = {
    blipName = 'Trapper', -- Config.Blip.blipName
    blipSprite = 'blip_shop_animal_trapper', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

Config.TrapperLocations = {
    -- trapper locations
    {name = 'Valentine Trapper',      location = 'valentine-trapper',     coords = vector3(-334.2203, 773.16943, 116.24839 -0.8), showblip = true }, --valentine
    {name = 'St Denis Trapper',       location = 'stdenis-trapper',       coords = vector3(2832.5424, -1225.602, 47.661453 -0.8), showblip = true }, --stdenis
    {name = 'Riggs Station Trapper',  location = 'riggsstation-trapper',  coords = vector3(-1006.938, -549.3896, 99.393592 -0.8), showblip = true }, --riggsstation
    {name = 'West Elizabeth Trapper', location = 'westelizabeth-trapper', coords = vector3(-2843.525, 142.12048, 184.59883 -0.8), showblip = true }, --westelizabeth
    {name = 'Stawberry Trapper',      location = 'stawberry-trapper',     coords = vector3(-1746.634, -389.2384, 156.53625 -0.8), showblip = true }, --stawberry
    {name = 'Tumbleweed Trapper',     location = 'tumbleweed-trapper',    coords = vector3(-5512.208, -2952.122, -1.791797 -0.8), showblip = true }, --tumbleweed
}

Config.TrapperShop = {
    -- trapper shop items
    [1] = { name = 'bread', price = 1, amount = 50, info = {}, type = 'item', slot = 1, },
    [2] = { name = 'water', price = 1, amount = 50, info = {}, type = 'item', slot = 2, },
}

-- pelt sell prices
Config.PoorPeltPrice = {
    -- Grizzly Bear
    poor_bear_pelt = 4.80,
    -- Black Bear
    poor_black_bear_pelt = 1.63,
    -- Boar
    poor_boar_pelt = 0.75,
    -- Buck
    poor_buck_pelt = 0.13,
    -- Buffalo
    poor_buffalo_pelt = 1.75,
    -- Bull
    poor_bull_pelt = 0.10,
    -- Cougar
    poor_cougar_pelt = 2.00,
    -- Cow
    poor_cow_pelt = 048,
    -- Coyote
    poor_coyote_pelt = 0.60,
    -- Deer
    poor_deer_pelt = 1.35,
    -- Elk
    poor_elk_pelt = 2.35,
    -- Fox
    poor_fox_pelt = 0.42,
    -- Goat
    poor_goat_pelt = 0.22,
    -- Javelina
    poor_javelina_pelt = 0.20,
    -- Moose
    poor_moose_pelt = 2.82,
    -- Ox
    poor_ox_pelt = 0.30,
    -- Panther
    poor_panther_pelt = 2.00,
    -- Pig
    poor_pig_pelt = 0.53,
    -- Prong Horn Ram
    poor_pronghorn_pelt = 1.28,
    -- Big Horn Ram
    poor_bighornram_pelt = 1.16,
    -- Sheep
    poor_sheep_pelt = 0.86,
    -- Wolf
    poor_wolf_pelt = 0.63,
    -- Alligator
    poor_large_alligator_pelt = 1.80,
    poor_alligator_pelt = 0.43,
    -- Racoon
    poor_raccoon_pelt = 0.67,
}

Config.GoodPeltPrice = {
    -- Grizzly Bear
    good_bear_pelt = 4.65,
    -- Black Bear
    good_black_bear_pelt = 1.95,
    -- Boar
    good_boar_pelt = 0.97,
    -- Buck
    good_buck_pelt = 0.21,
    -- Buffalo
    good_buffalo_pelt = 3.25,
    -- Bull
    good_bull_pelt = 0.96,
    -- Cougar
    good_cougar_pelt = 2.67,
    -- Cow
    good_cow_pelt = 0.96,
    -- Coyote
    good_coyote_pelt = 0.90,
    -- Deer
    good_deer_pelt = 1.86,
    -- Elk
    good_elk_pelt = 2.74,
    -- Fox
    good_fox_pelt = 0.83,
    -- Goat
    good_goat_pelt = 0.28,
    -- Javelina
    good_javelina_pelt = 0.50,
    -- Moose
    good_moose_pelt = 4.40,
    -- Ox
    good_ox_pelt = 2.00,
    -- Panther
    good_panther_pelt = 2.67,
    -- Pig
    good_pig_pelt = 0.67,
    -- Prong Horn Ram
    good_pronghorn_pelt = 2.46,
    -- Big Horn Ram
    good_bighornram_pelt = 2.46,
    -- Sheep
    good_sheep_pelt = 1.65,
    -- Wolf
    good_wolf_pelt = 0.90,
    -- Alligator
    good_large_alligator_pelt = 2.00,
    good_alligator_pelt = 0.64,
    -- Racoon
    good_raccoon_pelt = 0.86,
}

Config.PerfectPeltPrice = {
    -- Grizzly Bear
    perfect_bear_pelt = 5.48,
    -- Black Bear
    perfect_black_bear_pelt = 2.27,
    -- Boar
    perfect_boar_pelt = 1.16,
    -- Buck
    perfect_buck_pelt = 0.30,
    -- Buffalo
    perfect_buffalo_pelt = 5.00,
    -- Bull
    perfect_bull_pelt = 1.10,
    -- Cougar
    perfect_cougar_pelt = 4.60,
    -- Cow
    perfect_cow_pelt = 1.10,
    -- Coyote
    perfect_coyote_pelt = 1.20,
    -- Deer
    perfect_deer_pelt = 2.10,
    -- Elk
    perfect_elk_pelt = 2.93,
    -- Fox
    perfect_fox_pelt = 1.08,
    -- Goat
    perfect_goat_pelt = 0.85,
    -- Javelina
    perfect_javelina_pelt = 0.75,
    -- Moose
    perfect_moose_pelt = 8.10,
    -- Ox
    perfect_ox_pelt = 3.00,
    -- Panther
    perfect_panther_pelt = 4.60,
    -- Pig
    perfect_pig_pelt = 0.70,
    -- Prong Horn Ram
    perfect_pronghorn_pelt = 3.60,
    -- Big Horn Ram
    perfect_bighornram_pelt = 3.25,
    -- Sheep
    perfect_sheep_pelt = 2.21,
    -- Wolf
    perfect_wolf_pelt = 1.12,
    -- Alligator
    perfect_large_alligator_pelt = 2.50,
    perfect_alligator_pelt = 0.95,
    -- Racoon
    perfect_raccoon_pelt = 1.14,
}

Config.LegendaryPeltPrice = {
    legendary_alligator_pelt = 10,
    legendary_boar_pelt = 10,
    legendary_cougar_pelt = 10,
    legendary_coyote_pelt = 10,
    legendary_panther_pelt = 10,
    legendary_wolf_pelt = 10,
}

-- bank or cash
Config.PaymentType = 'cash'

Config.Pelts = { -- reward item false or 'itemname'
    
    -- BEAR
    { -- a_c_bear_01 / PROVISION_BEAR_FUR_POOR
        pelthash    = 957520252,
        name        = 'Poor Bear Pelt',
        rewarditem1 = 'poor_bear_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_bear_01 / PROVISION_BEAR_FUR
        pelthash    = 143941906,
        name        = 'Good Bear Pelt',
        rewarditem1 = 'good_bear_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_bear_01 / PROVISION_BEAR_FUR_PRISTINE
        pelthash    = 1292673537,
        name        = 'Perfect Bear Pelt',
        rewarditem1 = 'perfect_bear_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
     
    -- BLACK_BEAR
    { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR_POOR
        pelthash    = 1083865179,
        name        = 'Poor Black Bear Pelt',
        rewarditem1 = 'poor_black_bear_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR
        pelthash    = 1490032862,
        name        = 'Good Black Bear Pelt',
        rewarditem1 = 'good_black_bear_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_bearblack_01 / PROVISION_BLACK_BEAR_FUR_PRISTINE
        pelthash    = 663376218,
        name        = 'Perfect Black Bear Pelt',
        rewarditem1 = 'perfect_black_bear_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    
    -- BOAR
    { -- a_c_boar_01 / PROVISION_BOAR_SKIN_POOR
        pelthash    = 1248540072,
        name        = 'Poor Boar Pelt',
        rewarditem1 = 'poor_boar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_boar_01 / PROVISION_BOAR_SKIN
        pelthash    = 2116849039,
        name        = 'Good Boar Pelt',
        rewarditem1 = 'good_boar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_boar_01 / PROVISION_BOAR_SKIN_PRISTINE
        pelthash    = -1858513856,
        name        = 'Perfect Boar Pelt',
        rewarditem1 = 'perfect_boar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    
    -- BUCK
    { -- a_c_buck_01 / PROVISION_BUCK_FUR_POOR
        pelthash    = 1603936352,
        name        = 'Poor Buck Pelt',
        rewarditem1 = 'poor_buck_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_buck_01 / PROVISION_BUCK_FUR
        pelthash    = -868657362,
        name        = 'Good Buck Pelt',
        rewarditem1 = 'good_buck_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_buck_01 / PROVISION_BUCK_FUR_PRISTINE
        pelthash    = -702790226,
        name        = 'Perfect Buck Pelt',
        rewarditem1 = 'perfect_buck_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },

    -- BUFFALO
    { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR_POOR
        pelthash    = -1730060063,
        name        = 'Poor Buffalo Pelt',
        rewarditem1 = 'poor_buffalo_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR
        pelthash    = -591117838,
        name        = 'Good Buffalo Pelt',
        rewarditem1 = 'good_buffalo_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_buffalo_01 / PROVISION_BUFFALO_FUR_PRISTINE
        pelthash    = -237756948,
        name        = 'Perfect Buffalo Pelt',
        rewarditem1 = 'perfect_buffalo_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },

    -- BULL
    { -- a_c_bull_01 / PROVISION_BULL_HIDE_POOR
        pelthash    = 9293261,
        name        = 'Poor Bull Hide',
        rewarditem1 = 'poor_bull_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_bull_01 / PROVISION_BULL_HIDE
        pelthash    = -536086818,
        name        = 'Good Bull Hide',
        rewarditem1 = 'good_bull_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_bull_01 / PROVISION_BULL_HIDE_PRISTINE
        pelthash    = -53270317,
        name        = 'Perfect Bull Hide',
        rewarditem1 = 'poor_bull_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },

    -- COUGAR
    { -- a_c_cougar_01 / PROVISION_COUGAR_FUR_POOR
        pelthash    = 1914602340,
        name        = 'Poor Cougar Pelt',
        rewarditem1 = 'poor_cougar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_cougar_01 / PROVISION_COUGAR_FUR
        pelthash    = 459744337,
        name        = 'Good Cougar Pelt',
        rewarditem1 = 'good_cougar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_cougar_01 / PROVISION_COUGAR_FUR_PRISTINE
        pelthash    = -1791452194,
        name        = 'Perfect Cougar Pelt',
        rewarditem1 = 'perfect_cougar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },

    -- COW
    { -- a_c_cow / PROVISION_COW_HIDE_POOR
        pelthash    = 334093551,
        name        = 'Poor Cow Hide',
        rewarditem1 = 'poor_cow_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    { -- a_c_cow / PROVISION_COW_HIDE
        pelthash    = 1150594075,
        name        = 'Good Cow Hide',
        rewarditem1 = 'good_cow_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    { -- a_c_cow / PROVISION_COW_HIDE_PRISTINE
        pelthash    = -845037222,
        name        = 'Perfect Cow Hide',
        rewarditem1 = 'perfect_cow_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    
    -- COYOTE
    { -- a_c_coyote_01 / PROVISION_COYOTE_FUR_POOR
        pelthash    = -1558096473,
        name        = 'Poor Coyote Pelt',
        rewarditem1 = 'poor_coyote_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    { -- a_c_coyote_01 / PROVISION_COYOTE_FUR
        pelthash    = 1150939141,
        name        = 'Good Coyote Pelt',
        rewarditem1 = 'good_coyote_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    { -- a_c_coyote_01 / PROVISION_COYOTE_FUR_PRISTINE
        pelthash    = -794277189,
        name        = 'Perfect Coyote Pelt',
        rewarditem1 = 'perfect_coyote_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
        
    -- DEER
    { -- a_c_deer_01 / PROVISION_DEER_HIDE_POOR
        pelthash    = -662178186,
        name        = 'Poor Deer Pelt',
        rewarditem1 = 'poor_deer_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    { -- a_c_deer_01 / PROVISION_DEER_HIDE
        pelthash    = -1827027577,
        name        = 'Good Deer Pelt',
        rewarditem1 = 'good_deer_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    { -- a_c_deer_01 / PROVISION_DEER_HIDE_PRISTINE
        pelthash    = -1035515486,
        name        = 'Perfect Deer Pelt',
        rewarditem1 = 'perfect_deer_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    
    -- ELK
    { -- a_c_elk_01 / PROVISION_ELK_FUR_POOR
        pelthash    = 2053771712,
        name        = 'Poor Elk Pelt',
        rewarditem1 = 'poor_elk_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
        rewarditemAmount = 1
    },
    { -- a_c_elk_01 / PROVISION_ELK_FUR
        pelthash    = 1181652728,
        name        = 'Good Elk Pelt',
        rewarditem1 = 'good_elk_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount = 2
    },
    { -- a_c_elk_01 / PROVISION_ELK_FUR_PRISTINE
        pelthash    = -1332163079,
        name        = 'Perfect Elk Pelt',
        rewarditem1 = 'perfect_elk_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount = 3
    },
    
    -- FOX
    { -- a_c_fox_01 / PROVISION_FOX_FUR_POOR
        pelthash    = 1647012424,
        name        = 'Poor Fox Pelt',
        rewarditem1 = 'poor_fox_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    { -- a_c_fox_01 / PROVISION_FOX_FUR
        pelthash    = 238733925,
        name        = 'Good Fox Pelt',
        rewarditem1 = 'good_fox_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    { -- a_c_fox_01 / PROVISION_FOX_FUR_PRISTINE
        pelthash    = 500722008,
        name        = 'Perfect Fox Pelt',
        rewarditem1 = 'perfect_fox_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    
    -- GOAT
    { -- a_c_goat_01 / PROVISION_GOAT_HAIR_POOR
        pelthash    = 699990316,
        name        = 'Poor Goat Hide',
        rewarditem1 = 'poor_goat_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    { -- a_c_goat_01 / PROVISION_GOAT_HAIR
        pelthash    = 1710714415,
        name        = 'Good Goat Hide',
        rewarditem1 = 'good_goat_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    { -- a_c_goat_01 / PROVISION_GOAT_HAIR_PRISTINE
        pelthash    = -1648383828,
        name        = 'Perfect Goat Hide',
        rewarditem1 = 'perfect_goat_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    
    -- JAVELINA
    { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN_POOR
        pelthash    = -99092070,
        name        = 'Poor Peccary Pig Pelt',
        rewarditem1 = 'poor_javelina_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN
        pelthash    = -1379330323,
        name        = 'Good Peccary Pig Pelt',
        rewarditem1 = 'good_javelina_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_javelina_01 / PROVISION_JAVELINA_SKIN_PRISTINE
        pelthash    = 1963510418,
        name        = 'Perfect Peccary Pig Pelt',
        rewarditem1 = 'perfect_javelina_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    
    -- MOOSE
    { -- a_c_moose_01 / PROVISION_MOOSE_FUR_POOR
        pelthash    = 1868576868,
        name        = 'Poor Moose Pelt',
        rewarditem1 = 'poor_moose_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_moose_01 / PROVISION_MOOSE_FUR
        pelthash    = 1636891382,
        name        = 'Good Moose Pelt',
        rewarditem1 = 'good_moose_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_moose_01 / PROVISION_MOOSE_FUR_PRISTINE
        pelthash    = -217731719,
        name        = 'Perfect Moose Pelt',
        rewarditem1 = 'perfect_moose_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    
    -- OXEN
    { -- a_c_ox_01 / PROVISION_OXEN_HIDE_POOR
        pelthash    = 462348928,
        name        = 'Poor Ox Hide',
        rewarditem1 = 'poor_ox_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_ox_01 / PROVISION_OXEN_HIDE
        pelthash    = 1208128650,
        name        = 'Good Ox Hide',
        rewarditem1 = 'good_ox_pelt',
        rewarditem2 = 'raw_meat',
      --  rewarditem3 = 'raw_meat'
    },
    { -- a_c_ox_01 / PROVISION_OXEN_HIDE_PRISTINE
        pelthash    = 659601266,
        name        = 'Perfect Ox Hide',
        rewarditem1 = 'perfect_ox_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    
    -- PANTHER
    { -- a_c_panther_01 / PROVISION_PANTHER_FUR_POOR
        pelthash    = 1584468323,
        name        = 'Poor Panther Pelt',
        rewarditem1 = 'poor_panther_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_panther_01 / PROVISION_PANTHER_FUR
        pelthash    = -395646254,
        name        = 'Good Panther Pelt',
        rewarditem1 = 'good_panther_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_panther_01 / PROVISION_PANTHER_FUR_PRISTINE
        pelthash    = 1969175294,
        name        = 'Perfect Panther Pelt',
        rewarditem1 = 'perfect_panther_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    
    -- PIG
    { -- a_c_pig_01 / PROVISION_PIG_SKIN_POOR
        pelthash    = -308965548,
        name        = 'Poor Pig Hide',
        rewarditem1 = 'poor_pig_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_pig_01 / PROVISION_PIG_SKIN
        pelthash    = -57190831,
        name        = 'Good Pig Hide',
        rewarditem1 = 'good_pig_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_pig_01 / PROVISION_PIG_SKIN_PRISTINE
        pelthash    = -1102272634,
        name        = 'Perfect Pig Hide',
        rewarditem1 = 'perfect_pig_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    
    -- PRONGHORN
    { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR_POOR
        pelthash    = -983605026,
        name        = 'Poor Pronghorn Hide',
        rewarditem1 = 'poor_pronghorn_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR
        pelthash    = 554578289,
        name        = 'Good Pronghorn Hide',
        rewarditem1 = 'good_pronghorn_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_pronghorn_01 / PROVISION_PRONGHORN_FUR_PRISTINE
        pelthash    = -1544126829,
        name        = 'Perfect Pronghorn Hide',
        rewarditem1 = 'perfect_pronghorn_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    
    -- RAM
    { -- a_c_bighornram_01 / PROVISION_RAM_HIDE_POOR
        pelthash    = 1796037447,
        name        = 'Poor Ram Hide',
        rewarditem1 = 'poor_bighornram_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_bighornram_01 / PROVISION_RAM_HIDE
        pelthash    = -476045512,
        name        = 'Good Ram Hide',
        rewarditem1 = 'good_bighornram_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_bighornram_01 / PROVISION_RAM_HIDE_PRISTINE
        pelthash    = 1795984405,
        name        = 'Perfect Ram Hide',
        rewarditem1 = 'perfect_bighornram_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    
    -- SHEEP
    { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL_POOR
        pelthash    = 1729948479,
        name        = 'Poor Sheep Hide',
        rewarditem1 = 'poor_sheep_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL
        pelthash    = -1317365569,
        name        = 'Good Sheep Hide',
        rewarditem1 = 'good_sheep_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_sheep_01 / PROVISION_SHEEP_WOOL_PRISTINE
        pelthash    = 1466150167,
        name        = 'Perfect Sheep Hide',
        rewarditem1 = 'perfect_sheep_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    
    -- WOLF
    { -- a_c_wolf / PROVISION_WOLF_FUR_POOR
        pelthash    = 85441452,
        name        = 'Poor Wolf Pelt',
        rewarditem1 = 'poor_wolf_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat'
    },
    { -- a_c_wolf / PROVISION_WOLF_FUR
        pelthash    = 1145777975,
        name        = 'Good Wolf Pelt',
        rewarditem1 = 'good_wolf_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_wolf / PROVISION_WOLF_FUR_PRISTINE
        pelthash    = 653400939,
        name        = 'Perfect Wolf Pelt',
        rewarditem1 = 'perfect_wolf_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },

    -- LARGE ALLIGATOR
    { -- a_c_alligator_01 / PROVISION_LARGE_PELT_POOR
        pelthash    = -1243878166,
        name        = 'Poor Large Alligator Pelt',
        rewarditem1 = 'poor_large_alligator_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1 
    },
    { -- a_c_alligator_01 / PROVISION_LARGE_PELT_GOOD
        pelthash    = 143941906,
        name        = 'Good Large Alligator Pelt',
        rewarditem1 = 'good_large_alligator_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1 
    },
    { -- a_c_alligator_01 / PROVISION_LARGE_PELT_PRISTINE
        pelthash    = -1475338121,
        name        = 'Perfect Large Aliigator Pelt',
        rewarditem1 = 'perfect_large_alligator_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1      
    },

    -- ALLIGATOR
    { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN_POOR
        pelthash    = 1806153689,
        name        = 'Poor Alligator Skin',
        rewarditem1 = 'poor_alligator_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN
        pelthash    = -802026654,
        name        = 'Good Alligator Skin',
        rewarditem1 = 'good_alligator_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_alligator_03 / PROVISION_ALLIGATOR_SKIN_PRISTINE
        pelthash    = -1625078531,
        name        = 'Perfect Alligator Skin',
        rewarditem1 = 'perfect_alligator_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    
    -- RACCOON
    { -- a_c_raccoon_01 / PROVISION_RACCOON_FUR_POOR
        pelthash    = 1992476687,
        name        = 'Poor Raccoon Pelt',
        rewarditem1 = 'poor_raccoon_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_raccoon_01 / PROVISION_RACCOON_FUR
        pelthash    = -1178296218,
        name        = 'Good Raccoon Pelt',
        rewarditem1 = 'good_raccoon_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- a_c_raccoon_01 / PROVISION_RACCOON_FUR_PRISTINE
        pelthash    = -305970307,
        name        = 'Perfect Raccoon Pelt',
        rewarditem1 = 'perfect_raccoon_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    
    -- LEGENDARY
    { -- mp_a_c_alligator_01 / Legendary Sun Gator
        pelthash    = -1621144167,
        name        = 'Legendary Sun Gator Skin',
        rewarditem1 = 'legendary_alligator_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- mp_a_c_beaver_01 / Legendary Moon Beaver
        pelthash    = -251416414,
        name        = 'Legendary Moon Beaver Pelt',
        rewarditem1 = 'legendary_moon_beaver_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- A_C_Beaver_01 / Legendary Beaver
        pelthash    = -2059726619,
        name        = 'Legendary Beaver Pelt',
        rewarditem1 = 'legendary_beaver_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- mp_a_c_beaver_01 / Legendary Zizi Beaver
        pelthash    = 121494806,
        name        = 'Legendary Zizi Beaver Pelt',
        rewarditem1 = 'legendary_zizi_beaver_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- mp_a_c_beaver_01 / Legendary Night Beaver
        pelthash    = -1787430524,
        name        = 'Legendary Night Beaver Pelt',
        rewarditem1 = 'legendary_night_beaver_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- mp_a_c_boar_01 / Legendary Wakpa Boar
        pelthash    = -1249752300,
        name        = 'Legendary Wakpa Boar Pelt',
        rewarditem1 = 'legendary_boar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- mp_a_c_cougar_01 / Legendary Maza Cougar
        pelthash    = 397926876,
        name        = 'Legendary Maza Cougar Pelt',
        rewarditem1 = 'legendary_cougar_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- mp_a_c_coyote_01 / Legendary Midnight Paw Coyote
        pelthash    = 1728819413,
        name        = 'Legendary Midnight Paw Coyote Pelt',
        rewarditem1 = 'legendary_coyote_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- mp_a_c_panther_01 / Legendary Ghost Panther
        pelthash    = 836208559,
        name        = 'Legendary Ghost Panther Pelt',
        rewarditem1 = 'legendary_panther_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- mp_a_c_wolf_01? / Legendary Onyx Wolf
        pelthash    = -1548204069,
        name        = 'Legendary Onyx Wolf Pelt',
        rewarditem1 = 'legendary_wolf_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    { -- mp_a_c_wolf_01 / Legendary Emerald Wolf Pelt
        pelthash    = -1946740647,
        name        = 'Legendary Emerald Wolf Pelt',
        rewarditem1 = 'legendary_wolf_pelt',
        rewarditem2 = 'raw_meat',
        rewarditem3 = 'raw_meat',
        rewarditemAmount1 = 1,
        rewarditemAmount2 = 1,
        rewarditemAmount3 = 1
    },
    
}

// Disabled items
REIEvents.hide("item", (event) => {
  const hiddenItems = [
    "minecraft:command_block",
    "minecraft:repeating_command_block",
    "minecraft:chain_command_block",
    "minecraft:barrier",
    "minecraft:light",
    "minecraft:structure_void",
    "silentgear:coating_smithing_template",
    "phosphophyllite:debug_tool",
    "citadel:fancy_item",
    "citadel:icon_item",
    "citadel:effect_item",
    "citadel:debug",
    "sophisticatedstorage:inaccessible_slot",
    "create:copper_backtank_placeable",
    "create:netherite_backtank_placeable",
    "moonlight:placeable_item",
    "create_jetpack:jetpack_placeable",
    "cyclic:amethyst_pickaxe",
    "cyclic:copper_pickaxe",
    "cyclic:emerald_pickaxe",
    "cyclic:crystal_pickaxe",
    "cyclic:sandstone_pickaxe",
    "cyclic:netherbrick_pickaxe",
    "cyclic:amethyst_axe",
    "cyclic:copper_axe",
    "cyclic:emerald_axe",
    "cyclic:crystal_axe",
    "cyclic:sandstone_axe",
    "cyclic:netherbrick_axe",
    "cyclic:amethyst_hoe",
    "cyclic:copper_hoe",
    "cyclic:emerald_hoe",
    "cyclic:crystal_hoe",
    "cyclic:sandstone_hoe",
    "cyclic:netherbrick_hoe",
    "cyclic:amethyst_shovel",
    "cyclic:copper_shovel",
    "cyclic:emerald_shovel",
    "cyclic:crystal_shovel",
    "cyclic:sandstone_shovel",
    "cyclic:netherbrick_shovel",
    "cyclic:amethyst_sword",
    "cyclic:copper_sword",
    "cyclic:emerald_sword",
    "cyclic:crystal_sword",
    "cyclic:sandstone_sword",
    "cyclic:netherbrick_sword",
    "cyclic:shield_wood",
    "cyclic:shield_leather",
    "cyclic:shield_flint",
    "cyclic:shield_obsidian",
    "cyclic:shield_bone",
    "cyclic:apple_ender",
    "cyclic:apple_lofty_stature",
    "cyclic:apple_honey",
    "cyclic:apple_chorus",
    "cyclic:apple_bone",
    "cyclic:apple_prismarine",
    "cyclic:apple_lapis",
    "cyclic:apple_iron",
    "cyclic:apple_diamond",
    "cyclic:apple_emerald",
    "cyclic:apple_chocolate",
    "cyclic:apple_sprout",
    "cyclic:apple_sprout_diamond",
    "cyclic:apple_sprout_emerald",
    "cyclic:crystal_boots",
    "cyclic:crystal_helmet",
    "cyclic:crystal_chestplate",
    "cyclic:crystal_leggings",
    "cyclic:emerald_boots",
    "cyclic:emerald_helmet",
    "cyclic:emerald_chestplate",
    "cyclic:emerald_leggings",
    "cyclic:mattock",
    "cyclic:mattock_nether",
    "cyclic:mattock_stone",
    "forcecraft:force_torch",
    "forcecraft:force_red_torch",
    "forcecraft:force_light_gray_torch",
    "forcecraft:force_pink_torch",
    "forcecraft:force_magenta_torch",
    "forcecraft:force_light_blue_torch",
    "forcecraft:force_brown_torch",
    "forcecraft:force_black_torch",
    "forcecraft:force_white_torch",
    "forcecraft:force_blue_torch",
    "forcecraft:force_green_torch",
    "forcecraft:force_orange_torch",
    "forcecraft:force_lime_torch",
    "forcecraft:force_cyan_torch",
    "forcecraft:force_purple_torch",
    "forcecraft:force_gray_torch",
    "forcecraft:time_torch",
    "forcecraft:force_planks",
    "forcecraft:force_plank_stairs",
    "forcecraft:force_plank_slab",
    "forcecraft:force_leaves",
    "forcecraft:force_wood",
    "forcecraft:force_log",
    "forcecraft:force_sapling",
    "forcecraft:force_stick",
    "forcecraft:golden_power_source",
    "pickletweaks:watering_can",
    "pickletweaks:reinforced_watering_can",
    "mysticalagriculture:air_seeds",
    "mysticalagriculture:earth_seeds",
    "mysticalagriculture:water_seeds",
    "mysticalagriculture:fire_seeds",
    "mysticalagriculture:inferium_seeds",
    "mysticalagriculture:stone_seeds",
    "mysticalagriculture:dirt_seeds",
    "mysticalagriculture:wood_seeds",
    "mysticalagriculture:ice_seeds",
    "mysticalagriculture:deepslate_seeds",
    "mysticalagriculture:nature_seeds",
    "mysticalagriculture:dye_seeds",
    "mysticalagriculture:nether_seeds",
    "mysticalagriculture:coal_seeds",
    "mysticalagriculture:coral_seeds",
    "mysticalagriculture:honey_seeds",
    "mysticalagriculture:amethyst_seeds",
    "mysticalagriculture:pig_seeds",
    "mysticalagriculture:chicken_seeds",
    "mysticalagriculture:cow_seeds",
    "mysticalagriculture:sheep_seeds",
    "mysticalagriculture:squid_seeds",
    "mysticalagriculture:fish_seeds",
    "mysticalagriculture:slime_seeds",
    "mysticalagriculture:turtle_seeds",
    "mysticalagriculture:rubber_seeds",
    "mysticalagriculture:silicon_seeds",
    "mysticalagriculture:sulfur_seeds",
    "mysticalagriculture:aluminum_seeds",
    "mysticalagriculture:saltpeter_seeds",
    "mysticalagriculture:apatite_seeds",
    "mysticalagriculture:grains_of_infinity_seeds",
    "mysticalagriculture:mystical_flower_seeds",
    "mysticalagriculture:marble_seeds",
    "mysticalagriculture:limestone_seeds",
    "mysticalagriculture:basalt_seeds",
    "mysticalagriculture:menril_seeds",
    "mysticalagriculture:iron_seeds",
    "mysticalagriculture:copper_seeds",
    "mysticalagriculture:nether_quartz_seeds",
    "mysticalagriculture:glowstone_seeds",
    "mysticalagriculture:redstone_seeds",
    "mysticalagriculture:obsidian_seeds",
    "mysticalagriculture:prismarine_seeds",
    "mysticalagriculture:zombie_seeds",
    "mysticalagriculture:skeleton_seeds",
    "mysticalagriculture:creeper_seeds",
    "mysticalagriculture:spider_seeds",
    "mysticalagriculture:rabbit_seeds",
    "mysticalagriculture:tin_seeds",
    "mysticalagriculture:bronze_seeds",
    "mysticalagriculture:zinc_seeds",
    "mysticalagriculture:brass_seeds",
    "mysticalagriculture:silver_seeds",
    "mysticalagriculture:lead_seeds",
    "mysticalagriculture:graphite_seeds",
    "mysticalagriculture:blizz_seeds",
    "mysticalagriculture:blitz_seeds",
    "mysticalagriculture:basalz_seeds",
    "mysticalagriculture:amethyst_bronze_seeds",
    "mysticalagriculture:slimesteel_seeds",
    "mysticalagriculture:pig_iron_seeds",
    "mysticalagriculture:copper_alloy_seeds",
    "mysticalagriculture:redstone_alloy_seeds",
    "mysticalagriculture:conductive_alloy_seeds",
    "mysticalagriculture:manasteel_seeds",
    "mysticalagriculture:steeleaf_seeds",
    "mysticalagriculture:ironwood_seeds",
    "mysticalagriculture:aquamarine_seeds",
    "mysticalagriculture:sky_stone_seeds",
    "mysticalagriculture:certus_quartz_seeds",
    "mysticalagriculture:quartz_enriched_iron_seeds",
    "mysticalagriculture:gold_seeds",
    "mysticalagriculture:lapis_lazuli_seeds",
    "mysticalagriculture:end_seeds",
    "mysticalagriculture:experience_seeds",
    "mysticalagriculture:blaze_seeds",
    "mysticalagriculture:ghast_seeds",
    "mysticalagriculture:enderman_seeds",
    "mysticalagriculture:steel_seeds",
    "mysticalagriculture:nickel_seeds",
    "mysticalagriculture:constantan_seeds",
    "mysticalagriculture:electrum_seeds",
    "mysticalagriculture:invar_seeds",
    "mysticalagriculture:mithril_seeds",
    "mysticalagriculture:tungsten_seeds",
    "mysticalagriculture:titanium_seeds",
    "mysticalagriculture:uranium_seeds",
    "mysticalagriculture:chrome_seeds",
    "mysticalagriculture:ruby_seeds",
    "mysticalagriculture:sapphire_seeds",
    "mysticalagriculture:peridot_seeds",
    "mysticalagriculture:signalum_seeds",
    "mysticalagriculture:lumium_seeds",
    "mysticalagriculture:flux_infused_ingot_seeds",
    "mysticalagriculture:hop_graphite_seeds",
    "mysticalagriculture:cobalt_seeds",
    "mysticalagriculture:soularium_seeds",
    "mysticalagriculture:dark_steel_seeds",
    "mysticalagriculture:pulsating_alloy_seeds",
    "mysticalagriculture:energetic_alloy_seeds",
    "mysticalagriculture:elementium_seeds",
    "mysticalagriculture:osmium_seeds",
    "mysticalagriculture:fluorite_seeds",
    "mysticalagriculture:refined_glowstone_seeds",
    "mysticalagriculture:refined_obsidian_seeds",
    "mysticalagriculture:knightmetal_seeds",
    "mysticalagriculture:fiery_ingot_seeds",
    "mysticalagriculture:starmetal_seeds",
    "mysticalagriculture:compressed_iron_seeds",
    "mysticalagriculture:fluix_seeds",
    "mysticalagriculture:energized_steel_seeds",
    "mysticalagriculture:blazing_crystal_seeds",
    "mysticalagriculture:diamond_seeds",
    "mysticalagriculture:emerald_seeds",
    "mysticalagriculture:netherite_seeds",
    "mysticalagriculture:wither_skeleton_seeds",
    "mysticalagriculture:platinum_seeds",
    "mysticalagriculture:iridium_seeds",
    "mysticalagriculture:enderium_seeds",
    "mysticalagriculture:flux_infused_gem_seeds",
    "mysticalagriculture:manyullyn_seeds",
    "mysticalagriculture:queens_slime_seeds",
    "mysticalagriculture:hepatizon_seeds",
    "mysticalagriculture:vibrant_alloy_seeds",
    "mysticalagriculture:end_steel_seeds",
    "mysticalagriculture:terrasteel_seeds",
    "mysticalagriculture:rock_crystal_seeds",
    "mysticalagriculture:draconium_seeds",
    "mysticalagriculture:yellorium_seeds",
    "mysticalagriculture:cyanite_seeds",
    "mysticalagriculture:niotic_crystal_seeds",
    "mysticalagriculture:spirited_crystal_seeds",
    "mysticalagriculture:uraninite_seeds",
    "mysticalagriculture:stone_essence",
    "mysticalagriculture:dirt_essence",
    "mysticalagriculture:wood_essence",
    "mysticalagriculture:ice_essence",
    "mysticalagriculture:deepslate_essence",
    "mysticalagriculture:nature_essence",
    "mysticalagriculture:dye_essence",
    "mysticalagriculture:nether_essence",
    "mysticalagriculture:coal_essence",
    "mysticalagriculture:coral_essence",
    "mysticalagriculture:honey_essence",
    "mysticalagriculture:amethyst_essence",
    "mysticalagriculture:pig_essence",
    "mysticalagriculture:chicken_essence",
    "mysticalagriculture:cow_essence",
    "mysticalagriculture:sheep_essence",
    "mysticalagriculture:squid_essence",
    "mysticalagriculture:fish_essence",
    "mysticalagriculture:slime_essence",
    "mysticalagriculture:turtle_essence",
    "mysticalagriculture:rubber_essence",
    "mysticalagriculture:silicon_essence",
    "mysticalagriculture:sulfur_essence",
    "mysticalagriculture:aluminum_essence",
    "mysticalagriculture:saltpeter_essence",
    "mysticalagriculture:apatite_essence",
    "mysticalagriculture:grains_of_infinity_essence",
    "mysticalagriculture:mystical_flower_essence",
    "mysticalagriculture:marble_essence",
    "mysticalagriculture:limestone_essence",
    "mysticalagriculture:basalt_essence",
    "mysticalagriculture:menril_essence",
    "mysticalagriculture:iron_essence",
    "mysticalagriculture:copper_essence",
    "mysticalagriculture:nether_quartz_essence",
    "mysticalagriculture:glowstone_essence",
    "mysticalagriculture:redstone_essence",
    "mysticalagriculture:obsidian_essence",
    "mysticalagriculture:prismarine_essence",
    "mysticalagriculture:zombie_essence",
    "mysticalagriculture:skeleton_essence",
    "mysticalagriculture:creeper_essence",
    "mysticalagriculture:spider_essence",
    "mysticalagriculture:rabbit_essence",
    "mysticalagriculture:tin_essence",
    "mysticalagriculture:bronze_essence",
    "mysticalagriculture:zinc_essence",
    "mysticalagriculture:brass_essence",
    "mysticalagriculture:silver_essence",
    "mysticalagriculture:lead_essence",
    "mysticalagriculture:blizz_essence",
    "mysticalagriculture:graphite_essence",
    "mysticalagriculture:blitz_essence",
    "mysticalagriculture:basalz_essence",
    "mysticalagriculture:amethyst_bronze_essence",
    "mysticalagriculture:slimesteel_essence",
    "mysticalagriculture:pig_iron_essence",
    "mysticalagriculture:copper_alloy_essence",
    "mysticalagriculture:redstone_alloy_essence",
    "mysticalagriculture:conductive_alloy_essence",
    "mysticalagriculture:manasteel_essence",
    "mysticalagriculture:steeleaf_essence",
    "mysticalagriculture:ironwood_essence",
    "mysticalagriculture:aquamarine_essence",
    "mysticalagriculture:sky_stone_essence",
    "mysticalagriculture:certus_quartz_essence",
    "mysticalagriculture:quartz_enriched_iron_essence",
    "mysticalagriculture:gold_essence",
    "mysticalagriculture:lapis_lazuli_essence",
    "mysticalagriculture:end_essence",
    "mysticalagriculture:experience_essence",
    "mysticalagriculture:blaze_essence",
    "mysticalagriculture:ghast_essence",
    "mysticalagriculture:enderman_essence",
    "mysticalagriculture:steel_essence",
    "mysticalagriculture:nickel_essence",
    "mysticalagriculture:constantan_essence",
    "mysticalagriculture:electrum_essence",
    "mysticalagriculture:invar_essence",
    "mysticalagriculture:mithril_essence",
    "mysticalagriculture:tungsten_essence",
    "mysticalagriculture:titanium_essence",
    "mysticalagriculture:uranium_essence",
    "mysticalagriculture:chrome_essence",
    "mysticalagriculture:ruby_essence",
    "mysticalagriculture:sapphire_essence",
    "mysticalagriculture:peridot_essence",
    "mysticalagriculture:signalum_essence",
    "mysticalagriculture:lumium_essence",
    "mysticalagriculture:flux_infused_ingot_essence",
    "mysticalagriculture:hop_graphite_essence",
    "mysticalagriculture:cobalt_essence",
    "mysticalagriculture:rose_gold_essence",
    "mysticalagriculture:soularium_essence",
    "mysticalagriculture:dark_steel_essence",
    "mysticalagriculture:pulsating_alloy_essence",
    "mysticalagriculture:energetic_alloy_essence",
    "mysticalagriculture:elementium_essence",
    "mysticalagriculture:osmium_essence",
    "mysticalagriculture:fluorite_essence",
    "mysticalagriculture:refined_glowstone_essence",
    "mysticalagriculture:refined_obsidian_essence",
    "mysticalagriculture:knightmetal_essence",
    "mysticalagriculture:fiery_ingot_essence",
    "mysticalagriculture:starmetal_essence",
    "mysticalagriculture:compressed_iron_essence",
    "mysticalagriculture:fluix_essence",
    "mysticalagriculture:energized_steel_essence",
    "mysticalagriculture:blazing_crystal_essence",
    "mysticalagriculture:diamond_essence",
    "mysticalagriculture:emerald_essence",
    "mysticalagriculture:netherite_essence",
    "mysticalagriculture:wither_skeleton_essence",
    "mysticalagriculture:platinum_essence",
    "mysticalagriculture:iridium_essence",
    "mysticalagriculture:enderium_essence",
    "mysticalagriculture:flux_infused_gem_essence",
    "mysticalagriculture:manyullyn_essence",
    "mysticalagriculture:queens_slime_essence",
    "mysticalagriculture:hepatizon_essence",
    "mysticalagriculture:vibrant_alloy_essence",
    "mysticalagriculture:end_steel_essence",
    "mysticalagriculture:terrasteel_essence",
    "mysticalagriculture:rock_crystal_essence",
    "mysticalagriculture:draconium_essence",
    "mysticalagriculture:yellorium_essence",
    "mysticalagriculture:cyanite_essence",
    "mysticalagriculture:niotic_crystal_essence",
    "mysticalagriculture:spirited_crystal_essence",
    "mysticalagriculture:uraninite_essence",
    "mysticalagriculture:rose_gold_seeds",
    "mysticalagriculture:diamond_scythe",
    "mysticalagriculture:diamond_sickle",
    "mysticalagriculture:soulium_dagger",
    "mysticalagriculture:passive_soulium_dagger",
    "mysticalagriculture:hostile_soulium_dagger",
    "mysticalagriculture:creative_soulium_dagger",
    "mysticalagriculture:soul_extractor",
    "mysticalagriculture:soulium_spawner",
    "mysticalagriculture:soulium_ingot",
    "mysticalagriculture:soulium_nugget",
    "mysticalagriculture:soulium_gemstone",
    "mysticalagriculture:soulium_seed_base",
    "mysticalagriculture:soul_dust",
    "mysticalagriculture:soulium_dust",
    "mysticalagriculture:soul_jar",
    "mysticalagriculture:soulium_ingot_block",
    "mysticalagriculture:soulium_gemstone_block",
    "mysticalagriculture:soulium_ore",
    "mysticalagriculture:soulstone",
    "mysticalagriculture:soulstone_cobble",
    "mysticalagriculture:soulstone_bricks",
    "mysticalagriculture:soulstone_cracked_bricks",
    "mysticalagriculture:soulstone_chiseled_bricks",
    "mysticalagriculture:soulstone_smooth",
    "mysticalagriculture:soul_glass",
    "mysticalagriculture:soulstone_slab",
    "mysticalagriculture:soulstone_cobble_slab",
    "mysticalagriculture:soulstone_bricks_slab",
    "mysticalagriculture:soulstone_smooth_slab",
    "mysticalagriculture:soulstone_stairs",
    "mysticalagriculture:soulstone_cobble_stairs",
    "mysticalagriculture:soulstone_bricks_stairs",
    "mysticalagriculture:soulstone_cobble_wall",
    "mysticalagriculture:soulstone_bricks_wall",
    "colossalchests:upgrade_tool",
    "colossalchests:upgrade_tool_reverse",
    "colossalchests:chest_wall_copper",
    "colossalchests:colossal_chest_copper",
    "colossalchests:interface_copper",
    "colossalchests:chest_wall_iron",
    "colossalchests:colossal_chest_iron",
    "colossalchests:interface_iron",
    "colossalchests:chest_wall_silver",
    "colossalchests:colossal_chest_silver",
    "colossalchests:interface_silver",
    "colossalchests:chest_wall_gold",
    "colossalchests:colossal_chest_gold",
    "colossalchests:interface_gold",
    "colossalchests:chest_wall_diamond",
    "colossalchests:colossal_chest_diamond",
    "colossalchests:interface_diamond",
    "colossalchests:chest_wall_obsidian",
    "colossalchests:colossal_chest_obsidian",
    "colossalchests:interface_obsidian",
    "exnihilosequentia:andesite_pebble",
    "exnihilosequentia:basalt_pebble",
    "exnihilosequentia:blackstone_pebble",
    "exnihilosequentia:calcite_pebble",
    "exnihilosequentia:deepslate_pebble",
    "exnihilosequentia:diorite_pebble",
    "exnihilosequentia:dripstone_pebble",
    "exnihilosequentia:end_stone_pebble",
    "exnihilosequentia:granite_pebble",
    "exnihilosequentia:netherrack_pebble",
    "exnihilosequentia:stone_pebble",
    "exnihilosequentia:tuff_pebble",
    "exnihilosequentia:iron_pieces",
    "exnihilosequentia:gold_pieces",
    "exnihilosequentia:copper_pieces",
    "exnihilosequentia:copper_nugget",
    "exnihilosequentia:lead_ingot",
    "exnihilosequentia:raw_lead",
    "exnihilosequentia:lead_pieces",
    "exnihilosequentia:lead_nugget",
    "exnihilosequentia:nickel_ingot",
    "exnihilosequentia:raw_nickel",
    "exnihilosequentia:nickel_pieces",
    "exnihilosequentia:nickel_nugget",
    "exnihilosequentia:silver_ingot",
    "exnihilosequentia:raw_silver",
    "exnihilosequentia:silver_pieces",
    "exnihilosequentia:silver_nugget",
    "exnihilosequentia:tin_ingot",
    "exnihilosequentia:raw_tin",
    "exnihilosequentia:tin_pieces",
    "exnihilosequentia:tin_nugget",
    "exnihilosequentia:aluminum_ingot",
    "exnihilosequentia:raw_aluminum",
    "exnihilosequentia:aluminum_pieces",
    "exnihilosequentia:aluminum_nugget",
    "exnihilosequentia:platinum_ingot",
    "exnihilosequentia:raw_platinum",
    "exnihilosequentia:platinum_pieces",
    "exnihilosequentia:platinum_nugget",
    "exnihilosequentia:uranium_ingot",
    "exnihilosequentia:raw_uranium",
    "exnihilosequentia:uranium_pieces",
    "exnihilosequentia:uranium_nugget",
    "exnihilosequentia:zinc_ingot",
    "exnihilosequentia:raw_zinc",
    "exnihilosequentia:zinc_pieces",
    "exnihilosequentia:zinc_nugget",
    "immersiveengineering:ingot_lead",
    "immersiveengineering:nugget_lead",
    "immersiveengineering:raw_lead",
    "immersiveengineering:plate_lead",
    "immersiveengineering:dust_lead",
    "immersiveengineering:storage_lead",
    "immersiveengineering:slab_storage_lead",
    "create:crushed_raw_lead",
    "immersiveengineering:ingot_silver",
    "immersiveengineering:nugget_silver",
    "immersiveengineering:raw_silver",
    "immersiveengineering:plate_silver",
    "immersiveengineering:dust_silver",
    "immersiveengineering:storage_silver",
    "immersiveengineering:slab_storage_silver",
    "occultism:raw_silver",
    "occultism:silver_ingot",
    "occultism:silver_nugget",
    "occultism:silver_dust",
    "immersiveengineering:ingot_nickel",
    "immersiveengineering:nugget_nickel",
    "immersiveengineering:raw_nickel",
    "immersiveengineering:plate_nickel",
    "immersiveengineering:dust_nickel",
    "immersiveengineering:storage_nickel",
    "immersiveengineering:slab_storage_nickel",
    "enderio:powdered_iron",
    "enderio:powdered_gold",
    "enderio:powdered_copper",
    "enderio:powdered_tin",
    "enderio:powdered_ender_pearl",
    "enderio:powdered_lapis_lazuli",
    "enderio:powdered_obsidian",
    "enderio:powdered_quartz",
    "industrialforegoing:iron_gear",
    "industrialforegoing:gold_gear",
    "industrialforegoing:diamond_gear",
    "exnihilosequentia:bamboo_crucible",
    "exnihilosequentia:acacia_crucible",
    "exnihilosequentia:birch_crucible",
    "exnihilosequentia:cherry_crucible",
    "exnihilosequentia:dark_oak_crucible",
    "exnihilosequentia:jungle_crucible",
    "exnihilosequentia:mangrove_crucible",
    "exnihilosequentia:oak_crucible",
    "exnihilosequentia:spruce_crucible",
    "exnihilosequentia:crimson_crucible",
    "exnihilosequentia:warped_crucible",
    "exnihilosequentia:acacia_barrel",
    "exnihilosequentia:bamboo_barrel",
    "exnihilosequentia:birch_barrel",
    "exnihilosequentia:cherry_barrel",
    "exnihilosequentia:dark_oak_barrel",
    "exnihilosequentia:jungle_barrel",
    "exnihilosequentia:mangrove_barrel",
    "exnihilosequentia:oak_barrel",
    "exnihilosequentia:spruce_barrel",
    "exnihilosequentia:crimson_barrel",
    "exnihilosequentia:warped_barrel",
    "exnihilosequentia:andesite_crook",
    "exnihilosequentia:bamboo_crook",
    "exnihilosequentia:basalt_crook",
    "exnihilosequentia:blackstone_crook",
    "exnihilosequentia:bone_crook",
    "exnihilosequentia:calcite_crook",
    "exnihilosequentia:cherry_crook",
    "exnihilosequentia:copper_crook",
    "exnihilosequentia:deepslate_crook",
    "exnihilosequentia:diamond_crook",
    "exnihilosequentia:diorite_crook",
    "exnihilosequentia:dripstone_crook",
    "exnihilosequentia:golden_crook",
    "exnihilosequentia:granite_crook",
    "exnihilosequentia:iron_crook",
    "exnihilosequentia:nether_brick_crook",
    "exnihilosequentia:netherite_crook",
    "exnihilosequentia:red_nether_brick_crook",
    "exnihilosequentia:stone_crook",
    "exnihilosequentia:terracotta_crook",
    "exnihilosequentia:tuff_crook",
    "exnihilosequentia:wooden_crook",
    "pickletweaks:emerald_sword",
    "pickletweaks:emerald_pickaxe",
    "pickletweaks:emerald_shovel",
    "pickletweaks:emerald_axe",
    "pickletweaks:emerald_hoe",
    "pickletweaks:flint_helmet",
    "pickletweaks:flint_chestplate",
    "pickletweaks:flint_leggings",
    "pickletweaks:flint_boots",
    "pickletweaks:flint_sword",
    "pickletweaks:flint_pickaxe",
    "pickletweaks:flint_shovel",
    "pickletweaks:flint_axe",
    "pickletweaks:flint_hoe",
    "pickletweaks:flint_shears",
    "pickletweaks:emerald_helmet",
    "pickletweaks:emerald_chestplate",
    "pickletweaks:emerald_leggings",
    "pickletweaks:emerald_boots",
    "pickletweaks:wooden_paxel",
    "pickletweaks:stone_paxel",
    "pickletweaks:iron_paxel",
    "pickletweaks:golden_paxel",
    "pickletweaks:diamond_paxel",
    "pickletweaks:flint_paxel",
    "pickletweaks:emerald_paxel",
    "pickletweaks:netherite_paxel",
    "pickletweaks:wooden_sickle",
    "pickletweaks:stone_sickle",
    "pickletweaks:iron_sickle",
    "pickletweaks:golden_sickle",
    "pickletweaks:diamond_sickle",
    "pickletweaks:flint_sickle",
    "pickletweaks:emerald_sickle",
    "pickletweaks:netherite_sickle",
    "pickletweaks:wooden_scythe",
    "pickletweaks:stone_scythe",
    "pickletweaks:iron_scythe",
    "pickletweaks:golden_scythe",
    "pickletweaks:diamond_scythe",
    "pickletweaks:flint_scythe",
    "pickletweaks:emerald_scythe",
    "pickletweaks:netherite_scythe",
    "occultism:advancement_icon",
    "immersiveengineering:fake_icon_birthday",
    "immersiveengineering:fake_icon_lucky",
    "immersiveengineering:fake_icon_drillbreak",
    "immersiveengineering:fake_icon_ravenholm",
    "immersiveengineering:fake_icon_fried",
    "immersiveengineering:fake_icon_bttf",
    "occultism:dictionary_of_spirits_icon",
    "simplehats:haticon",
    "modonomicon:modonomicon_blue",
    "modonomicon:modonomicon_green",
    "modonomicon:modonomicon_purple",
    "modonomicon:modonomicon_red",
    "ae2:certus_quartz_axe",
    "ae2:certus_quartz_hoe",
    "ae2:certus_quartz_shovel",
    "ae2:certus_quartz_pickaxe",
    "ae2:certus_quartz_sword",
    "create_jetpack:netherite_jetpack_placeable",
    "thermal:rubber",
    "thermal:cured_rubber",
    "thermal:latex",
    "industrialforegoing:tinydryrubber",
    "pickletweaks:white_cobblestone",
    "pickletweaks:orange_cobblestone",
    "pickletweaks:magenta_cobblestone",
    "pickletweaks:light_blue_cobblestone",
    "pickletweaks:yellow_cobblestone",
    "pickletweaks:lime_cobblestone",
    "pickletweaks:pink_cobblestone",
    "pickletweaks:gray_cobblestone",
    "pickletweaks:light_gray_cobblestone",
    "pickletweaks:cyan_cobblestone",
    "pickletweaks:purple_cobblestone",
    "pickletweaks:blue_cobblestone",
    "pickletweaks:brown_cobblestone",
    "pickletweaks:green_cobblestone",
    "pickletweaks:red_cobblestone",
    "pickletweaks:black_cobblestone",
    "pickletweaks:grass_fiber",
    "pickletweaks:grass_fiber_mesh",
    "pickletweaks:mesh",
    "pickletweaks:reinforced_mesh",
    "pickletweaks:coal_piece",
    "pickletweaks:charcoal_piece",
    "pickletweaks:smooth_glowstone",
    "pickletweaks:diamond_apple",
    "pickletweaks:emerald_apple",
    "forcecraft:red_chu_jelly",
    "forcecraft:green_chu_jelly",
    "forcecraft:blue_chu_jelly",
    "forcecraft:gold_chu_jelly",
    "earthmobsmod:tropical_slime_block",
    "earthmobsmod:tropical_ball",
    "biggerreactors:uranium_dust",
    "biggerreactors:uranium_ingot",
    "biggerreactors:uranium_block",
    "biggerreactors:uranium_chunk",
    "biggerreactors:uranium_ore",
    "biggerreactors:deepslate_uranium_ore",
    "biggerreactors:raw_uranium_block",
    "immersiveengineering:dust_wood",
    "immersiveengineering:slag",
    "enderio:silicon",
    "cyclic:shears_obsidian",
    "cyclic:shears_flint",
    "rftoolsbase:machine_frame",
    "rftoolsbase:machine_base",
    "exnihilosequentia:string_mesh",
    "exnihilosequentia:flint_mesh",
    "exnihilosequentia:iron_mesh",
    "exnihilosequentia:diamond_mesh",
    "exnihilosequentia:emerald_mesh",
    "exnihilosequentia:netherite_mesh",
    "exnihilosequentia:stone_barrel",
    "exnihilosequentia:acacia_sieve",
    "exnihilosequentia:bamboo_sieve",
    "exnihilosequentia:birch_sieve",
    "exnihilosequentia:cherry_sieve",
    "exnihilosequentia:dark_oak_sieve",
    "exnihilosequentia:jungle_sieve",
    "exnihilosequentia:mangrove_sieve",
    "exnihilosequentia:oak_sieve",
    "exnihilosequentia:spruce_sieve",
    "exnihilosequentia:crimson_sieve",
    "exnihilosequentia:warped_sieve",
    "mysticalagriculture:infusion_crystal",
    "enderio:painted_fence",
    "enderio:painted_fence_gate",
    "enderio:painted_sand",
    "enderio:painted_stairs",
    "enderio:painted_crafting_table",
    "enderio:painted_redstone_block",
    "enderio:painted_trapdoor",
    "enderio:painted_wooden_pressure_plate",
    "enderio:painted_slab",
    "enderio:painted_glowstone",
    "rftoolsutility:syringe",
    "rftoolsutility:spawner",
    "rftoolsutility:teleport_probe",
    "rftoolsutility:weakness_module",
    "earthmobsmod:duck_egg",
    "extractinator:silt",
    "extractinator:slush",
    "exnihilosequentia:witch_water",
    "exnihilosequentia:sea_water",
    "wormhole:portal",
    "occultism:jei_dummy/none",
    "railways:white_incomplete_conductor_cap",
    "railways:orange_incomplete_conductor_cap",
    "railways:magenta_incomplete_conductor_cap",
    "railways:light_blue_incomplete_conductor_cap",
    "railways:yellow_incomplete_conductor_cap",
    "railways:lime_incomplete_conductor_cap",
    "railways:pink_incomplete_conductor_cap",
    "railways:gray_incomplete_conductor_cap",
    "railways:light_gray_incomplete_conductor_cap",
    "railways:cyan_incomplete_conductor_cap",
    "railways:purple_incomplete_conductor_cap",
    "railways:blue_incomplete_conductor_cap",
    "railways:brown_incomplete_conductor_cap",
    "railways:green_incomplete_conductor_cap",
    "railways:red_incomplete_conductor_cap",
    "railways:black_incomplete_conductor_cap",
    "mob_grinding_utils:null_sword",
    "supplementaries:gunpowder",
    "occultism:debug_foliot_lumberjack",
    "occultism:debug_foliot_transport_items",
    "occultism:debug_foliot_cleaner",
    "occultism:debug_foliot_trader",
    "occultism:debug_djinni_manage_machine",
    "occultism:debug_djinni_test",
    "occultism:pentacle",
    "occultism:lighted_air",
    "occultism:miner_marid_master",
    "occultism:jei_dummy/require_sacrifice",
    "occultism:jei_dummy/require_item_use",
    "railways:track_incomplete_blackstone_narrow",
    "railways:track_incomplete_jungle_narrow",
    "railways:track_incomplete_ender",
    "railways:track_incomplete_mangrove_wide",
    "railways:track_incomplete_mangrove_narrow",
    "railways:track_incomplete_cherry_narrow",
    "railways:track_incomplete_acacia_wide",
    "railways:track_incomplete_oak_narrow",
    "railways:track_incomplete_tieless_wide",
    "railways:track_incomplete_blackstone",
    "railways:track_incomplete_warped_narrow",
    "railways:track_incomplete_phantom",
    "railways:track_incomplete_birch",
    "railways:track_incomplete_warped",
    "railways:track_incomplete_bamboo_wide",
    "railways:track_incomplete_jungle_wide",
    "railways:track_incomplete_spruce_wide",
    "railways:track_incomplete_mangrove",
    "railways:track_incomplete_crimson_narrow",
    "railways:track_incomplete_stripped_bamboo_narrow",
    "railways:track_incomplete_bamboo",
    "railways:track_incomplete_ender_narrow",
    "railways:track_incomplete_dark_oak_narrow",
    "railways:track_incomplete_acacia",
    "railways:track_incomplete_jungle",
    "railways:track_incomplete_cherry_wide",
    "railways:track_incomplete_monorail",
    "railways:track_incomplete_dark_oak",
    "railways:track_incomplete_spruce",
    "railways:track_incomplete_crimson_wide",
    "railways:track_incomplete_ender_wide",
    "railways:track_incomplete_acacia_narrow",
    "railways:track_incomplete_stripped_bamboo",
    "railways:track_incomplete_stripped_bamboo_wide",
    "railways:track_incomplete_oak",
    "railways:track_incomplete_oak_wide",
    "railways:track_incomplete_birch_wide",
    "railways:track_incomplete_crimson",
    "railways:track_incomplete_tieless_narrow",
    "railways:track_incomplete_bamboo_narrow",
    "railways:track_incomplete_blackstone_wide",
    "railways:track_incomplete_birch_narrow",
    "railways:track_incomplete_tieless",
    "railways:track_incomplete_create_andesite_narrow",
    "railways:track_incomplete_warped_wide",
    "railways:track_incomplete_dark_oak_wide",
    "railways:track_incomplete_spruce_narrow",
    "railways:track_incomplete_cherry",
    "railways:track_incomplete_create_andesite_wide",
    "minecraft:debug_stick",
    "occultism:debug_wand",
    "occultism:miner_debug_unspecialized",
    "ars_nouveau:debug",
    "sophisticatedstorage:debug_tool",
    "exnihilosequentia:blaze_doll",
    "exnihilosequentia:enderman_doll",
    "exnihilosequentia:shulker_doll",
    "exnihilosequentia:guardian_doll",
    "exnihilosequentia:bee_doll",
    "earthmobsmod:ruby",
    "earthmobsmod:zombified_rabbit_foot",
    "earthmobsmod:ruby_block",
    "veincreeper:spawn_egg_magenta",
    "veincreeper:spawn_egg_pink",
    "veincreeper:spawn_egg_green",
    "veincreeper:spawn_egg_light_gray",
    "veincreeper:spawn_egg_lime",
    "veincreeper:spawn_egg_black",
    "veincreeper:spawn_egg_yellow",
    "veincreeper:spawn_egg_light_blue",
    "veincreeper:spawn_egg_brown",
    "veincreeper:spawn_egg_cyan",
    "veincreeper:spawn_egg_orange",
    "veincreeper:spawn_egg_gray",
    "veincreeper:spawn_egg_red",
    "veincreeper:spawn_egg_blue",
    "veincreeper:spawn_egg_white",
    "veincreeper:spawn_egg_purple",
    "enderio:painted_travel_anchor",
    "enderio:painted_wall",
    "ae2:meteorite_compass",
  ];

  hiddenItems.forEach((item) => event.hide(item));
});

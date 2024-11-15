// Disabled items
REIEvents.hide("item", (event) => {
  const hiddenItems = [
    "ae2:certus_quartz_axe",
    "ae2:certus_quartz_hoe",
    "ae2:certus_quartz_pickaxe",
    "ae2:certus_quartz_shovel",
    "ae2:certus_quartz_sword",
    "ae2:meteorite_compass",
    "ars_nouveau:debug",
    "biggerreactors:deepslate_uranium_ore",
    "biggerreactors:raw_uranium_block",
    "biggerreactors:uranium_block",
    "biggerreactors:uranium_chunk",
    "biggerreactors:uranium_dust",
    "biggerreactors:uranium_ingot",
    "biggerreactors:uranium_ore",
    "citadel:debug",
    "citadel:effect_item",
    "citadel:fancy_item",
    "citadel:icon_item",
    "colossalchests:chest_wall_copper",
    "colossalchests:chest_wall_diamond",
    "colossalchests:chest_wall_gold",
    "colossalchests:chest_wall_iron",
    "colossalchests:chest_wall_obsidian",
    "colossalchests:chest_wall_silver",
    "colossalchests:colossal_chest_copper",
    "colossalchests:colossal_chest_diamond",
    "colossalchests:colossal_chest_gold",
    "colossalchests:colossal_chest_iron",
    "colossalchests:colossal_chest_obsidian",
    "colossalchests:colossal_chest_silver",
    "colossalchests:interface_copper",
    "colossalchests:interface_diamond",
    "colossalchests:interface_gold",
    "colossalchests:interface_iron",
    "colossalchests:interface_obsidian",
    "colossalchests:interface_silver",
    "colossalchests:upgrade_tool",
    "colossalchests:upgrade_tool_reverse",
    "create:copper_backtank_placeable",
    "create:crushed_raw_lead",
    "create:netherite_backtank_placeable",
    "create_jetpack:jetpack_placeable",
    "create_jetpack:netherite_jetpack_placeable",
    "cyclic:amethyst_axe",
    "cyclic:amethyst_hoe",
    "cyclic:amethyst_pickaxe",
    "cyclic:amethyst_shovel",
    "cyclic:amethyst_sword",
    "cyclic:apple_bone",
    "cyclic:apple_chocolate",
    "cyclic:apple_chorus",
    "cyclic:apple_diamond",
    "cyclic:apple_emerald",
    "cyclic:apple_ender",
    "cyclic:apple_honey",
    "cyclic:apple_iron",
    "cyclic:apple_lapis",
    "cyclic:apple_lofty_stature",
    "cyclic:apple_prismarine",
    "cyclic:apple_sprout",
    "cyclic:apple_sprout_diamond",
    "cyclic:apple_sprout_emerald",
    "cyclic:copper_axe",
    "cyclic:copper_hoe",
    "cyclic:copper_pickaxe",
    "cyclic:copper_shovel",
    "cyclic:copper_sword",
    "cyclic:crystal_axe",
    "cyclic:crystal_boots",
    "cyclic:crystal_chestplate",
    "cyclic:crystal_helmet",
    "cyclic:crystal_hoe",
    "cyclic:crystal_leggings",
    "cyclic:crystal_pickaxe",
    "cyclic:crystal_shovel",
    "cyclic:crystal_sword",
    "cyclic:emerald_axe",
    "cyclic:emerald_boots",
    "cyclic:emerald_chestplate",
    "cyclic:emerald_helmet",
    "cyclic:emerald_hoe",
    "cyclic:emerald_leggings",
    "cyclic:emerald_pickaxe",
    "cyclic:emerald_shovel",
    "cyclic:emerald_sword",
    "cyclic:mattock",
    "cyclic:mattock_nether",
    "cyclic:mattock_stone",
    "cyclic:netherbrick_axe",
    "cyclic:netherbrick_hoe",
    "cyclic:netherbrick_pickaxe",
    "cyclic:netherbrick_shovel",
    "cyclic:netherbrick_sword",
    "cyclic:sandstone_axe",
    "cyclic:sandstone_hoe",
    "cyclic:sandstone_pickaxe",
    "cyclic:sandstone_shovel",
    "cyclic:sandstone_sword",
    "cyclic:shears_flint",
    "cyclic:shears_obsidian",
    "cyclic:shield_bone",
    "cyclic:shield_flint",
    "cyclic:shield_leather",
    "cyclic:shield_obsidian",
    "cyclic:shield_wood",
    "draconicevolution:structure_block",
    "earthmobsmod:duck_egg",
    "earthmobsmod:ruby",
    "earthmobsmod:ruby_block",
    "earthmobsmod:tropical_ball",
    "earthmobsmod:tropical_slime_block",
    "earthmobsmod:zombified_rabbit_foot",
    "enderio:painted_crafting_table",
    "enderio:painted_fence",
    "enderio:painted_fence_gate",
    "enderio:painted_glowstone",
    "enderio:painted_redstone_block",
    "enderio:painted_sand",
    "enderio:painted_slab",
    "enderio:painted_stairs",
    "enderio:painted_trapdoor",
    "enderio:painted_travel_anchor",
    "enderio:painted_wall",
    "enderio:painted_wooden_pressure_plate",
    "enderio:powdered_copper",
    "enderio:powdered_ender_pearl",
    "enderio:powdered_gold",
    "enderio:powdered_iron",
    "enderio:powdered_lapis_lazuli",
    "enderio:powdered_obsidian",
    "enderio:powdered_quartz",
    "enderio:powdered_tin",
    "enderio:silicon",
    "exnihilosequentia:acacia_barrel",
    "exnihilosequentia:acacia_crucible",
    "exnihilosequentia:acacia_sieve",
    "exnihilosequentia:aluminum_ingot",
    "exnihilosequentia:aluminum_nugget",
    "exnihilosequentia:aluminum_pieces",
    "exnihilosequentia:andesite_crook",
    "exnihilosequentia:andesite_pebble",
    "exnihilosequentia:bamboo_barrel",
    "exnihilosequentia:bamboo_crook",
    "exnihilosequentia:bamboo_crucible",
    "exnihilosequentia:bamboo_sieve",
    "exnihilosequentia:basalt_crook",
    "exnihilosequentia:basalt_pebble",
    "exnihilosequentia:bee_doll",
    "exnihilosequentia:birch_barrel",
    "exnihilosequentia:birch_crucible",
    "exnihilosequentia:birch_sieve",
    "exnihilosequentia:blackstone_crook",
    "exnihilosequentia:blackstone_pebble",
    "exnihilosequentia:blaze_doll",
    "exnihilosequentia:bone_crook",
    "exnihilosequentia:calcite_crook",
    "exnihilosequentia:calcite_pebble",
    "exnihilosequentia:cherry_barrel",
    "exnihilosequentia:cherry_crook",
    "exnihilosequentia:cherry_crucible",
    "exnihilosequentia:cherry_sieve",
    "exnihilosequentia:copper_crook",
    "exnihilosequentia:copper_nugget",
    "exnihilosequentia:copper_pieces",
    "exnihilosequentia:crimson_barrel",
    "exnihilosequentia:crimson_crucible",
    "exnihilosequentia:crimson_sieve",
    "exnihilosequentia:dark_oak_barrel",
    "exnihilosequentia:dark_oak_crucible",
    "exnihilosequentia:dark_oak_sieve",
    "exnihilosequentia:deepslate_crook",
    "exnihilosequentia:deepslate_pebble",
    "exnihilosequentia:diamond_crook",
    "exnihilosequentia:diamond_mesh",
    "exnihilosequentia:diorite_crook",
    "exnihilosequentia:diorite_pebble",
    "exnihilosequentia:dripstone_crook",
    "exnihilosequentia:dripstone_pebble",
    "exnihilosequentia:emerald_mesh",
    "exnihilosequentia:end_stone_pebble",
    "exnihilosequentia:enderman_doll",
    "exnihilosequentia:flint_mesh",
    "exnihilosequentia:gold_pieces",
    "exnihilosequentia:golden_crook",
    "exnihilosequentia:granite_crook",
    "exnihilosequentia:granite_pebble",
    "exnihilosequentia:guardian_doll",
    "exnihilosequentia:iron_crook",
    "exnihilosequentia:iron_mesh",
    "exnihilosequentia:iron_pieces",
    "exnihilosequentia:jungle_barrel",
    "exnihilosequentia:jungle_crucible",
    "exnihilosequentia:jungle_sieve",
    "exnihilosequentia:lead_ingot",
    "exnihilosequentia:lead_nugget",
    "exnihilosequentia:lead_pieces",
    "exnihilosequentia:mangrove_barrel",
    "exnihilosequentia:mangrove_crucible",
    "exnihilosequentia:mangrove_sieve",
    "exnihilosequentia:nether_brick_crook",
    "exnihilosequentia:netherite_crook",
    "exnihilosequentia:netherite_mesh",
    "exnihilosequentia:netherrack_pebble",
    "exnihilosequentia:nickel_ingot",
    "exnihilosequentia:nickel_nugget",
    "exnihilosequentia:nickel_pieces",
    "exnihilosequentia:oak_barrel",
    "exnihilosequentia:oak_crucible",
    "exnihilosequentia:oak_sieve",
    "exnihilosequentia:platinum_ingot",
    "exnihilosequentia:platinum_nugget",
    "exnihilosequentia:platinum_pieces",
    "exnihilosequentia:porcelain_doll",
    "exnihilosequentia:raw_aluminum",
    "exnihilosequentia:raw_lead",
    "exnihilosequentia:raw_nickel",
    "exnihilosequentia:raw_platinum",
    "exnihilosequentia:raw_silver",
    "exnihilosequentia:raw_tin",
    "exnihilosequentia:raw_uranium",
    "exnihilosequentia:raw_zinc",
    "exnihilosequentia:red_nether_brick_crook",
    "exnihilosequentia:sea_water",
    "exnihilosequentia:shulker_doll",
    "exnihilosequentia:silver_ingot",
    "exnihilosequentia:silver_nugget",
    "exnihilosequentia:silver_pieces",
    "exnihilosequentia:spruce_barrel",
    "exnihilosequentia:spruce_crucible",
    "exnihilosequentia:spruce_sieve",
    "exnihilosequentia:stone_barrel",
    "exnihilosequentia:stone_crook",
    "exnihilosequentia:stone_pebble",
    "exnihilosequentia:string_mesh",
    "exnihilosequentia:terracotta_crook",
    "exnihilosequentia:tin_ingot",
    "exnihilosequentia:tin_nugget",
    "exnihilosequentia:tin_pieces",
    "exnihilosequentia:tuff_crook",
    "exnihilosequentia:tuff_pebble",
    "exnihilosequentia:uranium_ingot",
    "exnihilosequentia:uranium_nugget",
    "exnihilosequentia:uranium_pieces",
    "exnihilosequentia:warped_barrel",
    "exnihilosequentia:warped_crucible",
    "exnihilosequentia:warped_sieve",
    "exnihilosequentia:witch_water",
    "exnihilosequentia:wooden_crook",
    "exnihilosequentia:zinc_ingot",
    "exnihilosequentia:zinc_nugget",
    "exnihilosequentia:zinc_pieces",
    "extractinator:silt",
    "extractinator:slush",
    "forcecraft:blue_chu_jelly",
    "forcecraft:force_black_torch",
    "forcecraft:force_blue_torch",
    "forcecraft:force_brown_torch",
    "forcecraft:force_cyan_torch",
    "forcecraft:force_gray_torch",
    "forcecraft:force_green_torch",
    "forcecraft:force_leaves",
    "forcecraft:force_light_blue_torch",
    "forcecraft:force_light_gray_torch",
    "forcecraft:force_lime_torch",
    "forcecraft:force_log",
    "forcecraft:force_magenta_torch",
    "forcecraft:force_orange_torch",
    "forcecraft:force_pink_torch",
    "forcecraft:force_plank_slab",
    "forcecraft:force_plank_stairs",
    "forcecraft:force_planks",
    "forcecraft:force_purple_torch",
    "forcecraft:force_red_torch",
    "forcecraft:force_sapling",
    "forcecraft:force_stick",
    "forcecraft:force_torch",
    "forcecraft:force_white_torch",
    "forcecraft:force_wood",
    "forcecraft:gold_chu_jelly",
    "forcecraft:golden_power_source",
    "forcecraft:green_chu_jelly",
    "forcecraft:red_chu_jelly",
    "forcecraft:time_torch",
    "immersiveengineering:dust_lead",
    "immersiveengineering:dust_nickel",
    "immersiveengineering:dust_silver",
    "immersiveengineering:dust_wood",
    "immersiveengineering:fake_icon_birthday",
    "immersiveengineering:fake_icon_bttf",
    "immersiveengineering:fake_icon_drillbreak",
    "immersiveengineering:fake_icon_fried",
    "immersiveengineering:fake_icon_lucky",
    "immersiveengineering:fake_icon_ravenholm",
    "immersiveengineering:ingot_lead",
    "immersiveengineering:ingot_nickel",
    "immersiveengineering:ingot_silver",
    "immersiveengineering:nugget_lead",
    "immersiveengineering:nugget_nickel",
    "immersiveengineering:nugget_silver",
    "immersiveengineering:plate_lead",
    "immersiveengineering:plate_nickel",
    "immersiveengineering:plate_silver",
    "immersiveengineering:raw_lead",
    "immersiveengineering:raw_nickel",
    "immersiveengineering:raw_silver",
    "immersiveengineering:slab_storage_lead",
    "immersiveengineering:slab_storage_nickel",
    "immersiveengineering:slab_storage_silver",
    "immersiveengineering:slag",
    "immersiveengineering:storage_lead",
    "immersiveengineering:storage_nickel",
    "immersiveengineering:storage_silver",
    "industrialforegoing:diamond_gear",
    "industrialforegoing:gold_gear",
    "industrialforegoing:iron_gear",
    "industrialforegoing:mob_slaughter_factory",
    "industrialforegoing:tinydryrubber",
    "industrialforegoing:transporter",
    "minecraft:barrier",
    "minecraft:chain_command_block",
    "minecraft:command_block",
    "minecraft:debug_stick",
    "minecraft:light",
    "minecraft:repeating_command_block",
    "minecraft:structure_void",
    "mob_grinding_utils:null_sword",
    "modonomicon:modonomicon_blue",
    "modonomicon:modonomicon_green",
    "modonomicon:modonomicon_purple",
    "modonomicon:modonomicon_red",
    "moonlight:placeable_item",
    "mysticalagriculture:air_seeds",
    "mysticalagriculture:aluminum_essence",
    "mysticalagriculture:aluminum_seeds",
    "mysticalagriculture:amethyst_bronze_essence",
    "mysticalagriculture:amethyst_bronze_seeds",
    "mysticalagriculture:amethyst_essence",
    "mysticalagriculture:amethyst_seeds",
    "mysticalagriculture:apatite_essence",
    "mysticalagriculture:apatite_seeds",
    "mysticalagriculture:aquamarine_essence",
    "mysticalagriculture:aquamarine_seeds",
    "mysticalagriculture:basalt_essence",
    "mysticalagriculture:basalt_seeds",
    "mysticalagriculture:basalz_essence",
    "mysticalagriculture:basalz_seeds",
    "mysticalagriculture:blaze_essence",
    "mysticalagriculture:blaze_seeds",
    "mysticalagriculture:blazing_crystal_essence",
    "mysticalagriculture:blazing_crystal_seeds",
    "mysticalagriculture:blitz_essence",
    "mysticalagriculture:blitz_seeds",
    "mysticalagriculture:blizz_essence",
    "mysticalagriculture:blizz_seeds",
    "mysticalagriculture:brass_essence",
    "mysticalagriculture:brass_seeds",
    "mysticalagriculture:bronze_essence",
    "mysticalagriculture:bronze_seeds",
    "mysticalagriculture:certus_quartz_essence",
    "mysticalagriculture:certus_quartz_seeds",
    "mysticalagriculture:chicken_essence",
    "mysticalagriculture:chicken_seeds",
    "mysticalagriculture:chrome_essence",
    "mysticalagriculture:chrome_seeds",
    "mysticalagriculture:coal_essence",
    "mysticalagriculture:coal_seeds",
    "mysticalagriculture:cobalt_essence",
    "mysticalagriculture:cobalt_seeds",
    "mysticalagriculture:compressed_iron_essence",
    "mysticalagriculture:compressed_iron_seeds",
    "mysticalagriculture:conductive_alloy_essence",
    "mysticalagriculture:conductive_alloy_seeds",
    "mysticalagriculture:constantan_essence",
    "mysticalagriculture:constantan_seeds",
    "mysticalagriculture:copper_alloy_essence",
    "mysticalagriculture:copper_alloy_seeds",
    "mysticalagriculture:copper_essence",
    "mysticalagriculture:copper_seeds",
    "mysticalagriculture:coral_essence",
    "mysticalagriculture:coral_seeds",
    "mysticalagriculture:cow_essence",
    "mysticalagriculture:cow_seeds",
    "mysticalagriculture:creative_soulium_dagger",
    "mysticalagriculture:creeper_essence",
    "mysticalagriculture:creeper_seeds",
    "mysticalagriculture:cyanite_essence",
    "mysticalagriculture:cyanite_seeds",
    "mysticalagriculture:dark_steel_essence",
    "mysticalagriculture:dark_steel_seeds",
    "mysticalagriculture:deepslate_essence",
    "mysticalagriculture:deepslate_seeds",
    "mysticalagriculture:diamond_essence",
    "mysticalagriculture:diamond_scythe",
    "mysticalagriculture:diamond_seeds",
    "mysticalagriculture:diamond_sickle",
    "mysticalagriculture:dirt_essence",
    "mysticalagriculture:dirt_seeds",
    "mysticalagriculture:draconium_essence",
    "mysticalagriculture:draconium_seeds",
    "mysticalagriculture:dye_essence",
    "mysticalagriculture:dye_seeds",
    "mysticalagriculture:earth_seeds",
    "mysticalagriculture:electrum_essence",
    "mysticalagriculture:electrum_seeds",
    "mysticalagriculture:elementium_essence",
    "mysticalagriculture:elementium_seeds",
    "mysticalagriculture:emerald_essence",
    "mysticalagriculture:emerald_seeds",
    "mysticalagriculture:end_essence",
    "mysticalagriculture:end_seeds",
    "mysticalagriculture:end_steel_essence",
    "mysticalagriculture:end_steel_seeds",
    "mysticalagriculture:enderium_essence",
    "mysticalagriculture:enderium_seeds",
    "mysticalagriculture:enderman_essence",
    "mysticalagriculture:enderman_seeds",
    "mysticalagriculture:energetic_alloy_essence",
    "mysticalagriculture:energetic_alloy_seeds",
    "mysticalagriculture:energized_steel_essence",
    "mysticalagriculture:energized_steel_seeds",
    "mysticalagriculture:experience_essence",
    "mysticalagriculture:experience_seeds",
    "mysticalagriculture:fiery_ingot_essence",
    "mysticalagriculture:fiery_ingot_seeds",
    "mysticalagriculture:fire_seeds",
    "mysticalagriculture:fish_essence",
    "mysticalagriculture:fish_seeds",
    "mysticalagriculture:fluix_essence",
    "mysticalagriculture:fluix_seeds",
    "mysticalagriculture:fluorite_essence",
    "mysticalagriculture:fluorite_seeds",
    "mysticalagriculture:flux_infused_gem_essence",
    "mysticalagriculture:flux_infused_gem_seeds",
    "mysticalagriculture:flux_infused_ingot_essence",
    "mysticalagriculture:flux_infused_ingot_seeds",
    "mysticalagriculture:ghast_essence",
    "mysticalagriculture:ghast_seeds",
    "mysticalagriculture:glowstone_essence",
    "mysticalagriculture:glowstone_seeds",
    "mysticalagriculture:gold_essence",
    "mysticalagriculture:gold_seeds",
    "mysticalagriculture:grains_of_infinity_essence",
    "mysticalagriculture:grains_of_infinity_seeds",
    "mysticalagriculture:graphite_essence",
    "mysticalagriculture:graphite_seeds",
    "mysticalagriculture:hepatizon_essence",
    "mysticalagriculture:hepatizon_seeds",
    "mysticalagriculture:honey_essence",
    "mysticalagriculture:honey_seeds",
    "mysticalagriculture:hop_graphite_essence",
    "mysticalagriculture:hop_graphite_seeds",
    "mysticalagriculture:hostile_soulium_dagger",
    "mysticalagriculture:ice_essence",
    "mysticalagriculture:ice_seeds",
    "mysticalagriculture:inferium_seeds",
    "mysticalagriculture:infusion_crystal",
    "mysticalagriculture:invar_essence",
    "mysticalagriculture:invar_seeds",
    "mysticalagriculture:iridium_essence",
    "mysticalagriculture:iridium_seeds",
    "mysticalagriculture:iron_essence",
    "mysticalagriculture:iron_seeds",
    "mysticalagriculture:ironwood_essence",
    "mysticalagriculture:ironwood_seeds",
    "mysticalagriculture:knightmetal_essence",
    "mysticalagriculture:knightmetal_seeds",
    "mysticalagriculture:lapis_lazuli_essence",
    "mysticalagriculture:lapis_lazuli_seeds",
    "mysticalagriculture:lead_essence",
    "mysticalagriculture:lead_seeds",
    "mysticalagriculture:limestone_essence",
    "mysticalagriculture:limestone_seeds",
    "mysticalagriculture:lumium_essence",
    "mysticalagriculture:lumium_seeds",
    "mysticalagriculture:manasteel_essence",
    "mysticalagriculture:manasteel_seeds",
    "mysticalagriculture:manyullyn_essence",
    "mysticalagriculture:manyullyn_seeds",
    "mysticalagriculture:marble_essence",
    "mysticalagriculture:marble_seeds",
    "mysticalagriculture:menril_essence",
    "mysticalagriculture:menril_seeds",
    "mysticalagriculture:mithril_essence",
    "mysticalagriculture:mithril_seeds",
    "mysticalagriculture:mystical_flower_essence",
    "mysticalagriculture:mystical_flower_seeds",
    "mysticalagriculture:nature_essence",
    "mysticalagriculture:nature_seeds",
    "mysticalagriculture:nether_essence",
    "mysticalagriculture:nether_quartz_essence",
    "mysticalagriculture:nether_quartz_seeds",
    "mysticalagriculture:nether_seeds",
    "mysticalagriculture:netherite_essence",
    "mysticalagriculture:netherite_seeds",
    "mysticalagriculture:nickel_essence",
    "mysticalagriculture:nickel_seeds",
    "mysticalagriculture:niotic_crystal_essence",
    "mysticalagriculture:niotic_crystal_seeds",
    "mysticalagriculture:obsidian_essence",
    "mysticalagriculture:obsidian_seeds",
    "mysticalagriculture:osmium_essence",
    "mysticalagriculture:osmium_seeds",
    "mysticalagriculture:passive_soulium_dagger",
    "mysticalagriculture:peridot_essence",
    "mysticalagriculture:peridot_seeds",
    "mysticalagriculture:pig_essence",
    "mysticalagriculture:pig_iron_essence",
    "mysticalagriculture:pig_iron_seeds",
    "mysticalagriculture:pig_seeds",
    "mysticalagriculture:platinum_essence",
    "mysticalagriculture:platinum_seeds",
    "mysticalagriculture:prismarine_essence",
    "mysticalagriculture:prismarine_seeds",
    "mysticalagriculture:pulsating_alloy_essence",
    "mysticalagriculture:pulsating_alloy_seeds",
    "mysticalagriculture:quartz_enriched_iron_essence",
    "mysticalagriculture:quartz_enriched_iron_seeds",
    "mysticalagriculture:queens_slime_essence",
    "mysticalagriculture:queens_slime_seeds",
    "mysticalagriculture:rabbit_essence",
    "mysticalagriculture:rabbit_seeds",
    "mysticalagriculture:redstone_alloy_essence",
    "mysticalagriculture:redstone_alloy_seeds",
    "mysticalagriculture:redstone_essence",
    "mysticalagriculture:redstone_seeds",
    "mysticalagriculture:refined_glowstone_essence",
    "mysticalagriculture:refined_glowstone_seeds",
    "mysticalagriculture:refined_obsidian_essence",
    "mysticalagriculture:refined_obsidian_seeds",
    "mysticalagriculture:rock_crystal_essence",
    "mysticalagriculture:rock_crystal_seeds",
    "mysticalagriculture:rose_gold_essence",
    "mysticalagriculture:rose_gold_seeds",
    "mysticalagriculture:rubber_essence",
    "mysticalagriculture:rubber_seeds",
    "mysticalagriculture:ruby_essence",
    "mysticalagriculture:ruby_seeds",
    "mysticalagriculture:saltpeter_essence",
    "mysticalagriculture:saltpeter_seeds",
    "mysticalagriculture:sapphire_essence",
    "mysticalagriculture:sapphire_seeds",
    "mysticalagriculture:sheep_essence",
    "mysticalagriculture:sheep_seeds",
    "mysticalagriculture:signalum_essence",
    "mysticalagriculture:signalum_seeds",
    "mysticalagriculture:silicon_essence",
    "mysticalagriculture:silicon_seeds",
    "mysticalagriculture:silver_essence",
    "mysticalagriculture:silver_seeds",
    "mysticalagriculture:skeleton_essence",
    "mysticalagriculture:skeleton_seeds",
    "mysticalagriculture:sky_stone_essence",
    "mysticalagriculture:sky_stone_seeds",
    "mysticalagriculture:slime_essence",
    "mysticalagriculture:slime_seeds",
    "mysticalagriculture:slimesteel_essence",
    "mysticalagriculture:slimesteel_seeds",
    "mysticalagriculture:soul_dust",
    "mysticalagriculture:soul_extractor",
    "mysticalagriculture:soul_glass",
    "mysticalagriculture:soul_jar",
    "mysticalagriculture:soularium_essence",
    "mysticalagriculture:soularium_seeds",
    "mysticalagriculture:soulium_dagger",
    "mysticalagriculture:soulium_dust",
    "mysticalagriculture:soulium_gemstone",
    "mysticalagriculture:soulium_gemstone_block",
    "mysticalagriculture:soulium_ingot",
    "mysticalagriculture:soulium_ingot_block",
    "mysticalagriculture:soulium_nugget",
    "mysticalagriculture:soulium_ore",
    "mysticalagriculture:soulium_seed_base",
    "mysticalagriculture:soulium_spawner",
    "mysticalagriculture:soulstone",
    "mysticalagriculture:soulstone_bricks",
    "mysticalagriculture:soulstone_bricks_slab",
    "mysticalagriculture:soulstone_bricks_stairs",
    "mysticalagriculture:soulstone_bricks_wall",
    "mysticalagriculture:soulstone_chiseled_bricks",
    "mysticalagriculture:soulstone_cobble",
    "mysticalagriculture:soulstone_cobble_slab",
    "mysticalagriculture:soulstone_cobble_stairs",
    "mysticalagriculture:soulstone_cobble_wall",
    "mysticalagriculture:soulstone_cracked_bricks",
    "mysticalagriculture:soulstone_slab",
    "mysticalagriculture:soulstone_smooth",
    "mysticalagriculture:soulstone_smooth_slab",
    "mysticalagriculture:soulstone_stairs",
    "mysticalagriculture:spider_essence",
    "mysticalagriculture:spider_seeds",
    "mysticalagriculture:spirited_crystal_essence",
    "mysticalagriculture:spirited_crystal_seeds",
    "mysticalagriculture:squid_essence",
    "mysticalagriculture:squid_seeds",
    "mysticalagriculture:starmetal_essence",
    "mysticalagriculture:starmetal_seeds",
    "mysticalagriculture:steel_essence",
    "mysticalagriculture:steel_seeds",
    "mysticalagriculture:steeleaf_essence",
    "mysticalagriculture:steeleaf_seeds",
    "mysticalagriculture:stone_essence",
    "mysticalagriculture:stone_seeds",
    "mysticalagriculture:sulfur_essence",
    "mysticalagriculture:sulfur_seeds",
    "mysticalagriculture:terrasteel_essence",
    "mysticalagriculture:terrasteel_seeds",
    "mysticalagriculture:tin_essence",
    "mysticalagriculture:tin_seeds",
    "mysticalagriculture:titanium_essence",
    "mysticalagriculture:titanium_seeds",
    "mysticalagriculture:tungsten_essence",
    "mysticalagriculture:tungsten_seeds",
    "mysticalagriculture:turtle_essence",
    "mysticalagriculture:turtle_seeds",
    "mysticalagriculture:uraninite_essence",
    "mysticalagriculture:uraninite_seeds",
    "mysticalagriculture:uranium_essence",
    "mysticalagriculture:uranium_seeds",
    "mysticalagriculture:vibrant_alloy_essence",
    "mysticalagriculture:vibrant_alloy_seeds",
    "mysticalagriculture:water_seeds",
    "mysticalagriculture:wither_skeleton_essence",
    "mysticalagriculture:wither_skeleton_seeds",
    "mysticalagriculture:wood_essence",
    "mysticalagriculture:wood_seeds",
    "mysticalagriculture:yellorium_essence",
    "mysticalagriculture:yellorium_seeds",
    "mysticalagriculture:zinc_essence",
    "mysticalagriculture:zinc_seeds",
    "mysticalagriculture:zombie_essence",
    "mysticalagriculture:zombie_seeds",
    "occultism:advancement_icon",
    "occultism:debug_djinni_manage_machine",
    "occultism:debug_djinni_test",
    "occultism:debug_foliot_cleaner",
    "occultism:debug_foliot_lumberjack",
    "occultism:debug_foliot_trader",
    "occultism:debug_foliot_transport_items",
    "occultism:debug_wand",
    "occultism:dictionary_of_spirits_icon",
    "occultism:jei_dummy/none",
    "occultism:jei_dummy/require_item_use",
    "occultism:jei_dummy/require_sacrifice",
    "occultism:lighted_air",
    "occultism:miner_debug_unspecialized",
    "occultism:miner_marid_master",
    "occultism:pentacle",
    "occultism:raw_silver",
    "occultism:silver_dust",
    "occultism:silver_ingot",
    "occultism:silver_nugget",
    "phosphophyllite:debug_tool",
    "phosphophyllite:fluid_black_hole",
    "phosphophyllite:fluid_white_hole",
    "phosphophyllite:item_black_hole",
    "phosphophyllite:item_white_hole",
    "phosphophyllite:phosphophyllite_ore",
    "phosphophyllite:power_black_hole",
    "phosphophyllite:power_white_hole",
    "pickletweaks:black_cobblestone",
    "pickletweaks:blue_cobblestone",
    "pickletweaks:brown_cobblestone",
    "pickletweaks:charcoal_piece",
    "pickletweaks:coal_piece",
    "pickletweaks:cyan_cobblestone",
    "pickletweaks:diamond_apple",
    "pickletweaks:diamond_paxel",
    "pickletweaks:diamond_scythe",
    "pickletweaks:diamond_sickle",
    "pickletweaks:emerald_apple",
    "pickletweaks:emerald_axe",
    "pickletweaks:emerald_boots",
    "pickletweaks:emerald_chestplate",
    "pickletweaks:emerald_helmet",
    "pickletweaks:emerald_hoe",
    "pickletweaks:emerald_leggings",
    "pickletweaks:emerald_paxel",
    "pickletweaks:emerald_pickaxe",
    "pickletweaks:emerald_scythe",
    "pickletweaks:emerald_shovel",
    "pickletweaks:emerald_sickle",
    "pickletweaks:emerald_sword",
    "pickletweaks:flint_axe",
    "pickletweaks:flint_boots",
    "pickletweaks:flint_chestplate",
    "pickletweaks:flint_helmet",
    "pickletweaks:flint_hoe",
    "pickletweaks:flint_leggings",
    "pickletweaks:flint_paxel",
    "pickletweaks:flint_pickaxe",
    "pickletweaks:flint_scythe",
    "pickletweaks:flint_shears",
    "pickletweaks:flint_shovel",
    "pickletweaks:flint_sickle",
    "pickletweaks:flint_sword",
    "pickletweaks:golden_paxel",
    "pickletweaks:golden_scythe",
    "pickletweaks:golden_sickle",
    "pickletweaks:grass_fiber",
    "pickletweaks:grass_fiber_mesh",
    "pickletweaks:gray_cobblestone",
    "pickletweaks:green_cobblestone",
    "pickletweaks:iron_paxel",
    "pickletweaks:iron_scythe",
    "pickletweaks:iron_sickle",
    "pickletweaks:light_blue_cobblestone",
    "pickletweaks:light_gray_cobblestone",
    "pickletweaks:lime_cobblestone",
    "pickletweaks:magenta_cobblestone",
    "pickletweaks:mesh",
    "pickletweaks:netherite_paxel",
    "pickletweaks:netherite_scythe",
    "pickletweaks:netherite_sickle",
    "pickletweaks:orange_cobblestone",
    "pickletweaks:pink_cobblestone",
    "pickletweaks:purple_cobblestone",
    "pickletweaks:red_cobblestone",
    "pickletweaks:reinforced_mesh",
    "pickletweaks:reinforced_watering_can",
    "pickletweaks:smooth_glowstone",
    "pickletweaks:stone_paxel",
    "pickletweaks:stone_scythe",
    "pickletweaks:stone_sickle",
    "pickletweaks:watering_can",
    "pickletweaks:white_cobblestone",
    "pickletweaks:wooden_paxel",
    "pickletweaks:wooden_scythe",
    "pickletweaks:wooden_sickle",
    "pickletweaks:yellow_cobblestone",
    "railways:black_incomplete_conductor_cap",
    "railways:blue_incomplete_conductor_cap",
    "railways:brown_incomplete_conductor_cap",
    "railways:cyan_incomplete_conductor_cap",
    "railways:gray_incomplete_conductor_cap",
    "railways:green_incomplete_conductor_cap",
    "railways:light_blue_incomplete_conductor_cap",
    "railways:light_gray_incomplete_conductor_cap",
    "railways:lime_incomplete_conductor_cap",
    "railways:magenta_incomplete_conductor_cap",
    "railways:orange_incomplete_conductor_cap",
    "railways:pink_incomplete_conductor_cap",
    "railways:purple_incomplete_conductor_cap",
    "railways:red_incomplete_conductor_cap",
    "railways:track_incomplete_acacia",
    "railways:track_incomplete_acacia_narrow",
    "railways:track_incomplete_acacia_wide",
    "railways:track_incomplete_bamboo",
    "railways:track_incomplete_bamboo_narrow",
    "railways:track_incomplete_bamboo_wide",
    "railways:track_incomplete_birch",
    "railways:track_incomplete_birch_narrow",
    "railways:track_incomplete_birch_wide",
    "railways:track_incomplete_blackstone",
    "railways:track_incomplete_blackstone_narrow",
    "railways:track_incomplete_blackstone_wide",
    "railways:track_incomplete_cherry",
    "railways:track_incomplete_cherry_narrow",
    "railways:track_incomplete_cherry_wide",
    "railways:track_incomplete_create_andesite_narrow",
    "railways:track_incomplete_create_andesite_wide",
    "railways:track_incomplete_crimson",
    "railways:track_incomplete_crimson_narrow",
    "railways:track_incomplete_crimson_wide",
    "railways:track_incomplete_dark_oak",
    "railways:track_incomplete_dark_oak_narrow",
    "railways:track_incomplete_dark_oak_wide",
    "railways:track_incomplete_ender",
    "railways:track_incomplete_ender_narrow",
    "railways:track_incomplete_ender_wide",
    "railways:track_incomplete_jungle",
    "railways:track_incomplete_jungle_narrow",
    "railways:track_incomplete_jungle_wide",
    "railways:track_incomplete_mangrove",
    "railways:track_incomplete_mangrove_narrow",
    "railways:track_incomplete_mangrove_wide",
    "railways:track_incomplete_monorail",
    "railways:track_incomplete_oak",
    "railways:track_incomplete_oak_narrow",
    "railways:track_incomplete_oak_wide",
    "railways:track_incomplete_phantom",
    "railways:track_incomplete_spruce",
    "railways:track_incomplete_spruce_narrow",
    "railways:track_incomplete_spruce_wide",
    "railways:track_incomplete_stripped_bamboo",
    "railways:track_incomplete_stripped_bamboo_narrow",
    "railways:track_incomplete_stripped_bamboo_wide",
    "railways:track_incomplete_tieless",
    "railways:track_incomplete_tieless_narrow",
    "railways:track_incomplete_tieless_wide",
    "railways:track_incomplete_warped",
    "railways:track_incomplete_warped_narrow",
    "railways:track_incomplete_warped_wide",
    "railways:white_incomplete_conductor_cap",
    "railways:yellow_incomplete_conductor_cap",
    "rftoolsbase:machine_base",
    "rftoolsbase:machine_frame",
    "rftoolsutility:spawner",
    "rftoolsutility:syringe",
    "rftoolsutility:teleport_probe",
    "rftoolsutility:weakness_module",
    "silentgear:black_fluffy_block",
    "silentgear:blue_fluffy_block",
    "silentgear:brown_fluffy_block",
    "silentgear:coating_smithing_template",
    "silentgear:cyan_fluffy_block",
    "silentgear:fluffy_fabric",
    "silentgear:fluffy_feather",
    "silentgear:fluffy_puff",
    "silentgear:fluffy_seeds",
    "silentgear:fluffy_string",
    "silentgear:gray_fluffy_block",
    "silentgear:green_fluffy_block",
    "silentgear:light_blue_fluffy_block",
    "silentgear:light_gray_fluffy_block",
    "silentgear:lime_fluffy_block",
    "silentgear:magenta_fluffy_block",
    "silentgear:orange_fluffy_block",
    "silentgear:pink_fluffy_block",
    "silentgear:purple_fluffy_block",
    "silentgear:red_fluffy_block",
    "silentgear:white_fluffy_block",
    "silentgear:yellow_fluffy_block",
    "simplehats:haticon",
    "sophisticatedstorage:debug_tool",
    "sophisticatedstorage:inaccessible_slot",
    "supplementaries:gunpowder",
    "thermal:cured_rubber",
    "thermal:latex",
    "thermal:rubber",
    "wormhole:portal",
    "thermal:bronze_ingot",
    "immersiveengineering:nugget_copper",
    "cyclic:copper_nugget",
    "create:copper_nugget",
    "immersiveengineering:ingot_constantan",
    "immersiveengineering:ingot_steel",
    "immersiveengineering:nugget_electrum",
    "immersiveengineering:storage_electrum",
    "createaddition:electrum_ingot",
    "createaddition:electrum_nugget",
    "createaddition:electrum_sheet",
    "immersiveengineering:ingot_electrum",
    "immersiveengineering:plate_electrum",
    "immersiveengineering:dust_electrum",
    "pizzacraft:dark_oak_chopping_board",
    "pizzacraft:acacia_chopping_board",
    "pizzacraft:jungle_chopping_board",
    "pizzacraft:warped_chopping_board",
    "pizzacraft:olive_chopping_board",
    "pizzacraft:cheese_block",
    "pizzacraft:cheese",
    "pizzacraft:cucumber_seeds",
    "pizzacraft:cucumber_slice",
    "pizzacraft:oak_chopping_board",
    "pizzacraft:birch_chopping_board",
    "pizzacraft:spruce_chopping_board",
    "pizzacraft:dough",
    "pizzacraft:flour",
    "pizzacraft:corn_flour",
    "pizzacraft:cucumber",
    "pizzacraft:pepper",
    "pizzacraft:tomato",
    "pizzacraft:onion",
    "pizzacraft:tomato_seeds",
    "pizzacraft:pepper_seeds",
    "pizzacraft:corn",
    "pizzacraft:crimson_chopping_board",
    "silentgear:iron_rod",
    "createaddition:iron_rod",
    "silentgear:very_crude_repair_kit",
    "silentgear:crude_repair_kit",
    "silentgear:sturdy_repair_kit",
    "silentgear:crimson_repair_kit",
    "silentgear:azure_repair_kit",
  ];

  hiddenItems.forEach((item) => event.hide(item));
});

import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.resource.ResourceLocation;

val itemsToRemove as IItemStack[] = [
  <item:forcecraft:force_stick>,
  <item:forcecraft:golden_power_source>,
  <item:forcecraft:force_torch>,
  <item:forcecraft:force_red_torch>,
  <item:forcecraft:force_orange_torch>,
  <item:forcecraft:force_green_torch>,
  <item:forcecraft:force_blue_torch>,
  <item:forcecraft:force_white_torch>,
  <item:forcecraft:force_black_torch>,
  <item:forcecraft:force_brown_torch>,
  <item:forcecraft:force_light_blue_torch>,
  <item:forcecraft:force_magenta_torch>,
  <item:forcecraft:force_pink_torch>,
  <item:forcecraft:force_light_gray_torch>,
  <item:forcecraft:force_lime_torch>,
  <item:forcecraft:force_cyan_torch>,
  <item:forcecraft:force_purple_torch>,
  <item:forcecraft:force_gray_torch>,
  <item:forcecraft:time_torch>,
  <item:forcecraft:force_sapling>,
  <item:forcecraft:force_log>,
  <item:forcecraft:force_wood>,
  <item:forcecraft:force_leaves>,
  <item:forcecraft:force_planks>,
  <item:forcecraft:force_plank_stairs>,
  <item:forcecraft:force_plank_slab>,
  <item:cyclic:amethyst_pickaxe>,
  <item:cyclic:emerald_pickaxe>,
  <item:cyclic:crystal_pickaxe>,
  <item:cyclic:sandstone_pickaxe>,
  <item:cyclic:netherbrick_pickaxe>,
  <item:cyclic:amethyst_axe>,
  <item:cyclic:copper_axe>,
  <item:cyclic:emerald_axe>,
  <item:cyclic:crystal_axe>,
  <item:cyclic:sandstone_axe>,
  <item:cyclic:netherbrick_axe>,
  <item:cyclic:amethyst_hoe>,
  <item:cyclic:copper_hoe>,
  <item:cyclic:emerald_hoe>,
  <item:cyclic:crystal_hoe>,
  <item:cyclic:sandstone_hoe>,
  <item:cyclic:netherbrick_hoe>,
  <item:cyclic:amethyst_shovel>,
  <item:cyclic:emerald_shovel>,
  <item:cyclic:crystal_shovel>,
  <item:cyclic:sandstone_shovel>,
  <item:cyclic:netherbrick_shovel>,
  <item:cyclic:amethyst_sword>,
  <item:cyclic:copper_sword>,
  <item:cyclic:emerald_sword>,
  <item:cyclic:crystal_sword>,
  <item:cyclic:sandstone_sword>,
  <item:cyclic:netherbrick_sword>,
  <item:cyclic:shield_wood>,
  <item:cyclic:shield_leather>,
  <item:cyclic:shield_flint>,
  <item:cyclic:shield_obsidian>,
  <item:cyclic:shield_bone>,
  <item:cyclic:crystal_boots>,
  <item:cyclic:crystal_helmet>,
  <item:cyclic:crystal_chestplate>,
  <item:cyclic:crystal_leggings>,
  <item:cyclic:emerald_boots>,
  <item:cyclic:emerald_helmet>,
  <item:cyclic:emerald_chestplate>,
  <item:cyclic:emerald_leggings>,
  <item:cyclic:copper_pickaxe>,
  <item:cyclic:copper_shovel>,
  <item:cyclic:mattock>,
  <item:cyclic:mattock_nether>,
  <item:cyclic:mattock_stone>,
  <item:cyclic:netherite_nugget>,
  <item:pickletweaks:watering_can>,
  <item:pickletweaks:reinforced_watering_can>,
  <item:exnihilosequentia:iron_pieces>,
  <item:exnihilosequentia:gold_pieces>,
  <item:exnihilosequentia:copper_pieces>,
  <item:exnihilosequentia:copper_nugget>,
  <item:exnihilosequentia:lead_ingot>,
  <item:exnihilosequentia:raw_lead>,
  <item:exnihilosequentia:lead_pieces>,
  <item:exnihilosequentia:lead_nugget>,
  <item:exnihilosequentia:nickel_ingot>,
  <item:exnihilosequentia:raw_nickel>,
  <item:exnihilosequentia:nickel_pieces>,
  <item:exnihilosequentia:nickel_nugget>,
  <item:exnihilosequentia:silver_ingot>,
  <item:exnihilosequentia:raw_silver>,
  <item:exnihilosequentia:silver_pieces>,
  <item:exnihilosequentia:silver_nugget>,
  <item:exnihilosequentia:tin_ingot>,
  <item:exnihilosequentia:raw_tin>,
  <item:exnihilosequentia:tin_pieces>,
  <item:exnihilosequentia:tin_nugget>,
  <item:exnihilosequentia:aluminum_ingot>,
  <item:exnihilosequentia:raw_aluminum>,
  <item:exnihilosequentia:aluminum_pieces>,
  <item:exnihilosequentia:aluminum_nugget>,
  <item:exnihilosequentia:platinum_ingot>,
  <item:exnihilosequentia:raw_platinum>,
  <item:exnihilosequentia:platinum_pieces>,
  <item:exnihilosequentia:platinum_nugget>,
  <item:exnihilosequentia:uranium_ingot>,
  <item:exnihilosequentia:raw_uranium>,
  <item:exnihilosequentia:uranium_pieces>,
  <item:exnihilosequentia:uranium_nugget>,
  <item:exnihilosequentia:zinc_ingot>,
  <item:exnihilosequentia:raw_zinc>,
  <item:exnihilosequentia:zinc_pieces>,
  <item:exnihilosequentia:zinc_nugget>,
  <item:luphieclutteredmod:luphie_purple_planks>,
  <item:luphieclutteredmod:luphie_pink_planks>,
  // <item:botania:pebble>,
  // <item:botania:living_root>,
  <item:immersiveengineering:ingot_lead>,
  <item:immersiveengineering:nugget_lead>,
  <item:immersiveengineering:raw_lead>,
  <item:immersiveengineering:plate_lead>,
  <item:immersiveengineering:dust_lead>,
  <item:immersiveengineering:storage_lead>,
  <item:immersiveengineering:slab_storage_lead>,
  <item:immersiveengineering:ingot_silver>,
  <item:immersiveengineering:nugget_silver>,
  <item:immersiveengineering:raw_silver>,
  <item:immersiveengineering:plate_silver>,
  <item:immersiveengineering:dust_silver>,
  <item:immersiveengineering:storage_silver>,
  <item:immersiveengineering:slab_storage_silver>,
  <item:immersiveengineering:ingot_steel>,
  <item:immersiveengineering:nugget_steel>,
  <item:immersiveengineering:plate_steel>,
  <item:immersiveengineering:dust_steel>,
  <item:occultism:raw_silver>,
  <item:occultism:silver_ingot>,
  <item:occultism:silver_nugget>,
  <item:occultism:silver_dust>,
  <item:immersiveengineering:ingot_nickel>,
  <item:immersiveengineering:nugget_nickel>,
  <item:immersiveengineering:raw_nickel>,
  <item:immersiveengineering:plate_nickel>,
  <item:immersiveengineering:dust_nickel>,
  <item:immersiveengineering:storage_nickel>,
  <item:immersiveengineering:slab_storage_nickel>,
  <item:enderio:powdered_iron>,
  <item:enderio:powdered_gold>,
  <item:enderio:powdered_copper>,
  <item:enderio:powdered_tin>,
  <item:enderio:powdered_ender_pearl>,
  <item:enderio:powdered_lapis_lazuli>,
  <item:enderio:powdered_obsidian>,
  <item:enderio:powdered_quartz>,
  <item:industrialforegoing:iron_gear>,
  <item:industrialforegoing:gold_gear>,
  <item:industrialforegoing:diamond_gear>,
  <item:immersiveengineering:ingot_electrum>,
  <item:immersiveengineering:dust_electrum>,
  <item:immersiveengineering:storage_constantan>,
  <item:immersiveengineering:ingot_constantan>,
  <item:immersiveengineering:nugget_constantan>,
  <item:immersiveengineering:plate_constantan>,
  <item:immersiveengineering:dust_constantan>,
  <item:exnihilosequentia:acacia_crucible>,
  <item:exnihilosequentia:bamboo_crucible>,
  <item:exnihilosequentia:birch_crucible>,
  <item:exnihilosequentia:cherry_crucible>,
  <item:exnihilosequentia:dark_oak_crucible>,
  <item:exnihilosequentia:jungle_crucible>,
  <item:exnihilosequentia:mangrove_crucible>,
  <item:exnihilosequentia:oak_crucible>,
  <item:exnihilosequentia:spruce_crucible>,
  <item:exnihilosequentia:crimson_crucible>,
  <item:exnihilosequentia:warped_crucible>,
  <item:exnihilosequentia:acacia_barrel>,
  <item:exnihilosequentia:bamboo_barrel>,
  <item:exnihilosequentia:birch_barrel>,
  <item:exnihilosequentia:cherry_barrel>,
  <item:exnihilosequentia:dark_oak_barrel>,
  <item:exnihilosequentia:jungle_barrel>,
  <item:exnihilosequentia:mangrove_barrel>,
  <item:exnihilosequentia:oak_barrel>,
  <item:exnihilosequentia:spruce_barrel>,
  <item:exnihilosequentia:crimson_barrel>,
  <item:exnihilosequentia:warped_barrel>,
  <item:create:iron_sheet>,
  <item:create:copper_sheet>,
  <item:create:golden_sheet>,
  <item:create:copper_nugget>,
  <item:immersiveengineering:plate_copper>,
  <item:immersiveengineering:plate_electrum>,
  <item:immersiveengineering:plate_iron>,
  <item:immersiveengineering:plate_gold>,
  <item:ae2:certus_quartz_axe>,
  <item:ae2:certus_quartz_hoe>,
  <item:ae2:certus_quartz_shovel>,
  <item:ae2:certus_quartz_pickaxe>,
  <item:ae2:certus_quartz_sword>,
  // Pickle Tweaks
  <item:pickletweaks:white_cobblestone>,
  <item:pickletweaks:orange_cobblestone>,
  <item:pickletweaks:magenta_cobblestone>,
  <item:pickletweaks:light_blue_cobblestone>,
  <item:pickletweaks:yellow_cobblestone>,
  <item:pickletweaks:lime_cobblestone>,
  <item:pickletweaks:pink_cobblestone>,
  <item:pickletweaks:gray_cobblestone>,
  <item:pickletweaks:light_gray_cobblestone>,
  <item:pickletweaks:cyan_cobblestone>,
  <item:pickletweaks:purple_cobblestone>,
  <item:pickletweaks:blue_cobblestone>,
  <item:pickletweaks:brown_cobblestone>,
  <item:pickletweaks:green_cobblestone>,
  <item:pickletweaks:red_cobblestone>,
  <item:pickletweaks:black_cobblestone>,
  <item:industrialforegoing:mob_slaughter_factory>,

// Silent's Gear Fluffy Stuffy
  <item:silentgear:fluffy_puff>,
  <item:silentgear:fluffy_fabric>,
  <item:silentgear:fluffy_string>,
  <item:silentgear:fluffy_feather>,
  <item:silentgear:fluffy_seeds>,
  <item:silentgear:white_fluffy_block>,
  <item:silentgear:orange_fluffy_block>,
  <item:silentgear:magenta_fluffy_block>,
  <item:silentgear:light_blue_fluffy_block>,
  <item:silentgear:yellow_fluffy_block>,
  <item:silentgear:lime_fluffy_block>,
  <item:silentgear:pink_fluffy_block>,
  <item:silentgear:gray_fluffy_block>,
  <item:silentgear:light_gray_fluffy_block>,
  <item:silentgear:cyan_fluffy_block>,
  <item:silentgear:purple_fluffy_block>,
  <item:silentgear:blue_fluffy_block>,
  <item:silentgear:brown_fluffy_block>,
  <item:silentgear:green_fluffy_block>,
  <item:silentgear:red_fluffy_block>,
  <item:silentgear:black_fluffy_block>,
  <item:silentgear:very_crude_repair_kit>,
  <item:silentgear:crude_repair_kit>,
  <item:silentgear:sturdy_repair_kit>,
  <item:silentgear:crimson_repair_kit>,
  <item:silentgear:azure_repair_kit>,
  <item:silentgear:flax_flowers>,
  <item:silentgear:flax_seeds>,
  <item:silentgear:bronze_ingot>,
  <item:silentgear:diamond_shard>,
  <item:silentgear:emerald_shard>,
  <item:silentgear:bort>,
  <item:silentgear:bort_block>,
  <item:silentgear:deepslate_bort_ore>,
  <item:silentgear:bort_ore>,
  <item:silentgear:crimson_iron_ore>,
  <item:silentgear:blackstone_crimson_iron_ore>,
  <item:silentgear:azure_silver_ore>,
  <item:silentgear:arrow_blueprint>,
  <item:silentgear:fletching_blueprint>,
  <item:silentgear:arrow_template>,
  <item:silentgear:fletching_template>,
  <item:silentgear:arrow>,
  <item:silentgear:arrow_heads>,
  <item:silentgear:fletching>,

  // Immersive Engineering
  <item:immersiveengineering:storage_electrum>,

  // Create
  <item:createaddition:electrum_ingot>,
  <item:createaddition:electrum_nugget>,
  <item:createaddition:electrum_sheet>,

  // PizzaCraft
  <item:pizzacraft:pepper_seeds>,
  <item:pizzacraft:tomato_seeds>,
  <item:pizzacraft:onion>,
  <item:pizzacraft:tomato>,
  <item:pizzacraft:pepper>,
  <item:pizzacraft:cucumber>,
  <item:pizzacraft:corn_flour>,
  <item:pizzacraft:flour>,
  <item:pizzacraft:dough>,
  <item:pizzacraft:corn>,
  <item:pizzacraft:oak_chopping_board>,
  <item:pizzacraft:birch_chopping_board>,
  <item:pizzacraft:spruce_chopping_board>,
  <item:pizzacraft:jungle_chopping_board>,
  <item:pizzacraft:acacia_chopping_board>,
  <item:pizzacraft:dark_oak_chopping_board>,
  <item:pizzacraft:crimson_chopping_board>,
  <item:pizzacraft:warped_chopping_board>,
  <item:pizzacraft:olive_chopping_board>,
  <item:pizzacraft:cheese_block>,
  <item:pizzacraft:cheese>,
  <item:pizzacraft:cucumber_seeds>,
  <item:pizzacraft:cucumber_slice>,

  <item:createaddition:iron_rod>,
  <item:silentgear:iron_rod>,

  // Removing other trophy items to alleviate confusion
  <item:handcrafted:bear_trophy>,
  <item:handcrafted:blaze_trophy>,
  <item:handcrafted:fox_trophy>,
  <item:handcrafted:goat_trophy>,
  <item:handcrafted:pufferfish_trophy>,
  <item:handcrafted:salmon_trophy>,
  <item:handcrafted:silverfish_trophy>,
  <item:handcrafted:skeleton_horse_trophy>,
  <item:handcrafted:spider_trophy>,
  <item:handcrafted:tropical_fish_trophy>,
  <item:handcrafted:wither_skeleton_trophy>,
  <item:handcrafted:wolf_trophy>,
  <item:handcrafted:phantom_trophy>,
  <item:handcrafted:creeper_trophy>,
  <item:handcrafted:skeleton_trophy>,
  <item:handcrafted:evoker_trophy>,
  <item:handcrafted:pillager_trophy>,
  <item:handcrafted:vindicator_trophy>,
  <item:handcrafted:witch_trophy>,

  // Unused Ex Nihilo Crushed Blocks
  <item:exnihilosequentia:crushed_andesite>,
  <item:exnihilosequentia:crushed_basalt>,
  <item:exnihilosequentia:crushed_blackstone>,
  <item:exnihilosequentia:crushed_calcite>,
  <item:exnihilosequentia:crushed_deepslate>,
  <item:exnihilosequentia:crushed_dripstone>,
  <item:exnihilosequentia:crushed_end_stone>,
  <item:exnihilosequentia:crushed_granite>,
  <item:exnihilosequentia:crushed_tuff>,

  <item:botania:pebble>,
  <item:exnihilosequentia:end_cake>,

  <item:theoneprobe:creativeprobe>,
  <item:theoneprobe:probe>,
  <item:theoneprobe:diamond_helmet_probe>,
  <item:theoneprobe:gold_helmet_probe>,
  <item:theoneprobe:iron_helmet_probe>,

// Create Sifter
  <item:createsifter:advanced_brass_mesh>,
  <item:createsifter:andesite_mesh>,
  <item:createsifter:zinc_mesh>,
  <item:createsifter:brass_mesh>,
  <item:createsifter:custom_mesh>,
  <item:createsifter:advanced_custom_mesh>,

  <item:earthmobsmod:bone_shard>,
  <item:thermal:basalz_powder>,
  <item:thermal:basalz_rod>,
  <item:cyclic:chorus_flight>,
  <item:cyclic:chorus_spectral>,

  // Mystical Agriculture
  <item:mysticalagriculture:soulium_block>,
  <item:mysticalagriculture:soulium_essence>,
  <item:mysticalagriculture:soulium_seeds>,
  <item:mysticalagriculture:air_essence>,
  <item:mysticalagriculture:earth_essence>,
  <item:mysticalagriculture:fire_essence>,
  <item:mysticalagriculture:water_essence>,

  // Mob Grinding Utils
  <item:mob_grinding_utils:delightful_dirt>,
  <item:mob_grinding_utils:rotten_egg>,
  <item:mob_grinding_utils:golden_egg>,
  <item:mob_grinding_utils:gm_chicken_feed_cursed>,
  <item:mob_grinding_utils:nutritious_chicken_feed>,
  <item:mob_grinding_utils:gm_chicken_feed>,
  <item:mob_grinding_utils:entity_spawner>,
  <item:mob_grinding_utils:mob_swab_used>,
  <item:mob_grinding_utils:mob_swab>,

  // Draconic Evolution
  <item:draconicevolution:stabilized_spawner>,
  <item:draconicevolution:mob_soul>,



  <item:ae2:fluix_axe>,
  <item:ae2:fluix_hoe>,
  <item:ae2:fluix_pickaxe>,
  <item:ae2:fluix_shovel>,
  <item:ae2:fluix_sword>,
  <item:ae2:nether_quartz_axe>,
  <item:ae2:nether_quartz_hoe>,
  <item:ae2:nether_quartz_pickaxe>,
  <item:ae2:nether_quartz_shovel>,
  <item:ae2:nether_quartz_sword>,
  <item:immersiveengineering:axe_steel>,
  <item:immersiveengineering:hoe_steel>,
  <item:immersiveengineering:pickaxe_steel>,
  <item:immersiveengineering:shovel_steel>,
  <item:immersiveengineering:sword_steel>,
  <item:monsterplus:ancient_crystal>,
  <item:monsterplus:crystal_arrow>,
  <item:monsterplus:crystal_boots>,
  <item:monsterplus:crystal_chestplate>,
  <item:monsterplus:crystal_clump>,
  <item:monsterplus:crystal_helmet>,
  <item:monsterplus:crystal_leggings>,
  <item:monsterplus:crystal_sword>,
  <item:monsterplus:darkstar>,
  <item:monsterplus:gnawing_jaw>,

  // Occultism
  <item:occultism:silver_ore>,
  <item:occultism:silver_ore_deepslate>,
  <item:occultism:silver_block>,
  <item:occultism:raw_silver_block>,

  <item:cyclic:charm_creeper>

];

for item in itemsToRemove {
  for tag in <tagmanager:items>.getTagsFor(item) {
    tag.remove(item);
  }
}

var colors = [
    "black",
    "blue",
    "brown",
    "cyan",
    "gray",
    "green",
    "light_blue",
    "light_gray",
    "lime",
    "magenta",
    "orange",
    "pink",
    "purple",
    "red",
    "white",
    "yellow"
];

// Tag additions
<tag:items:forge:dusts/ender>.addId(<resource:thermal:ender_pearl_dust>);
<tag:items:minecraft:pressure_plates>.addId(<resource:minecraft:stone_pressure_plate>);
<tag:items:balm:wooden_chests>.addId(<resource:sophisticatedstorage:chest>);
<tag:items:forge:wooden_chests>.addId(<resource:sophisticatedstorage:chest>);
// Adds Crafting Tables to forge:workbench tag
<tag:items:forge:workbench>.addId(<resource:enderio:painted_crafting_table>);
<tag:items:forge:workbench>.addId(<resource:colouredstuff:crafting_table_none>);
<tag:items:forge:workbench>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:crafting_table_${color}>));
<tag:items:forge:workbench>.addId(<resource:minecraft:crafting_table>);
<tag:items:forge:workbench>.addId(<resource:cyclic:workbench>);
<tag:items:forge:workbench>.addId(<resource:craftingstation:crafting_station>);
<tag:items:forge:workbench>.addId(<resource:craftingstation:crafting_station_slab>);

// Using this as a test for goat spawns not working on this block normally
<tag:blocks:minecraft:dirt>.addId(<resource:colouredstuff:dirt_none>);

// Adding every block to the dragon immune tag
for block in game.blocks {
  <tag:blocks:minecraft:dragon_immune>.add(block);
}


// Tags each set of Coloured Stuff blocks

<tag:blocks:skyfactory_5:coloured_stuff/crafting_tables>.addId(<resource:colouredstuff:crafting_table_rainbow>);

<tag:blocks:skyfactory_5:coloured_stuff/logs>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:log_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/wood>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:wood_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/planks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:planks_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/logs>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:log_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/log_stripped>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:log_stripped_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/wood_stripped>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:wood_stripped_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/crafting_tables>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:crafting_table_rainbow>));
<tag:blocks:skyfactory_5:coloured_stuff/leaves>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:leaves_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/saplings>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:sapling_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/cobblestone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:cobblestone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/stone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:stone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/stone_bricks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:stone_bricks_blue>));
<tag:blocks:skyfactory_5:coloured_stuff/chiseled_stone_bricks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:chiseled_stone_bricks_blue>));
<tag:blocks:skyfactory_5:coloured_stuff/dirt>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:dirt_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/paths>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:path_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/sandstone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:sandstone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/cut_sandstone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:cut_sandstone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/smooth_sandstone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:smooth_sandstone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/chiseled_sandstone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:chiseled_sandstone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/bricks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:brick_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/slab_planks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:slab_planks_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/slab_cobblestone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:slab_cobblestone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/slab_stone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:slab_stone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/slab_stone_bricks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:slab_stone_bricks_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/slab_sandstone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:slab_sandstone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/slab_bricks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:slab_brick_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/stairs_brick>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:stairs_brick_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/stairs_planks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:stairs_planks_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/stairs_stone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:stairs_stone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/stairs_cobblestone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:stairs_cobblestone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/stairs_sandstone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:stairs_sandstone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/stairs_stone_bricks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:stairs_stone_bricks_brown>));
<tag:blocks:skyfactory_5:coloured_stuff/wall_stone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:wall_stone_magenta>));
<tag:blocks:skyfactory_5:coloured_stuff/wall_sandstone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:wall_sandstone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/wall_planks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:wall_planks_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/wall_cobblestone>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:wall_cobblestone_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/wall_stone_bricks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:wall_stone_bricks_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/wall_bricks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:wall_brick_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/fence_planks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:fence_planks_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/gate_planks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:gate_planks_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/button_planks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:button_planks_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/pressure_plate_planks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:pressure_plate_planks_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/trapdoor_planks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:trapdoor_planks_${color}>));
<tag:blocks:skyfactory_5:coloured_stuff/door_planks>.addId(colors.map<ResourceLocation>(color => <resource:colouredstuff:door_planks_${color}>));

// Add necessary tags to Mystical Customization crops, since there seems to be no real way to do it

var cropColors = [
    "black",
    "blue",
    "brown",
    "cyan",
    "gray",
    "green",
    "light_blue",
    "light_gray",
    "lime",
    "magenta",
    "orange",
    "pink",
    "purple",
    "red",
    "white",
    "yellow",
    "none",
    "rgb"
];

<tag:blocks:forge:mineable/sickle>.addId(cropColors.map<ResourceLocation>(color => <resource:mysticalagriculture:${color}_crop_crop>));
<tag:blocks:cucumber:mineable/sickle>.addId(cropColors.map<ResourceLocation>(color => <resource:mysticalagriculture:${color}_crop_crop>));
<tag:blocks:minecraft:sword_efficient>.addId(cropColors.map<ResourceLocation>(color => <resource:mysticalagriculture:${color}_crop_crop>));
<tag:blocks:minecraft:crops>.addId(cropColors.map<ResourceLocation>(color => <resource:mysticalagriculture:${color}_crop_crop>));
<tag:blocks:mysticalagriculture:crops>.addId(cropColors.map<ResourceLocation>(color => <resource:mysticalagriculture:${color}_crop_crop>));
<tag:blocks:minecraft:bee_growables>.addId(cropColors.map<ResourceLocation>(color => <resource:mysticalagriculture:${color}_crop_crop>));
<tag:blocks:ae2:growth_acceleratable>.addId(cropColors.map<ResourceLocation>(color => <resource:mysticalagriculture:${color}_crop_crop>));

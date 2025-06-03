// Removes vanilla Crafting Table and Chest recipes so
// we can implement the color versions
craftingTable.removeByName("minecraft:chest");

// NEED TO FIND RECIPE NAME FOR VANILLA CRAFTING TABLE RECIPE AND ADD
// craftingTable.removeByName("minecraft:crafting_table");

import crafttweaker.api.item.IItemStack;

val items as IItemStack[] = [


<item:exnihilosequentia:string_mesh>,
<item:exnihilosequentia:flint_mesh>,
<item:exnihilosequentia:iron_mesh>,
<item:exnihilosequentia:diamond_mesh>,
<item:exnihilosequentia:emerald_mesh>,
<item:exnihilosequentia:netherite_mesh>,
<item:exnihilosequentia:andesite_crook>,
<item:exnihilosequentia:bamboo_crook>,
<item:exnihilosequentia:basalt_crook>,
<item:exnihilosequentia:blackstone_crook>,
<item:exnihilosequentia:bone_crook>,
<item:exnihilosequentia:calcite_crook>,
<item:exnihilosequentia:cherry_crook>,
<item:exnihilosequentia:copper_crook>,
<item:exnihilosequentia:deepslate_crook>,
<item:exnihilosequentia:diamond_crook>,
<item:exnihilosequentia:diorite_crook>,
<item:exnihilosequentia:dripstone_crook>,
<item:exnihilosequentia:golden_crook>,
<item:exnihilosequentia:granite_crook>,
<item:exnihilosequentia:iron_crook>,
<item:exnihilosequentia:nether_brick_crook>,
<item:exnihilosequentia:netherite_crook>,
<item:exnihilosequentia:red_nether_brick_crook>,
<item:exnihilosequentia:stone_crook>,
<item:exnihilosequentia:terracotta_crook>,
<item:exnihilosequentia:tuff_crook>,
<item:exnihilosequentia:wooden_crook>,
<item:exnihilosequentia:unfired_crucible>,
<item:exnihilosequentia:fired_crucible>,
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
<item:exnihilosequentia:stone_barrel>,
<item:exnihilosequentia:acacia_sieve>,
<item:exnihilosequentia:bamboo_sieve>,
<item:exnihilosequentia:birch_sieve>,
<item:exnihilosequentia:cherry_sieve>,
<item:exnihilosequentia:dark_oak_sieve>,
<item:exnihilosequentia:jungle_sieve>,
<item:exnihilosequentia:mangrove_sieve>,
<item:exnihilosequentia:oak_sieve>,
<item:exnihilosequentia:spruce_sieve>,
<item:exnihilosequentia:crimson_sieve>,
<item:exnihilosequentia:warped_sieve>,

// Cyclic Tools and Weapons
<item:cyclic:amethyst_pickaxe>,
<item:cyclic:copper_pickaxe>,
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
<item:cyclic:copper_shovel>,
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
<item:cyclic:shears_obsidian>,
<item:cyclic:shears_flint>,
<item:cyclic:spawner_seeker>,
<item:cyclic:ender_eye_reuse>,
<item:cyclic:spelunker>,
<item:cyclic:charm_creeper>,

// Cyclic Apples
<item:cyclic:apple_ender>,
<item:cyclic:apple_lofty_stature>,
<item:cyclic:apple_honey>,
<item:cyclic:apple_chorus>,
<item:cyclic:apple_bone>,
<item:cyclic:apple_prismarine>,
<item:cyclic:apple_lapis>,
<item:cyclic:apple_iron>,
<item:cyclic:apple_diamond>,
<item:cyclic:apple_emerald>,
<item:cyclic:apple_chocolate>,
<item:cyclic:apple_sprout>,
<item:cyclic:apple_sprout_diamond>,
<item:cyclic:apple_sprout_emerald>,

  // Cyclic
<item:cyclic:heart>,
<item:cyclic:heart_empty>,
<item:cyclic:chorus_flight>,
<item:cyclic:chorus_spectral>,



// Mystical Agriculture
<item:mysticalagriculture:diamond_scythe>,
<item:mysticalagriculture:diamond_sickle>,

// TODO The following recipes need to be removed not only from shaped crafting but
// from the Mystical Agriculture infuser and other machines

<item:mysticalagriculture:soulium_dagger>,
<item:mysticalagriculture:passive_soulium_dagger>,
<item:mysticalagriculture:hostile_soulium_dagger>,
<item:mysticalagriculture:creative_soulium_dagger>,
<item:mysticalagriculture:soul_extractor>,
<item:mysticalagriculture:soulium_spawner>,
<item:mysticalagriculture:soulium_ingot>,
<item:mysticalagriculture:soulium_nugget>,
<item:mysticalagriculture:soulium_gemstone>,
<item:mysticalagriculture:soulium_seed_base>,
<item:mysticalagriculture:soul_dust>,
<item:mysticalagriculture:soulium_dust>,
<item:mysticalagriculture:soul_jar>,
<item:mysticalagriculture:soulium_ingot_block>,
<item:mysticalagriculture:soulium_gemstone_block>,
<item:mysticalagriculture:soulium_ore>,
<item:mysticalagriculture:soulium_block>,
<item:mysticalagriculture:soulium_essence>,
<item:mysticalagriculture:soulium_seeds>,
<item:mysticalagriculture:soulstone>,
<item:mysticalagriculture:soulstone_cobble>,
<item:mysticalagriculture:soulstone_bricks>,
<item:mysticalagriculture:soulstone_cracked_bricks>,
<item:mysticalagriculture:soulstone_chiseled_bricks>,
<item:mysticalagriculture:soulstone_smooth>,
<item:mysticalagriculture:soul_glass>,
<item:mysticalagriculture:soulstone_slab>,
<item:mysticalagriculture:soulstone_cobble_slab>,
<item:mysticalagriculture:soulstone_bricks_slab>,
<item:mysticalagriculture:soulstone_smooth_slab>,
<item:mysticalagriculture:soulstone_stairs>,
<item:mysticalagriculture:soulstone_cobble_stairs>,
<item:mysticalagriculture:soulstone_bricks_stairs>,
<item:mysticalagriculture:soulstone_cobble_wall>,
<item:mysticalagriculture:soulstone_bricks_wall>,
<item:mysticalagriculture:soulium_ingot_block>,
<item:mysticalagriculture:soulium_gemstone_block>,
<item:mysticalagriculture:soulium_ore>,
<item:mysticalagriculture:soulstone>,
<item:mysticalagriculture:soulstone_cobble>,
<item:mysticalagriculture:soulstone_bricks>,
<item:mysticalagriculture:soulstone_cracked_bricks>,
<item:mysticalagriculture:soulstone_chiseled_bricks>,
<item:mysticalagriculture:soulstone_smooth>,
<item:mysticalagriculture:soul_glass>,
<item:mysticalagriculture:soulstone_slab>,
<item:mysticalagriculture:soulstone_cobble_slab>,
<item:mysticalagriculture:soulstone_bricks_slab>,
<item:mysticalagriculture:soulstone_smooth_slab>,
<item:mysticalagriculture:soulstone_stairs>,
<item:mysticalagriculture:soulstone_cobble_stairs>,
<item:mysticalagriculture:soulstone_bricks_stairs>,
<item:mysticalagriculture:soulstone_cobble_wall>,
<item:mysticalagriculture:soulstone_bricks_wall>,

// Removes Colossal Chest upgrades/downgrades and metal materials
<item:colossalchests:upgrade_tool>,
<item:colossalchests:upgrade_tool_reverse>,
<item:colossalchests:chest_wall_copper>,
<item:colossalchests:colossal_chest_copper>,
<item:colossalchests:interface_copper>,
<item:colossalchests:chest_wall_iron>,
<item:colossalchests:colossal_chest_iron>,
<item:colossalchests:interface_iron>,
<item:colossalchests:chest_wall_silver>,
<item:colossalchests:colossal_chest_silver>,
<item:colossalchests:interface_silver>,
<item:colossalchests:chest_wall_gold>,
<item:colossalchests:colossal_chest_gold>,
<item:colossalchests:interface_gold>,
<item:colossalchests:chest_wall_diamond>,
<item:colossalchests:colossal_chest_diamond>,
<item:colossalchests:interface_diamond>,
<item:colossalchests:chest_wall_obsidian>,
<item:colossalchests:colossal_chest_obsidian>,
<item:colossalchests:interface_obsidian>,

// Silent's Gear Item Cleanup
<item:silentgear:diamond_shard>,
<item:silentgear:emerald_shard>,
<item:silentgear:very_crude_repair_kit>,
<item:silentgear:crude_repair_kit>,
<item:silentgear:sturdy_repair_kit>,
<item:silentgear:crimson_repair_kit>,
<item:silentgear:azure_repair_kit>,
<item:silentgear:bort>,
<item:silentgear:bort_block>,
<item:silentgear:arrow_blueprint>,
<item:silentgear:fletching_blueprint>,
<item:silentgear:arrow_template>,
<item:silentgear:fletching_template>,

// Cyclic
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

// Thermal
<item:thermal:rubber>,
<item:thermal:rubber_block>,
<item:thermal:slag_block>,


// Applied Energistics 2
<item:ae2:not_so_mysterious_cube>,
<item:ae2:certus_quartz_axe>,
<item:ae2:certus_quartz_hoe>,
<item:ae2:certus_quartz_shovel>,
<item:ae2:certus_quartz_pickaxe>,
<item:ae2:certus_quartz_sword>,

// Industrial Foregoing
<item:industrialforegoing:dryrubber>,
<item:industrialforegoing:mob_duplicator>,

// RFTools
<item:rftoolsbase:machine_frame>,
<item:rftoolsbase:machine_base>,
<item:rftoolsutility:syringe>,
<item:rftoolsutility:spawner>,
<item:rftoolsutility:teleport_probe>,
<item:rftoolsutility:weakness_module>,

// Ex Nihilo Dolls
<item:exnihilosequentia:blaze_doll>,
<item:exnihilosequentia:enderman_doll>,
<item:exnihilosequentia:shulker_doll>,
<item:exnihilosequentia:guardian_doll>,
<item:exnihilosequentia:bee_doll>,
<item:exnihilosequentia:porcelain_doll>,

// Industrial Foregoing
<item:industrialforegoing:mob_slaughter_factory>,

// Silent's Gear Fluffy Stuff
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

    // Create
  <item:create:copper_nugget>,
  <item:createaddition:electrum_ingot>,
  <item:createaddition:electrum_nugget>,
  <item:createaddition:electrum_sheet>,

  // Immersive Engineering
  <item:immersiveengineering:nugget_copper>,
  <item:immersiveengineering:nugget_electrum>,
  <item:immersiveengineering:storage_electrum>,
  <item:immersiveengineering:axe_steel>,
  <item:immersiveengineering:hoe_steel>,
  <item:immersiveengineering:pickaxe_steel>,
  <item:immersiveengineering:shovel_steel>,
  <item:immersiveengineering:sword_steel>,

  // Cyclic
  <item:cyclic:copper_nugget>,

  // Silent's Gear
  <item:silentgear:bronze_ingot>,

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

  <item:pickletweaks:mesh>,

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
  <item:cyclic:netherite_nugget>,

  <item:colouredstuff:crafting_table_rainbow>,

  <item:thermal:basalz_powder>,
  <item:thermal:basalz_rod>,

  <item:bhc:red_heart_melted>,
  <item:bhc:yellow_heart_melted>,
  <item:bhc:green_heart_melted>,
  <item:bhc:blue_heart_melted>,
  <item:bhc:red_heart>,
  <item:bhc:yellow_heart>,
  <item:bhc:green_heart>,
  <item:bhc:blue_heart>,

  // Botania
  <item:botania:fertilizer>,

  // Mystical Agriculture
  <item:mysticalagriculture:air_agglomeratio>,
  <item:mysticalagriculture:earth_agglomeratio>,
  <item:mysticalagriculture:water_agglomeratio>,
  <item:mysticalagriculture:fire_agglomeratio>,
  <item:mysticalagriculture:nature_agglomeratio>,
  <item:mysticalagriculture:dye_agglomeratio>,
  <item:mysticalagriculture:nether_agglomeratio>,
  <item:mysticalagriculture:coral_agglomeratio>,
  <item:mysticalagriculture:honey_agglomeratio>,
  <item:mysticalagriculture:prismarine_agglomeratio>,
  <item:mysticalagriculture:end_agglomeratio>,

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
  <item:eccentrictome:tome>,

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

  // Vein Creepers
  <item:veincreeper:trap>,

  // EnderIO
  <item:enderio:powered_spawner>,

  // Hostile Neural Network
  <item:hostilenetworks:nether_prediction>,
  <item:hostilenetworks:end_prediction>,

  // Colored Torches
  <item:colored_torches:white_torch>,
  <item:colored_torches:orange_torch>,
  <item:colored_torches:magenta_torch>,
  <item:colored_torches:light_blue_torch>,
  <item:colored_torches:yellow_torch>,
  <item:colored_torches:lime_torch>,
  <item:colored_torches:pink_torch>,
  <item:colored_torches:gray_torch>,
  <item:colored_torches:light_gray_torch>,
  <item:colored_torches:cyan_torch>,
  <item:colored_torches:purple_torch>,
  <item:colored_torches:blue_torch>,
  <item:colored_torches:brown_torch>,
  <item:colored_torches:green_torch>,
  <item:colored_torches:red_torch>,
  <item:colored_torches:black_torch>
];

for item in items {
  craftingTable.remove(item);
}

// Furnace / Smelting Recipe Removals
furnace.remove(<item:thermal:cured_rubber>);
furnace.remove(<item:bhc:red_heart_melted>);
furnace.remove(<item:bhc:yellow_heart_melted>);
furnace.remove(<item:bhc:green_heart_melted>);
furnace.remove(<item:bhc:blue_heart_melted>);

furnace.remove(<item:immersiveengineering:ingot_nickel>);
furnace.remove(<item:immersiveengineering:ingot_lead>);
furnace.remove(<item:immersiveengineering:ingot_silver>);

// Remove EnderIO Alloy Smelter for lead nickel and silver duplicate craft (issue #406)
<recipetype:enderio:alloy_smelting>.removeByName("enderio:smelting/create/smelting/ingot_lead_compat_immersiveengineering");
<recipetype:enderio:alloy_smelting>.removeByName("enderio:smelting/create/smelting/ingot_nickel_compat_immersiveengineering");
<recipetype:enderio:alloy_smelting>.removeByName("enderio:smelting/create/smelting/ingot_silver_compat_immersiveengineering");

// Furnace Remove by Name
furnace.removeByInput(<item:bhc:red_heart_melted>);
furnace.removeByInput(<item:bhc:yellow_heart_melted>);
furnace.removeByInput(<item:bhc:green_heart_melted>);
furnace.removeByInput(<item:bhc:blue_heart_melted>);

// Removes Ex Nihilo Pebble Recipes
craftingTable.removeByName("minecraft:ens_andesite");
craftingTable.removeByName("minecraft:ens_basalt");
craftingTable.removeByName("minecraft:ens_blackstone");
craftingTable.removeByName("minecraft:ens_calcite");
craftingTable.removeByName("minecraft:ens_deepslate");
craftingTable.removeByName("minecraft:ens_diorite");
craftingTable.removeByName("minecraft:ens_dripstone_block");
craftingTable.removeByName("minecraft:ens_end_stone");
// craftingTable.removeByName("minecraft:ens_granite");
craftingTable.removeByName("minecraft:ens_netherrack");
craftingTable.removeByName("minecraft:ens_cobblestone");
craftingTable.removeByName("minecraft:ens_tuff");

// Cluttered mod
craftingTable.removeByName("luphieclutteredmod:luphie_purple_plank_set_stick_recipe");
craftingTable.removeByName("luphieclutteredmod:luphie_glow_wood_set_stick_recipe");

// Copper nuggets
craftingTable.removeByName("immersiveengineering:crafting/nugget_copper_to_copper_ingot");
craftingTable.removeByName("thermal:storage/copper_ingot_from_nuggets");
craftingTable.removeByName("create:crafting/materials/copper_ingot");

// Supplementaries
craftingTable.removeByName("supplementaries:bubble_blower");

// //
// Attempts to remove Draconic Evolution Spawner Conversion
events.register<crafttweaker.forge.api.event.interact.RightClickBlockEvent>(event => {
  val level = event.entity.level;
  val pos = event.blockPos;
  val stack = event.itemStack;
  // If we are on the client, or the item is not from draconic, return
  if level.isClientSide || stack.registryName.namespace != "draconicevolution" {
    return;
  }
  val state = level.getBlockState(pos);
  // if the block is a spawner, cancel the event
  if state.block == <block:minecraft:spawner> {
    event.cancel();
  }
});

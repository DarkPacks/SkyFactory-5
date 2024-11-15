import crafttweaker.api.loot.modifier.CommonLootModifiers;

// Increases Sapling drops when breaking leaves
// <block:minecraft:oak_leaves>.addLootModifier("sapling_bonus_drops_0", CommonLootModifiers.addWithChance(<item:minecraft:oak_sapling> % 20));
<block:minecraft:spruce_leaves>.addLootModifier("sapling_bonus_drops_1", CommonLootModifiers.addWithChance(<item:minecraft:spruce_sapling> % 20));
<block:minecraft:birch_leaves>.addLootModifier("sapling_bonus_drops_2", CommonLootModifiers.addWithChance(<item:minecraft:birch_sapling> % 20));
<block:minecraft:jungle_leaves>.addLootModifier("sapling_bonus_drops_3", CommonLootModifiers.addWithChance(<item:minecraft:jungle_sapling> % 20));
<block:minecraft:acacia_leaves>.addLootModifier("sapling_bonus_drops_4", CommonLootModifiers.addWithChance(<item:minecraft:acacia_sapling> % 20));
<block:minecraft:cherry_leaves>.addLootModifier("sapling_bonus_drops_5", CommonLootModifiers.addWithChance(<item:minecraft:cherry_sapling> % 20));
<block:minecraft:dark_oak_leaves>.addLootModifier("sapling_bonus_drops_6", CommonLootModifiers.addWithChance(<item:minecraft:dark_oak_sapling> % 20));
<block:minecraft:mangrove_leaves>.addLootModifier("sapling_bonus_drops_7", CommonLootModifiers.addWithChance(<item:minecraft:mangrove_propagule> % 20));
<block:colouredstuff:leaves_yellow>.addLootModifier("force_gem_from_yellow_leaves", CommonLootModifiers.addWithChance(<item:forcecraft:force_gem> % 4));
<block:colouredstuff:leaves_lime>.addLootModifier("inferium_essence_from_lime_leaves", CommonLootModifiers.addWithChance(<item:mysticalagriculture:inferium_essence> % 8));
<block:colouredstuff:leaves_none>.addLootModifier("colorless_essence_seeds_from_none_leaves", CommonLootModifiers.addWithChance(<item:mysticalagriculture:none_crop_seeds> % 6));
<block:sf5_things:colorless_leaves>.addLootModifier("colorless_essence_seeds_from_none_leaves2", CommonLootModifiers.addWithChance(<item:mysticalagriculture:none_crop_seeds> % 6));

<block:exnihilosequentia:infested_leaves>.addLootModifier("temporary_infested_leaves_drops1", CommonLootModifiers.addWithChance(<item:minecraft:string> % 100));
<block:exnihilosequentia:infested_leaves>.addLootModifier("temporary_infested_leaves_drops2", CommonLootModifiers.addWithChance(<item:exnihilosequentia:silkworm> % 25));


// Adds a Drowned Gateway Pearl to Leaves drops for players only
<block:minecraft:oak_leaves>.addLootModifier("bonus_drops_oak", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }

  if rollsChance(ctx.random, 0.69) {
    drops.add(<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/drowned"}));
  }

  return drops;
});

<block:sf5_things:colorless_leaves>.addLootModifier("first_colorless_leaves", (drops, ctx) => {
  if !isRealPlayerLooting(ctx) {
    return drops;
  }


  // Increases drops from 1st tree on worldgen
  if rollsChance(ctx.random, 15) {
    drops.add(<item:colouredstuff:sapling_none>);
  }

  if rollsChance(ctx.random, 5) {
    drops.add(<item:sf5_things:none_apple>);
  }

  if rollsChance(ctx.random, 10) {
    drops.add(<item:exnihilosequentia:silkworm>);
  }

  return drops;
});

// Sets up drops from Tall Grass
<block:minecraft:tall_grass>.addLootModifier("wheat_seeds_from_tall_grass", CommonLootModifiers.addWithChance(<item:minecraft:wheat_seeds> % 12.5));
<block:minecraft:tall_grass>.addLootModifier("beetroot_seeds_from_tall_grass", CommonLootModifiers.addWithChance(<item:minecraft:beetroot_seeds> % 12.5));
<block:minecraft:grass>.addLootModifier("wheat_seeds_from_grass", CommonLootModifiers.addWithChance(<item:minecraft:wheat_seeds> % 12.5));
<block:minecraft:grass>.addLootModifier("beetroot_seeds_from_grass", CommonLootModifiers.addWithChance(<item:minecraft:beetroot_seeds> % 12.5));


// Adds Ars Nouveau Sapling Drops to Color Trees
<block:colouredstuff:leaves_blue>.addLootModifier("ars_sapling_blue", CommonLootModifiers.addWithChance(<item:ars_nouveau:blue_archwood_sapling> % 0.5));
<block:colouredstuff:leaves_green>.addLootModifier("ars_sapling_green", CommonLootModifiers.addWithChance(<item:ars_nouveau:green_archwood_sapling> % 0.5));
<block:colouredstuff:leaves_red>.addLootModifier("ars_sapling_red", CommonLootModifiers.addWithChance(<item:ars_nouveau:red_archwood_sapling> % 0.5));
<block:colouredstuff:leaves_purple>.addLootModifier("ars_sapling_purple", CommonLootModifiers.addWithChance(<item:ars_nouveau:purple_archwood_sapling> % 0.5));



// loot.modifiers.register(
//    "clear",
//    LootConditions.none(),
//    CommonLootModifiers.clearLoot()
// );

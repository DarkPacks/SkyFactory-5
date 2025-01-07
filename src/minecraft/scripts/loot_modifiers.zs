import crafttweaker.api.block.Block;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.util.random.Percentaged;

public class BonusBlockDrops {
  private val name as string;
  private val block as Block;
  private val bonusDrops as Percentaged<IItemStack>[];
  private val requirePlayer as bool;
  private val ignoreShears as bool;

  public this(name as string, block as Block, bonusDrops as Percentaged<IItemStack>[], requirePlayer as bool, ignoreShears as bool) {
    this.name = name;
    this.block = block;
    this.bonusDrops = bonusDrops;
    this.requirePlayer = requirePlayer;
    this.ignoreShears = ignoreShears;
  }

  public apply() as void {
    val name = this.name;
    val block = this.block;
    val bonusDrops = this.bonusDrops;
    val requirePlayer = this.requirePlayer;
    val ignoreShears = this.ignoreShears;

    this.block.addLootModifier(this.name, (drops, ctx) => {
      if ignoreShears && <tag:items:forge:shears>.contains(ctx.tool.registryName) {
        return drops;
      }

      if requirePlayer && !isRealPlayerLooting(ctx) {
        return drops;
      }

      for percentagedItem in bonusDrops {
        if rollsChance(ctx.random, percentagedItem.percentage * 100) {
          drops.add(percentagedItem.data);
        }
      }

      return drops;
    });
  }
}

val bonusBlockDrops as BonusBlockDrops[] = [
  // Increases Sapling drops when breaking leaves
  new BonusBlockDrops("sapling_bonus_drops_0", <block:minecraft:oak_leaves>, [<item:minecraft:oak_sapling> % 20], false, true),
  new BonusBlockDrops("sapling_bonus_drops_1", <block:minecraft:spruce_leaves>, [<item:minecraft:spruce_sapling> % 20], false, true),
  new BonusBlockDrops("sapling_bonus_drops_2", <block:minecraft:birch_leaves>, [<item:minecraft:birch_sapling> % 20], false, true),
  new BonusBlockDrops("sapling_bonus_drops_3", <block:minecraft:jungle_leaves>, [<item:minecraft:jungle_sapling> % 20], false, true),
  new BonusBlockDrops("sapling_bonus_drops_4", <block:minecraft:acacia_leaves>, [<item:minecraft:acacia_sapling> % 20], false, true),
  new BonusBlockDrops("sapling_bonus_drops_5", <block:minecraft:cherry_leaves>, [<item:minecraft:cherry_sapling> % 20], false, true),
  new BonusBlockDrops("sapling_bonus_drops_6", <block:minecraft:dark_oak_leaves>, [<item:minecraft:dark_oak_sapling> % 20], false, true),
  new BonusBlockDrops("sapling_bonus_drops_7", <block:minecraft:mangrove_leaves>, [<item:minecraft:mangrove_propagule> % 20], false, true),

  new BonusBlockDrops("force_gem_from_yellow_leaves", <block:colouredstuff:leaves_yellow>, [<item:forcecraft:force_gem> % 4], false, true),
  new BonusBlockDrops("inferium_essence_from_lime_leaves", <block:colouredstuff:leaves_lime>, [<item:mysticalagriculture:inferium_essence> % 8], false, true),
  new BonusBlockDrops("colorless_essence_seeds_from_none_leaves", <block:colouredstuff:leaves_none>, [<item:mysticalagriculture:none_crop_seeds> % 6], false, true),
  new BonusBlockDrops("colorless_essence_seeds_from_none_leaves2", <block:sf5_things:colorless_leaves>, [<item:mysticalagriculture:none_crop_seeds> % 6], false, true),

  new BonusBlockDrops("infested_leaves_drops", <block:exnihilosequentia:infested_leaves>, [<item:minecraft:string>, <item:exnihilosequentia:silkworm> % 25], false, true),

  // Adds a Drowned Gateway Pearl to Leaves drops for players only
  // new BonusBlockDrops("bonus_drops_oak", <block:minecraft:oak_leaves>, [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/drowned"}) % 69], true, true),

  new BonusBlockDrops("first_colorless_leaves", <block:sf5_things:colorless_leaves>, [<item:colouredstuff:sapling_none> % 15, <item:sf5_things:none_apple> % 5, <item:exnihilosequentia:silkworm> % 10], true, true),

  // Sets up drops from Tall Grass
  new BonusBlockDrops("wheat_seeds_from_tall_grass", <block:minecraft:tall_grass>, [<item:minecraft:wheat_seeds> % 12.5], false, true),
  new BonusBlockDrops("beetroot_seeds_from_tall_grass", <block:minecraft:tall_grass>, [<item:minecraft:beetroot_seeds> % 12.5], false, true),
  new BonusBlockDrops("wheat_seeds_from_grass", <block:minecraft:grass>, [<item:minecraft:wheat_seeds> % 12.5], false, true),
  new BonusBlockDrops("beetroot_seeds_from_grass", <block:minecraft:grass>, [<item:minecraft:beetroot_seeds> % 12.5], false, true),

  // Adds Ars Nouveau Sapling Drops to Color Trees
  new BonusBlockDrops("ars_sapling_blue", <block:colouredstuff:leaves_blue>, [<item:ars_nouveau:blue_archwood_sapling> % 0.5], false, true),
  new BonusBlockDrops("ars_sapling_green", <block:colouredstuff:leaves_green>, [<item:ars_nouveau:green_archwood_sapling> % 0.5], false, true),
  new BonusBlockDrops("ars_sapling_red", <block:colouredstuff:leaves_red>, [<item:ars_nouveau:red_archwood_sapling> % 0.5], false, true),
  new BonusBlockDrops("ars_sapling_purple", <block:colouredstuff:leaves_purple>, [<item:ars_nouveau:purple_archwood_sapling> % 0.5], false, true)
];

for entry in bonusBlockDrops {
  entry.apply();
}

// loot.modifiers.register(
//    "clear",
//    LootConditions.none(),
//    CommonLootModifiers.clearLoot()
// );

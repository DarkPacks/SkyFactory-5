import crafttweaker.api.villager.VillagerProfession;
import crafttweaker.api.villagers.VillagerTrades;

// https:// docs.blamejared.com/1.20.1/en/vanilla/api/villager/VillagerTrades

function removeVillagerTrades(profession as VillagerProfession) as void {
  // Remove 1-5
  for i in 1 .. 6 {
    villagerTrades.removeAllTrades(profession, i);
  }
}

// // friendsandfoes
removeVillagerTrades(<profession:friendsandfoes:beekeeper>);

// // immersiveengineering
removeVillagerTrades(<profession:immersiveengineering:engineer>);
removeVillagerTrades(<profession:immersiveengineering:machinist>);
removeVillagerTrades(<profession:immersiveengineering:electrician>);
removeVillagerTrades(<profession:immersiveengineering:outfitter>);
removeVillagerTrades(<profession:immersiveengineering:gunsmith>);

// // dyeable_redstone_signal
removeVillagerTrades(<profession:dyeable_redstone_signal:energy_researcher>);

// // ars_nouveau
removeVillagerTrades(<profession:ars_nouveau:shady_wizard>);

// // vinery
removeVillagerTrades(<profession:vinery:winemaker>);

// // AE2
removeVillagerTrades(<profession:ae2:fluix_researcher>);

// // Farmer
// Removes all Farmer Trades
removeVillagerTrades(<profession:minecraft:farmer>);

// VillagerTrades.addTrade(profession as VillagerProfession, villagerLevel as int, emeralds as int, forSale as ItemStack, maxTrades as int, xp as int, priceMult as float)
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, 4, <item:minecraft:oak_sapling>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, 4, <item:minecraft:spruce_sapling>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, 4, <item:minecraft:birch_sapling>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, 4, <item:minecraft:jungle_sapling>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, 4, <item:thermal:rubberwood_sapling>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, 4, <item:minecraft:acacia_sapling>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, 4, <item:minecraft:dark_oak_sapling>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, 4, <item:minecraft:melon_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, 4, <item:thermal:corn_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, 4, <item:thermal:onion_seeds>, 4, 8, 0.05);
// Level 2
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, 8, <item:minecraft:cherry_sapling>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, 4, <item:pizzacraft:olive_sapling>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, 2, <item:sushigocrafting:rice_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, 2, <item:sushigocrafting:cucumber_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, 2, <item:sushigocrafting:soy_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, 2, <item:sushigocrafting:wasabi_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, 2, <item:sushigocrafting:sesame_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 2, 4, <item:sushigocrafting:avocado_sapling>, 4, 8, 0.05);
// Level 3
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 4, <item:pizzacraft:broccoli_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 4, <item:thermal:bell_pepper_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 4, <item:pizzacraft:pineapple_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 4, <item:thermal:tomato_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 4, <item:thermal:eggplant_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 4, <item:thermal:eggplant_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 4, <item:thermal:flax_seeds>, 4, 8, 0.05);
villagerTrades.addTrade(<profession:minecraft:farmer>, 3, 4, <item:silentgear:netherwood_sapling>, 4, 8, 0.05);

// // Wandering Trader
// Removes all Wandering Trader Trades
villagerTrades.removeAllWanderingTrades(1);
villagerTrades.removeAllWanderingTrades(2);

// Adds new Wandering Trader Trades
// VillagerTrades.addWanderingTrade(rarity as int, emeralds as int, forSale as ItemStack, maxTrades as int, xp as int)
villagerTrades.addWanderingTrade(1, 2, <item:sf5_things:dirt_and_worms>, 8, 8);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:oak_sapling>, 4, 8);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:spruce_sapling>, 4, 8);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:birch_sapling>, 4, 8);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:jungle_sapling>, 4, 8);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:acacia_sapling>, 4, 8);
villagerTrades.addWanderingTrade(2, 8, <item:minecraft:cherry_sapling>, 4, 8);
villagerTrades.addWanderingTrade(1, 4, <item:minecraft:dark_oak_sapling>, 4, 8);
villagerTrades.addWanderingTrade(1, 4, <item:pizzacraft:olive_sapling>, 4, 8);
villagerTrades.addWanderingTrade(1, 4, <item:thermal:corn_seeds>, 4, 8);
villagerTrades.addWanderingTrade(1, 4, <item:thermal:onion_seeds>, 4, 8);
// Level 2
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/pink_loot_bag", Color: 15961002, Name: "skyfactory_5.loot_bag.pink"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/yellow_loot_bag", Color: 16701501, Name: "skyfactory_5.loot_bag.yellow"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/white_loot_bag", Color: 16383998, Name: "skyfactory_5.loot_bag.white"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/light_blue_loot_bag", Color: 3847130, Name: "skyfactory_5.loot_bag.light_blue"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/orange_loot_bag", Color: 16351261, Name: "skyfactory_5.loot_bag.orange"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/black_loot_bag", Color: 1908001, Name: "skyfactory_5.loot_bag.black"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/gray_loot_bag", Color: 4673362, Name: "skyfactory_5.loot_bag.grey"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/lime_loot_bag", Color: 8439583, Name: "skyfactory_5.loot_bag.lime"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/blue_loot_bag", Color: 3949738, Name: "skyfactory_5.loot_bag.blue"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/purple_loot_bag", Color: 8991416, Name: "skyfactory_5.loot_bag.purple"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/cyan_loot_bag", Color: 1481884, Name: "skyfactory_5.loot_bag.cyan"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/light_gray_loot_bag", Color: 10329495, Name: "skyfactory_5.loot_bag.light_grey"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/red_loot_bag", Color: 11546150, Name: "skyfactory_5.loot_bag.red"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/green_loot_bag", Color: 6192150, Name: "skyfactory_5.loot_bag.green"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/brown_loot_bag", Color: 8606770, Name: "skyfactory_5.loot_bag.brown"}), 4, 9);
villagerTrades.addWanderingTrade(2, 8, <item:lootbags:loot_bag>.withTag({Type: "COMMON", Loot: "skyfactory_5:loot_bags/magenta_loot_bag", Color: 13061821, Name: "skyfactory_5.loot_bag.magenta"}), 4, 9);


// // Armorer
// Removes all Armorer Trades
removeVillagerTrades(<profession:minecraft:armorer>);

// // Butcher
// Removes all Butcher Trades
removeVillagerTrades(<profession:minecraft:butcher>);

// // Cartographer
// Removes all Cartographer Trades
removeVillagerTrades(<profession:minecraft:cartographer>);

// // Cleric
// Removes all Cleric Trades
removeVillagerTrades(<profession:minecraft:cleric>);

// // Fisherman
// Removes all Fisherman Trades
removeVillagerTrades(<profession:minecraft:fisherman>);

villagerTrades.addTrade(<profession:minecraft:fisherman>, 1, 4, <item:minecraft:sponge>, 4, 8, 0.05);

// // Fletcher
// Removes all Fletcher Trades
removeVillagerTrades(<profession:minecraft:fletcher>);

// // Leatherworker
// Removes all Leatherworker Trades
removeVillagerTrades(<profession:minecraft:leatherworker>);

// // Librarian
// Removes all Librarian Trades
removeVillagerTrades(<profession:minecraft:librarian>);

// // Mason
// Removes all Mason Trades
removeVillagerTrades(<profession:minecraft:mason>);

// // Shepherd
// Removes all Shepherd Trades
removeVillagerTrades(<profession:minecraft:shepherd>);

// // Toolsmith
// Removes all Toolsmith Trades
removeVillagerTrades(<profession:minecraft:toolsmith>);

// // Weaponsmith
// Removes all Weaponsmith Trades
removeVillagerTrades(<profession:minecraft:weaponsmith>);

// Color Villagers

// Gray
// Normal Gateways
// Gray
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/cat"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/evoker"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/pillager"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/abyssologer"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/bouldering_zombie"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/gray_vein_creeper"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/ravager"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/silverfish"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/vindicator"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/illusioner"}), 4, 16, 0.05);
// Titan Gateways
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/abyssologer"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/bouldering_zombie"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/cat"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/evoker"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/gray_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/pillager"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/ravager"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/silverfish"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/vindicator"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/illusioner"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_gray>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_gray"}), 2, 64, 0.05);
// //
// Red
// Normal Gateways
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/cluckshroom"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/mooshroom"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/salmon"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/red_chu_chu"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/parrot"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/strider"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/red_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/wandering_winemaker"}), 4, 16, 0.05);
// Titan Gateways
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/cluckshroom"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/mooshroom"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/parrot"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/red_chu_chu"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/red_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/salmon"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/strider"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/wandering_winemaker"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_red>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_red"}), 2, 64, 0.05);
// //

// Light Blue
// Normal Gateways
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_blue>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/allay"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_blue>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/dolphin"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_blue>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/light_blue_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_blue>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/tuna"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_blue>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/fairy"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_blue>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/vex"}), 4, 16, 0.05);
// Titan Gateways
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_blue>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/allay"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_blue>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/dolphin"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_blue>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/fairy"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_blue>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/light_blue_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_blue>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/tuna"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_blue>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/vex"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_blue>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_light_blue"}), 2, 64, 0.05);
// //

// Normal Gateways
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/enderman"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/spider"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/wither_skeleton"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/umbra_cow"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/cave_spider"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/ender_tot"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/adelie_penguin"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/black_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/ender_dragon"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/wither"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/wither_skeleton_wolf"}), 4, 16, 0.05);
// Titan Gateways
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/adelie_penguin"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/black_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/cave_spider"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/ender_dragon"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/ender_tot"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/enderman"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/spider"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/umbra_cow"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/wither"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/wither_skeleton"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/wither_skeleton_wolf"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_black>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_black"}), 2, 64, 0.05);
// //

// Normal Gateways
// Blue
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/squid"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/wandering_trader"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/drowned"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/blue_chu_chu"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/blue_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/phantom"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/bouldering_drowned"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/trader_llama"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/viler_witch"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/lobber_drowned"}), 4, 16, 0.05);
// Titan Gateways
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/blue_chu_chu"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/blue_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/bouldering_drowned"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/drowned"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/phantom"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/squid"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/trader_llama"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/viler_witch"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/wandering_trader"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/lobber_drowned"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_blue>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_blue"}), 2, 64, 0.05);
// //
// Normal Gateways
// White
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/chicken"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/ghast"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/goat"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/panda"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/sheep"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/skeleton"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/snow_golem"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/llama"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/polar_bear"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/albino_cow"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/baby_ghast"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/horned_sheep"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/melon_golem"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/opalescent_eye"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/skeleton_horse"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/skeleton_wolf"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/white_vein_creeper"}), 4, 16, 0.05);
// Titan Gateways
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/albino_cow"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/baby_ghast"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/chicken"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/ghast"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/goat"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/melon_golem"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/llama"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/opalescent_eye"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/panda"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/polar_bear"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/sheep"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/skeleton"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/skeleton_horse"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/skeleton_wolf"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/snow_golem"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/white_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/horned_sheep"}), 4, 16, 0.05);

// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_white>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_white"}), 2, 64, 0.05);
// //
// Normal Gateways
// Brown
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/cow"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/husk"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/villager"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/bat"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/brown_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/cod"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/donkey"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/ghast_cow"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/horse"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/mule"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/rabbit"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/tadpole"}), 4, 16, 0.05);
// Titan
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/bat"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/brown_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/cod"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/cow"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/donkey"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/ghast_cow"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/horse"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/husk"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/mule"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/rabbit"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/tadpole"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/villager"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_brown>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_brown"}), 2, 64, 0.05);
// //
// Normal Gateways
// Cyan
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/fancy_chicken"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/glow_squid"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/tropical_slime"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/drygmy"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/stray_bone_spider"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/cyan_vein_creeper"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/glow_skeleton"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/warden"}), 4, 16, 0.05);
// Titan Gateways
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/cyan_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/fancy_chicken"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/glow_skeleton"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/drygmy"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/glow_squid"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/stray_bone_spider"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/tropical_slime"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/warden"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_cyan>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_cyan"}), 2, 64, 0.05);
// //
// Normal Gateways
// Light Gray
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/iron_golem"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/stray"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/witch"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/guardian"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/light_gray_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/wolf"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/furnace_golem"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/elder_guardian"}), 4, 16, 0.05);
// Titan Gateways
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/elder_guardian"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/furnace_golem"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/guardian"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/iron_golem"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/light_gray_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/stray"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/witch"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/wolf"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_light_gray>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_light_gray"}), 2, 64, 0.05);
// //
// Normal Gateways
// Yellow
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/bee"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/cream_cow"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/moobloom"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/camel"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/gold_chu_chu"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/ocelot"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/yellow_vein_creeper"}), 4, 16, 0.05);
// TitanGateways
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/bee"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/camel"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/cream_cow"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/gold_chu_chu"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/moobloom"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/ocelot"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/yellow_vein_creeper"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_yellow>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_yellow"}), 2, 64, 0.05);
// //
// Normal Gateways
// Orange
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/blaze"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/wooly_cow"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/magma_cow"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/magma_cube"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/fox"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/hyper_rabbit"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/lava_monster"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/lava_squid"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/mother_lava_squid"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/orange_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/pufferfish"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/tropical_fish"}), 4, 16, 0.05);
// Titan Gateways
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/fox"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/blaze"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/hyper_rabbit"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/lava_monster"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/lava_squid"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/magma_cow"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/magma_cube"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/mother_lava_squid"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/orange_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/pufferfish"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/tropical_fish"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/wooly_cow"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_orange>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_orange"}), 2, 64, 0.05);
// //
// Normal Gateways
// Lime
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_lime>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_lime>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/slime"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_lime>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/whirlisprig"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_lime>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/turtle"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_lime>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/creeper_tot"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_lime>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/lime_vein_creeper"}), 4, 16, 0.05);
// Titan Gateways
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_lime>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_lime>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/creeper_tot"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_lime>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/whirlisprig"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_lime>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/lime_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_lime>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/slime"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_lime>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/turtle"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_lime>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_lime"}), 2, 64, 0.05);
// //
// Normal Gateways
// Magenta
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_magenta>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/crystal_zombie"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_magenta>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/magenta_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_magenta>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/starbuncle"}), 4, 16, 0.05);
// Titan Gateways
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_magenta>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/crystal_zombie"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_magenta>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/magenta_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_magenta>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/starbuncle"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_magenta>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_magenta"}), 2, 64, 0.05);
// //
// Normal Gateways
// Pink
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/moolip"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/pig"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/piglin"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/zombified_piglin"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/axolotl"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/hoglin"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/jumbo_rabbit"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/piglin_brute"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/pink_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/teacup_pig"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/zoglin"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/zombified_pig"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/shrimp"}), 4, 16, 0.05);
// Titan Gateways
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/axolotl"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/hoglin"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/jumbo_rabbit"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/moolip"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/pig"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/piglin"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/piglin_brute"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/pink_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/teacup_pig"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/zoglin"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/zombified_pig"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/zombified_piglin"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/shrimp"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_pink>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_pink"}), 2, 64, 0.05);
// //
// Normal Gateways
// Green
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/frog"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/sniffer"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/zombie"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/green_chu_chu"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/swamp_zombie"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/zombie_villager"}), 4, 16, 0.05);
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/green_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/overgrown_skeleton"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/zombie_horse"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/lobber_zombie"}), 4, 16, 0.05);
// Titan Gateways
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/frog"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/green_chu_chu"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/green_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/overgrown_skeleton"}), 4, 16, 0.05);
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/sniffer"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/swamp_zombie"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/zombie"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/zombie_horse"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/zombie_villager"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 5, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/lobber_zombie"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_green>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_green"}), 2, 64, 0.05);
// //
// Normal Gateways
// Purple
// Level 1
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_purple>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/bone_spider"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_purple>, 1, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/shulker"}), 4, 16, 0.05);
// Level 2
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_purple>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/purple_vein_creeper"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_purple>, 2, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/endermite"}), 4, 16, 0.05);
// Titan Gateways
// Level 3
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_purple>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/bone_spider"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_purple>, 3, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/endermite"}), 4, 16, 0.05);
// Level 4
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_purple>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/shulker"}), 4, 16, 0.05);
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_purple>, 4, 4, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/purple_vein_creeper"}), 4, 16, 0.05);
// Challenge Gateways
// Level 5
villagerTrades.addTrade(<profession:spacecatcustomprofessions:villager_purple>, 5, 32, <item:gateways:gate_pearl>.withTag({gateway: "gateways:challenge/challenge_purple"}), 2, 64, 0.05);
// //

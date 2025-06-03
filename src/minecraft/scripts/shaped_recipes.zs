import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.MapData;

// Treasure Bag Template
craftingTable.addShaped(
  "treasure_bag_template",
  <item:sf5_things:treasure_bag_template>,
  [
    [<item:minecraft:string>, <item:silentgear:template_board>, <item:minecraft:string>],
    [<item:silentgear:template_board>, <tag:items:forge:chests>, <item:silentgear:template_board>],
    [<item:silentgear:template_board>, <item:silentgear:template_board>, <item:silentgear:template_board>]
  ]
);

// Dimensional Paintings Mod
craftingTable.remove(<item:dimpaintings:nether_painting>);
craftingTable.remove(<item:dimpaintings:end_painting>);
craftingTable.remove(<item:dimpaintings:overworld_painting>);
craftingTable.addShaped(
  "dimensional_painting_nether",
  <item:dimpaintings:nether_painting>,
  [
    [<item:sf5_things:block_of_red_dye>, <item:xercapaint:item_palette>, <item:sf5_things:block_of_red_dye>],
    [<item:sf5_things:block_of_purple_dye>, <item:minecraft:painting>, <item:sf5_things:block_of_purple_dye>],
    [<item:sf5_things:block_of_light_gray_dye>, <item:minecraft:brush>, <item:sf5_things:block_of_light_gray_dye>]
  ]
);

craftingTable.addShaped(
  "dimensional_painting_end",
  <item:dimpaintings:end_painting>,
  [
    [<item:sf5_things:block_of_black_dye>, <item:xercapaint:item_palette>, <item:sf5_things:block_of_black_dye>],
    [<item:sf5_things:block_of_purple_dye>, <item:minecraft:painting>, <item:sf5_things:block_of_purple_dye>],
    [<item:sf5_things:block_of_black_dye>, <item:minecraft:brush>, <item:sf5_things:block_of_black_dye>]
  ]
);

craftingTable.addShaped(
  "dimensional_painting_overworld",
  <item:dimpaintings:overworld_painting>,
  [
    [<item:sf5_things:block_of_green_dye>, <item:xercapaint:item_palette>, <item:sf5_things:block_of_green_dye>],
    [<item:sf5_things:block_of_blue_dye>, <item:minecraft:painting>, <item:sf5_things:block_of_blue_dye>],
    [<item:sf5_things:block_of_yellow_dye>, <item:minecraft:brush>, <item:sf5_things:block_of_yellow_dye>]
  ]
);

// Xer Can Paint

craftingTable.addShaped(
  "xercapaint_palette",
  <item:xercapaint:item_palette>,
  [
    [<item:minecraft:air>, <tag:items:minecraft:wool>, <item:minecraft:air>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
);

// Fixes recipe conflict between Builders Wands and Pizzacraft Peels
craftingTable.remove(<item:pizzacraft:stone_pizza_peel>);
craftingTable.remove(<item:pizzacraft:iron_pizza_peel>);
craftingTable.remove(<item:pizzacraft:golden_pizza_peel>);
craftingTable.remove(<item:pizzacraft:diamond_pizza_peel>);

craftingTable.addShaped(
  "pizzacraft_stone_peel",
  <item:pizzacraft:stone_pizza_peel>,
  [
    [<item:minecraft:air>, <tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <tag:items:forge:cobblestone>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
  ]
);
craftingTable.addShaped(
  "pizzacraft_iron_peel",
  <item:pizzacraft:iron_pizza_peel>,
  [
    [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:iron_ingot>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
  ]
);
craftingTable.addShaped(
  "pizzacraft_golden_peel",
  <item:pizzacraft:golden_pizza_peel>,
  [
    [<item:minecraft:air>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:gold_ingot>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
  ]
);
craftingTable.addShaped(
  "pizzacraft_diamond_peel",
  <item:pizzacraft:diamond_pizza_peel>,
  [
    [<item:minecraft:air>, <item:minecraft:diamond>, <item:minecraft:diamond>],
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:diamond>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:air>, <item:minecraft:air>]
  ]
);

// Fixes recipe conflict between ars nouveau and spelled books
craftingTable.addShaped(
  "spelled_book",
  <item:spelled:spell_book>,
  [
    [<item:minecraft:lapis_lazuli>, <item:minecraft:book>, <item:minecraft:lapis_lazuli>]
  ]
);

// Changes the Mystical Agriculture Infusion Crystal recipe to make the Master Crystal instead
craftingTable.remove(<item:mysticalagriculture:infusion_crystal>);
craftingTable.remove(<item:mysticalagriculture:master_infusion_crystal>);

craftingTable.addShaped(
  "master_infusion_crystal",
  <item:mysticalagriculture:master_infusion_crystal>,
  [
    [<item:mysticalagriculture:inferium_essence>, <item:mysticalagriculture:prosperity_shard>, <item:mysticalagriculture:inferium_essence>],
    [<item:mysticalagriculture:prosperity_shard>, <item:minecraft:diamond>, <item:mysticalagriculture:prosperity_shard>],
    [<item:mysticalagriculture:inferium_essence>, <item:mysticalagriculture:prosperity_shard>, <item:mysticalagriculture:inferium_essence>]
  ]
);

// I don't know who made the original recipe that 4 obsidian plus a water bucket makes
// 1 crying obsidian. But I do think they wanted people to cry in real life when making that recipe.
// It's outrageous, it's egregious, and preposterous!
craftingTable.remove(<item:minecraft:crying_obsidian>);

craftingTable.addShaped(
  "better_crying_obsidian",
  <item:minecraft:crying_obsidian> * 4,
  [
    [<item:minecraft:air>, <item:minecraft:obsidian>, <item:minecraft:air>],
    [<item:minecraft:obsidian>, <item:minecraft:water_bucket>, <item:minecraft:obsidian>],
    [<item:minecraft:air>, <item:minecraft:obsidian>, <item:minecraft:air>]
  ]
);

// Vanilla Bundle item
craftingTable.addShaped(
  "bundle_recipe",
  <item:minecraft:bundle> * 1,
  [
    [<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>],
    [<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:leather>],
    [<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]
  ]
);

// Ex Nihilo Barrel Recipes

craftingTable.addShaped(
  "barrel_stone_shaped",
  <item:exnihilosequentia:stone_barrel> * 1,
  [
    [<item:minecraft:stone>, <item:minecraft:air>, <item:minecraft:stone>],
    [<item:minecraft:stone>, <item:minecraft:air>, <item:minecraft:stone>],
    [<item:minecraft:stone>, <item:minecraft:stone_slab>, <item:minecraft:stone>]
  ]
);

craftingTable.addShaped(
  "barrel_black_shaped",
  <item:exnihilocoloratus:black_barrel> * 1,
  [
    [<item:colouredstuff:planks_black>, <item:minecraft:air>, <item:colouredstuff:planks_black>],
    [<item:colouredstuff:planks_black>, <item:minecraft:air>, <item:colouredstuff:planks_black>],
    [<item:colouredstuff:planks_black>, <item:colouredstuff:slab_planks_black>, <item:colouredstuff:planks_black>]
  ]
);
craftingTable.addShaped(
  "barrel_blue_shaped",
  <item:exnihilocoloratus:blue_barrel> * 1,
  [
    [<item:colouredstuff:planks_blue>, <item:minecraft:air>, <item:colouredstuff:planks_blue>],
    [<item:colouredstuff:planks_blue>, <item:minecraft:air>, <item:colouredstuff:planks_blue>],
    [<item:colouredstuff:planks_blue>, <item:colouredstuff:slab_planks_blue>, <item:colouredstuff:planks_blue>]
  ]
);
craftingTable.addShaped(
  "barrel_brown_shaped",
  <item:exnihilocoloratus:brown_barrel> * 1,
  [
    [<item:colouredstuff:planks_brown>, <item:minecraft:air>, <item:colouredstuff:planks_brown>],
    [<item:colouredstuff:planks_brown>, <item:minecraft:air>, <item:colouredstuff:planks_brown>],
    [<item:colouredstuff:planks_brown>, <item:colouredstuff:slab_planks_brown>, <item:colouredstuff:planks_brown>]
  ]
);
craftingTable.addShaped(
  "barrel_cyan_shaped",
  <item:exnihilocoloratus:cyan_barrel> * 1,
  [
    [<item:colouredstuff:planks_cyan>, <item:minecraft:air>, <item:colouredstuff:planks_cyan>],
    [<item:colouredstuff:planks_cyan>, <item:minecraft:air>, <item:colouredstuff:planks_cyan>],
    [<item:colouredstuff:planks_cyan>, <item:colouredstuff:slab_planks_cyan>, <item:colouredstuff:planks_cyan>]
  ]
);
craftingTable.addShaped(
  "barrel_gray_shaped",
  <item:exnihilocoloratus:gray_barrel> * 1,
  [
    [<item:colouredstuff:planks_gray>, <item:minecraft:air>, <item:colouredstuff:planks_gray>],
    [<item:colouredstuff:planks_gray>, <item:minecraft:air>, <item:colouredstuff:planks_gray>],
    [<item:colouredstuff:planks_gray>, <item:colouredstuff:slab_planks_gray>, <item:colouredstuff:planks_gray>]
  ]
);
craftingTable.addShaped(
  "barrel_green_shaped",
  <item:exnihilocoloratus:green_barrel> * 1,
  [
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:colouredstuff:slab_planks_green>, <item:colouredstuff:planks_green>]
  ]
);
craftingTable.addShaped(
  "barrel_light_blue_shaped",
  <item:exnihilocoloratus:light_blue_barrel> * 1,
  [
    [<item:colouredstuff:planks_light_blue>, <item:minecraft:air>, <item:colouredstuff:planks_light_blue>],
    [<item:colouredstuff:planks_light_blue>, <item:minecraft:air>, <item:colouredstuff:planks_light_blue>],
    [<item:colouredstuff:planks_light_blue>, <item:colouredstuff:slab_planks_light_blue>, <item:colouredstuff:planks_light_blue>]
  ]
);
craftingTable.addShaped(
  "barrel_light_gray_shaped",
  <item:exnihilocoloratus:light_gray_barrel> * 1,
  [
    [<item:colouredstuff:planks_light_gray>, <item:minecraft:air>, <item:colouredstuff:planks_light_gray>],
    [<item:colouredstuff:planks_light_gray>, <item:minecraft:air>, <item:colouredstuff:planks_light_gray>],
    [<item:colouredstuff:planks_light_gray>, <item:colouredstuff:slab_planks_light_gray>, <item:colouredstuff:planks_light_gray>]
  ]
);
craftingTable.addShaped(
  "barrel_lime_shaped",
  <item:exnihilocoloratus:lime_barrel> * 1,
  [
    [<item:colouredstuff:planks_lime>, <item:minecraft:air>, <item:colouredstuff:planks_lime>],
    [<item:colouredstuff:planks_lime>, <item:minecraft:air>, <item:colouredstuff:planks_lime>],
    [<item:colouredstuff:planks_lime>, <item:colouredstuff:slab_planks_lime>, <item:colouredstuff:planks_lime>]
  ]
);
craftingTable.addShaped(
  "barrel_magenta_shaped",
  <item:exnihilocoloratus:magenta_barrel> * 1,
  [
    [<item:colouredstuff:planks_magenta>, <item:minecraft:air>, <item:colouredstuff:planks_magenta>],
    [<item:colouredstuff:planks_magenta>, <item:minecraft:air>, <item:colouredstuff:planks_magenta>],
    [<item:colouredstuff:planks_magenta>, <item:colouredstuff:slab_planks_magenta>, <item:colouredstuff:planks_magenta>]
  ]
);
craftingTable.addShaped(
  "barrel_none_shaped",
  <item:exnihilocoloratus:none_barrel> * 1,
  [
    [<item:colouredstuff:planks_none>, <item:minecraft:air>, <item:colouredstuff:planks_none>],
    [<item:colouredstuff:planks_none>, <item:minecraft:air>, <item:colouredstuff:planks_none>],
    [<item:colouredstuff:planks_none>, <item:colouredstuff:slab_planks_none>, <item:colouredstuff:planks_none>]
  ]
);
craftingTable.addShaped(
  "barrel_orange_shaped",
  <item:exnihilocoloratus:orange_barrel> * 1,
  [
    [<item:colouredstuff:planks_orange>, <item:minecraft:air>, <item:colouredstuff:planks_orange>],
    [<item:colouredstuff:planks_orange>, <item:minecraft:air>, <item:colouredstuff:planks_orange>],
    [<item:colouredstuff:planks_orange>, <item:colouredstuff:slab_planks_orange>, <item:colouredstuff:planks_orange>]
  ]
);
craftingTable.addShaped(
  "barrel_pink_shaped",
  <item:exnihilocoloratus:pink_barrel> * 1,
  [
    [<item:colouredstuff:planks_pink>, <item:minecraft:air>, <item:colouredstuff:planks_pink>],
    [<item:colouredstuff:planks_pink>, <item:minecraft:air>, <item:colouredstuff:planks_pink>],
    [<item:colouredstuff:planks_pink>, <item:colouredstuff:slab_planks_pink>, <item:colouredstuff:planks_pink>]
  ]
);
craftingTable.addShaped(
  "barrel_purple_shaped",
  <item:exnihilocoloratus:purple_barrel> * 1,
  [
    [<item:colouredstuff:planks_purple>, <item:minecraft:air>, <item:colouredstuff:planks_purple>],
    [<item:colouredstuff:planks_purple>, <item:minecraft:air>, <item:colouredstuff:planks_purple>],
    [<item:colouredstuff:planks_purple>, <item:colouredstuff:slab_planks_purple>, <item:colouredstuff:planks_purple>]
  ]
);
craftingTable.addShaped(
  "barrel_red_shaped",
  <item:exnihilocoloratus:red_barrel> * 1,
  [
    [<item:colouredstuff:planks_red>, <item:minecraft:air>, <item:colouredstuff:planks_red>],
    [<item:colouredstuff:planks_red>, <item:minecraft:air>, <item:colouredstuff:planks_red>],
    [<item:colouredstuff:planks_red>, <item:colouredstuff:slab_planks_red>, <item:colouredstuff:planks_red>]
  ]
);
craftingTable.addShaped(
  "barrel_white_shaped",
  <item:exnihilocoloratus:white_barrel> * 1,
  [
    [<item:colouredstuff:planks_white>, <item:minecraft:air>, <item:colouredstuff:planks_white>],
    [<item:colouredstuff:planks_white>, <item:minecraft:air>, <item:colouredstuff:planks_white>],
    [<item:colouredstuff:planks_white>, <item:colouredstuff:slab_planks_white>, <item:colouredstuff:planks_white>]
  ]
);
craftingTable.addShaped(
  "barrel_yellow_shaped",
  <item:exnihilocoloratus:yellow_barrel> * 1,
  [
    [<item:colouredstuff:planks_yellow>, <item:minecraft:air>, <item:colouredstuff:planks_yellow>],
    [<item:colouredstuff:planks_yellow>, <item:minecraft:air>, <item:colouredstuff:planks_yellow>],
    [<item:colouredstuff:planks_yellow>, <item:colouredstuff:slab_planks_yellow>, <item:colouredstuff:planks_yellow>]
  ]
);

// Ex Nihilo Crucible Recipes
craftingTable.addShaped(
  "crucible_black_shaped",
  <item:exnihilocoloratus:black_crucible> * 1,
  [
    [<item:colouredstuff:planks_black>, <item:minecraft:air>, <item:colouredstuff:planks_black>],
    [<item:colouredstuff:planks_black>, <item:minecraft:air>, <item:colouredstuff:planks_black>],
    [<item:colouredstuff:planks_black>, <item:colouredstuff:planks_black>, <item:colouredstuff:planks_black>]
  ]
);
craftingTable.addShaped(
  "crucible_blue_shaped",
  <item:exnihilocoloratus:blue_crucible> * 1,
  [
    [<item:colouredstuff:planks_blue>, <item:minecraft:air>, <item:colouredstuff:planks_blue>],
    [<item:colouredstuff:planks_blue>, <item:minecraft:air>, <item:colouredstuff:planks_blue>],
    [<item:colouredstuff:planks_blue>, <item:colouredstuff:planks_blue>, <item:colouredstuff:planks_blue>]
  ]
);
craftingTable.addShaped(
  "crucible_brown_shaped",
  <item:exnihilocoloratus:brown_crucible> * 1,
  [
    [<item:colouredstuff:planks_brown>, <item:minecraft:air>, <item:colouredstuff:planks_brown>],
    [<item:colouredstuff:planks_brown>, <item:minecraft:air>, <item:colouredstuff:planks_brown>],
    [<item:colouredstuff:planks_brown>, <item:colouredstuff:planks_brown>, <item:colouredstuff:planks_brown>]
  ]
);
craftingTable.addShaped(
  "crucible_cyan_shaped",
  <item:exnihilocoloratus:cyan_crucible> * 1,
  [
    [<item:colouredstuff:planks_cyan>, <item:minecraft:air>, <item:colouredstuff:planks_cyan>],
    [<item:colouredstuff:planks_cyan>, <item:minecraft:air>, <item:colouredstuff:planks_cyan>],
    [<item:colouredstuff:planks_cyan>, <item:colouredstuff:planks_cyan>, <item:colouredstuff:planks_cyan>]
  ]
);
craftingTable.addShaped(
  "crucible_gray_shaped",
  <item:exnihilocoloratus:gray_crucible> * 1,
  [
    [<item:colouredstuff:planks_gray>, <item:minecraft:air>, <item:colouredstuff:planks_gray>],
    [<item:colouredstuff:planks_gray>, <item:minecraft:air>, <item:colouredstuff:planks_gray>],
    [<item:colouredstuff:planks_gray>, <item:colouredstuff:planks_gray>, <item:colouredstuff:planks_gray>]
  ]
);
craftingTable.addShaped(
  "crucible_green_shaped",
  <item:exnihilocoloratus:green_crucible> * 1,
  [
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:minecraft:air>, <item:colouredstuff:planks_green>],
    [<item:colouredstuff:planks_green>, <item:colouredstuff:planks_green>, <item:colouredstuff:planks_green>]
  ]
);
craftingTable.addShaped(
  "crucible_light_blue_shaped",
  <item:exnihilocoloratus:light_blue_crucible> * 1,
  [
    [<item:colouredstuff:planks_light_blue>, <item:minecraft:air>, <item:colouredstuff:planks_light_blue>],
    [<item:colouredstuff:planks_light_blue>, <item:minecraft:air>, <item:colouredstuff:planks_light_blue>],
    [<item:colouredstuff:planks_light_blue>, <item:colouredstuff:planks_light_blue>, <item:colouredstuff:planks_light_blue>]
  ]
);
craftingTable.addShaped(
  "crucible_light_gray_shaped",
  <item:exnihilocoloratus:light_gray_crucible> * 1,
  [
    [<item:colouredstuff:planks_light_gray>, <item:minecraft:air>, <item:colouredstuff:planks_light_gray>],
    [<item:colouredstuff:planks_light_gray>, <item:minecraft:air>, <item:colouredstuff:planks_light_gray>],
    [<item:colouredstuff:planks_light_gray>, <item:colouredstuff:planks_light_gray>, <item:colouredstuff:planks_light_gray>]
  ]
);
craftingTable.addShaped(
  "crucible_lime_shaped",
  <item:exnihilocoloratus:lime_crucible> * 1,
  [
    [<item:colouredstuff:planks_lime>, <item:minecraft:air>, <item:colouredstuff:planks_lime>],
    [<item:colouredstuff:planks_lime>, <item:minecraft:air>, <item:colouredstuff:planks_lime>],
    [<item:colouredstuff:planks_lime>, <item:colouredstuff:planks_lime>, <item:colouredstuff:planks_lime>]
  ]
);
craftingTable.addShaped(
  "crucible_magenta_shaped",
  <item:exnihilocoloratus:magenta_crucible> * 1,
  [
    [<item:colouredstuff:planks_magenta>, <item:minecraft:air>, <item:colouredstuff:planks_magenta>],
    [<item:colouredstuff:planks_magenta>, <item:minecraft:air>, <item:colouredstuff:planks_magenta>],
    [<item:colouredstuff:planks_magenta>, <item:colouredstuff:planks_magenta>, <item:colouredstuff:planks_magenta>]
  ]
);
craftingTable.addShaped(
  "crucible_none_shaped",
  <item:exnihilocoloratus:none_crucible> * 1,
  [
    [<item:colouredstuff:planks_none>, <item:minecraft:air>, <item:colouredstuff:planks_none>],
    [<item:colouredstuff:planks_none>, <item:minecraft:air>, <item:colouredstuff:planks_none>],
    [<item:colouredstuff:planks_none>, <item:colouredstuff:planks_none>, <item:colouredstuff:planks_none>]
  ]
);
craftingTable.addShaped(
  "crucible_orange_shaped",
  <item:exnihilocoloratus:orange_crucible> * 1,
  [
    [<item:colouredstuff:planks_orange>, <item:minecraft:air>, <item:colouredstuff:planks_orange>],
    [<item:colouredstuff:planks_orange>, <item:minecraft:air>, <item:colouredstuff:planks_orange>],
    [<item:colouredstuff:planks_orange>, <item:colouredstuff:planks_orange>, <item:colouredstuff:planks_orange>]
  ]
);
craftingTable.addShaped(
  "crucible_pink_shaped",
  <item:exnihilocoloratus:pink_crucible> * 1,
  [
    [<item:colouredstuff:planks_pink>, <item:minecraft:air>, <item:colouredstuff:planks_pink>],
    [<item:colouredstuff:planks_pink>, <item:minecraft:air>, <item:colouredstuff:planks_pink>],
    [<item:colouredstuff:planks_pink>, <item:colouredstuff:planks_pink>, <item:colouredstuff:planks_pink>]
  ]
);
craftingTable.addShaped(
  "crucible_purple_shaped",
  <item:exnihilocoloratus:purple_crucible> * 1,
  [
    [<item:colouredstuff:planks_purple>, <item:minecraft:air>, <item:colouredstuff:planks_purple>],
    [<item:colouredstuff:planks_purple>, <item:minecraft:air>, <item:colouredstuff:planks_purple>],
    [<item:colouredstuff:planks_purple>, <item:colouredstuff:planks_purple>, <item:colouredstuff:planks_purple>]
  ]
);
craftingTable.addShaped(
  "crucible_red_shaped",
  <item:exnihilocoloratus:red_crucible> * 1,
  [
    [<item:colouredstuff:planks_red>, <item:minecraft:air>, <item:colouredstuff:planks_red>],
    [<item:colouredstuff:planks_red>, <item:minecraft:air>, <item:colouredstuff:planks_red>],
    [<item:colouredstuff:planks_red>, <item:colouredstuff:planks_red>, <item:colouredstuff:planks_red>]
  ]
);
craftingTable.addShaped(
  "crucible_white_shaped",
  <item:exnihilocoloratus:white_crucible> * 1,
  [
    [<item:colouredstuff:planks_white>, <item:minecraft:air>, <item:colouredstuff:planks_white>],
    [<item:colouredstuff:planks_white>, <item:minecraft:air>, <item:colouredstuff:planks_white>],
    [<item:colouredstuff:planks_white>, <item:colouredstuff:planks_white>, <item:colouredstuff:planks_white>]
  ]
);
craftingTable.addShaped(
  "crucible_yellow_shaped",
  <item:exnihilocoloratus:yellow_crucible> * 1,
  [
    [<item:colouredstuff:planks_yellow>, <item:minecraft:air>, <item:colouredstuff:planks_yellow>],
    [<item:colouredstuff:planks_yellow>, <item:minecraft:air>, <item:colouredstuff:planks_yellow>],
    [<item:colouredstuff:planks_yellow>, <item:colouredstuff:planks_yellow>, <item:colouredstuff:planks_yellow>]
  ]
);

craftingTable.addShaped(
  "unfired_crucible_recipe",
  <item:exnihilosequentia:unfired_crucible> * 1,
  [
    [<item:exnihilosequentia:porcelain_clay>, <item:minecraft:air>, <item:exnihilosequentia:porcelain_clay>],
    [<item:exnihilosequentia:porcelain_clay>, <item:minecraft:air>, <item:exnihilosequentia:porcelain_clay>],
    [<item:exnihilosequentia:porcelain_clay>, <item:exnihilosequentia:porcelain_clay>, <item:exnihilosequentia:porcelain_clay>]
  ]
);

// Thermal Dynamics pipes give 6 instead of 4
craftingTable.remove(<item:thermal:energy_duct>);
craftingTable.remove(<item:thermal:fluid_duct>);
craftingTable.remove(<item:thermal:fluid_duct_windowed>);

craftingTable.addShaped(
  "energy_duct_6x_recipe",
  <item:thermal:energy_duct> * 6,
  [
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
    [<item:thermal:lead_ingot>, <tag:items:forge:glass>, <item:thermal:lead_ingot>],
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>]
  ]
);

craftingTable.addShaped(
  "fluid_duct_6x_recipe",
  <item:thermal:fluid_duct> * 6,
  [
    [<item:thermal:bronze_ingot>, <item:thermal:lead_ingot>, <item:thermal:bronze_ingot>]
  ]
);

craftingTable.addShaped(
  "fluid_duct_windowed_6x_recipe",
  <item:thermal:fluid_duct_windowed> * 6,
  [
    [<item:thermal:bronze_ingot>, <tag:items:thermal:glass/hardened>, <item:thermal:bronze_ingot>]
  ]
);


// Industrial Foregoing Upgrades
craftingTable.addShaped(
  "industrial_foregoing_ranged_addon_0",
  <item:industrialforegoing:range_addon0>.withTag({TitaniumAugment: {Range: 0.0f}}),
  [
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
    [<item:industrialforegoing:plastic>, <item:minecraft:glass_pane>, <item:industrialforegoing:plastic>],
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]
  ]
);
craftingTable.addShaped(
  "industrial_foregoing_ranged_addon_1",
  <item:industrialforegoing:range_addon1>.withTag({TitaniumAugment: {Range: 1.0f}}),
  [
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
    [<item:industrialforegoing:plastic>, <item:minecraft:glass_pane>, <item:industrialforegoing:plastic>],
    [<item:minecraft:lapis_lazuli>, <item:minecraft:lapis_lazuli>, <item:minecraft:lapis_lazuli>]
  ]
  );
craftingTable.addShaped(
  "industrial_foregoing_ranged_addon_2",
  <item:industrialforegoing:range_addon2>.withTag({TitaniumAugment: {Range: 2.0f}}),
  [
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
    [<item:industrialforegoing:plastic>, <item:minecraft:glass_pane>, <item:industrialforegoing:plastic>],
    [<item:minecraft:bone_meal>, <item:minecraft:bone_meal>, <item:minecraft:bone_meal>]
  ]);
craftingTable.addShaped(
  "industrial_foregoing_ranged_addon_3",
  <item:industrialforegoing:range_addon3>.withTag({TitaniumAugment: {Range: 3.0f}}),
  [
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
    [<item:industrialforegoing:plastic>, <item:minecraft:glass_pane>, <item:industrialforegoing:plastic>],
    [<item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>]
  ]);
craftingTable.addShaped(
  "industrial_foregoing_ranged_addon_4",
  <item:industrialforegoing:range_addon4>.withTag({TitaniumAugment: {Range:4.0f}}),
  [
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
    [<item:industrialforegoing:plastic>, <item:minecraft:glass_pane>, <item:industrialforegoing:plastic>],
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>]
  ]);
craftingTable.addShaped(
  "industrial_foregoing_ranged_addon_5",
  <item:industrialforegoing:range_addon5>.withTag({TitaniumAugment: {Range:5.0f}}),
  [
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
    [<item:industrialforegoing:plastic>, <item:minecraft:glass_pane>, <item:industrialforegoing:plastic>],
    [<item:minecraft:gold_nugget>, <item:minecraft:gold_nugget>, <item:minecraft:gold_nugget>]
  ]);
craftingTable.addShaped(
  "industrial_foregoing_ranged_addon_6",
  <item:industrialforegoing:range_addon6>.withTag({TitaniumAugment: {Range:6.0f}}),
  [
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
    [<item:industrialforegoing:plastic>, <item:minecraft:glass_pane>, <item:industrialforegoing:plastic>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
  ]);
craftingTable.addShaped(
  "industrial_foregoing_ranged_addon_7",
  <item:industrialforegoing:range_addon7>.withTag({TitaniumAugment: {Range:7.0f}}),
  [
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
    [<item:industrialforegoing:plastic>, <item:minecraft:glass_pane>, <item:industrialforegoing:plastic>],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]
  ]);
craftingTable.addShaped(
  "industrial_foregoing_ranged_addon_8",
  <item:industrialforegoing:range_addon8>.withTag({TitaniumAugment: {Range:8.0f}}),
  [
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
    [<item:industrialforegoing:plastic>, <item:minecraft:glass_pane>, <item:industrialforegoing:plastic>],
    [<item:minecraft:quartz>, <item:minecraft:quartz>, <item:minecraft:quartz>]
  ]
);
craftingTable.addShaped(
  "industrial_foregoing_ranged_addon_9",
  <item:industrialforegoing:range_addon9>.withTag({TitaniumAugment: {Range:9.0f}}),
  [
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
    [<item:industrialforegoing:plastic>, <item:minecraft:glass_pane>, <item:industrialforegoing:plastic>],
    [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>]
  ]
);
craftingTable.addShaped(
  "industrial_foregoing_ranged_addon_10",
  <item:industrialforegoing:range_addon10>.withTag({TitaniumAugment: {Range:10.0f}}),
  [
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
    [<item:industrialforegoing:plastic>, <item:minecraft:glass_pane>, <item:industrialforegoing:plastic>],
    [<item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>, <item:minecraft:popped_chorus_fruit>]
  ]
);
craftingTable.addShaped(
  "industrial_foregoing_ranged_addon_11",
  <item:industrialforegoing:range_addon11>.withTag({TitaniumAugment: {Range:11.0f}}),
  [
    [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
    [<item:industrialforegoing:plastic>, <item:minecraft:glass_pane>, <item:industrialforegoing:plastic>],
    [<item:minecraft:emerald>, <item:minecraft:emerald>, <item:minecraft:emerald>]
  ]
  );

craftingTable.addShaped(
  "pebble_to_andesite",
  <item:minecraft:andesite>,
  [
    [<item:exnihilosequentia:andesite_pebble>, <item:exnihilosequentia:andesite_pebble>],
    [<item:exnihilosequentia:andesite_pebble>, <item:exnihilosequentia:andesite_pebble>]
  ]
  );
craftingTable.addShaped(
  "pebble_to_deepslate",
  <item:minecraft:deepslate>,
  [
    [<item:exnihilosequentia:deepslate_pebble>, <item:exnihilosequentia:deepslate_pebble>],
    [<item:exnihilosequentia:deepslate_pebble>, <item:exnihilosequentia:deepslate_pebble>]
  ]
  );
craftingTable.addShaped(
  "pebble_to_diorite",
  <item:minecraft:diorite>,
  [
    [<item:exnihilosequentia:diorite_pebble>, <item:exnihilosequentia:diorite_pebble>],
    [<item:exnihilosequentia:diorite_pebble>, <item:exnihilosequentia:diorite_pebble>]
  ]
  );
  craftingTable.addShaped(
  "pebble_to_dripstone",
  <item:minecraft:dripstone_block>,
  [
    [<item:exnihilosequentia:dripstone_pebble>, <item:exnihilosequentia:dripstone_pebble>],
    [<item:exnihilosequentia:dripstone_pebble>, <item:exnihilosequentia:dripstone_pebble>]
  ]
  );
  craftingTable.addShaped(
  "pebble_to_granite",
  <item:minecraft:granite>,
  [
    [<item:exnihilosequentia:granite_pebble>, <item:exnihilosequentia:granite_pebble>],
    [<item:exnihilosequentia:granite_pebble>, <item:exnihilosequentia:granite_pebble>]
  ]
  );

// RGB Essence to RGB Dye
  craftingTable.addShaped(
  "rgb_essence_to_dye",
  <item:sf5_things:rgb_dye> * 4,
  [
    [<item:mysticalagriculture:rgb_crop_essence>, <item:mysticalagriculture:rgb_crop_essence>],
    [<item:mysticalagriculture:rgb_crop_essence>, <item:mysticalagriculture:rgb_crop_essence>]
  ]
  );

// Wheat to Yellow Dye
  craftingTable.addShaped(
  "wheat_to_yellow_dye",
  <item:minecraft:yellow_dye> * 1,
  [
    [<item:minecraft:wheat>]
  ]
  );

// Charcoal and Coal to Black Dye
  craftingTable.addShaped(
  "charcoal_to_black_dye",
  <item:minecraft:black_dye> * 1,
  [
    [<item:minecraft:charcoal>]
  ]
  );

// Charcoal and Coal to Black Dye
  craftingTable.addShaped(
  "coal_to_black_dye",
  <item:minecraft:black_dye> * 1,
  [
    [<item:minecraft:coal>]
  ]
  );

// Applied Energistics 2 Silicon Press
  craftingTable.addShaped(
  "ae2_silicon_press",
  <item:ae2:silicon_press> * 1,
  [
    [<item:minecraft:air>, <item:ae2:certus_quartz_cutting_knife>, <item:minecraft:air>],
    [<item:ae2:sky_dust>, <item:thermal:steel_plate>, <item:ae2:sky_dust>]
  ]
  );

// Slime Head to Slime Balls
  craftingTable.addShaped(
  "slime_head_to_balls",
  <item:minecraft:slime_ball> * 4,
  [
    [<item:heads:slime_head>]
  ]
  );




// Dyeing Planks and Logs

  craftingTable.addShaped(
  "black_planks_dye",
  <item:colouredstuff:planks_black> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:black_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "blue_planks_dye",
  <item:colouredstuff:planks_blue> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:blue_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "brown_planks_dye",
  <item:colouredstuff:planks_brown> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:brown_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "cyan_planks_dye",
  <item:colouredstuff:planks_cyan> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:cyan_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "gray_planks_dye",
  <item:colouredstuff:planks_gray> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:gray_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "green_planks_dye",
  <item:colouredstuff:planks_green> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:green_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "light_blue_planks_dye",
  <item:colouredstuff:planks_light_blue> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:light_blue_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "light_gray_planks_dye",
  <item:colouredstuff:planks_light_gray> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:light_gray_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "lime_planks_dye",
  <item:colouredstuff:planks_lime> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:lime_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "magenta_planks_dye",
  <item:colouredstuff:planks_magenta> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:magenta_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "orange_planks_dye",
  <item:colouredstuff:planks_orange> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:orange_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "pink_planks_dye",
  <item:colouredstuff:planks_pink> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:pink_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "purple_planks_dye",
  <item:colouredstuff:planks_purple> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:purple_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "red_planks_dye",
  <item:colouredstuff:planks_red> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:red_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "white_planks_dye",
  <item:colouredstuff:planks_white> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:white_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );
  craftingTable.addShaped(
  "yellow_planks_dye",
  <item:colouredstuff:planks_yellow> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:minecraft:yellow_dye>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );


  craftingTable.addShaped(
  "colorless_planks_dye",
  <item:colouredstuff:planks_none> * 8,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:forge:dyes/none>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]
  ]
  );



// Logs
  craftingTable.addShaped(
  "black_logs_dye",
  <item:colouredstuff:log_black> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:black_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "blue_logs_dye",
  <item:colouredstuff:log_blue> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:blue_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "brown_logs_dye",
  <item:colouredstuff:log_brown> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:brown_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "cyan_logs_dye",
  <item:colouredstuff:log_cyan> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:cyan_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "gray_logs_dye",
  <item:colouredstuff:log_gray> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:gray_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "green_logs_dye",
  <item:colouredstuff:log_green> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:green_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "light_blue_logs_dye",
  <item:colouredstuff:log_light_blue> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:light_blue_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "light_gray_logs_dye",
  <item:colouredstuff:log_light_gray> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:light_gray_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "lime_logs_dye",
  <item:colouredstuff:log_lime> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:lime_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "magenta_logs_dye",
  <item:colouredstuff:log_magenta> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:magenta_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "orange_logs_dye",
  <item:colouredstuff:log_orange> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:orange_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "pink_logs_dye",
  <item:colouredstuff:log_pink> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:pink_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "purple_logs_dye",
  <item:colouredstuff:log_purple> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:purple_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "red_logs_dye",
  <item:colouredstuff:log_red> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:red_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "white_logs_dye",
  <item:colouredstuff:log_white> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:white_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );
  craftingTable.addShaped(
  "yellow_logs_dye",
  <item:colouredstuff:log_yellow> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:yellow_dye>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );

  craftingTable.addShaped(
  "colorless_logs_dye",
  <item:colouredstuff:log_none> * 8,
  [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:forge:dyes/none>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
  ]
  );

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.MapData;

// Watering Can Upgrades

// Tier 2
craftingTable.addShaped(
  "watering_can_inferium",
   <item:mysticalagriculture:inferium_watering_can>,
  [
    [<item:minecraft:air>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/drowned"}), <item:minecraft:air>],
    [<item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/drowned"}), <item:mysticalagriculture:watering_can>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/drowned"})],
    [<item:minecraft:air>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:normal/drowned"}), <item:minecraft:air>]
  ],
(usualOut as IItemStack, inputs as IItemStack[][]) => {

    val middle = inputs[1][1];
    if middle.tag != null {
        return usualOut.withTag(inputs[1][1].tag as IData as MapData);
    }
    return usualOut;
});

// Tier 3
  craftingTable.addShaped(
  "watering_can_prudentium",
   <item:mysticalagriculture:prudentium_watering_can> * 1,
  [
    [<item:minecraft:air>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/squid"}), <item:minecraft:air>],
    [<item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/squid"}), <item:mysticalagriculture:inferium_watering_can>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/squid"})],
    [<item:minecraft:air>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/squid"}), <item:minecraft:air>]
  ],
(usualOut as IItemStack, inputs as IItemStack[][]) => {

    val middle = inputs[1][1];
    if middle.tag != null {
        return usualOut.withTag(inputs[1][1].tag as IData as MapData);
    }
    return usualOut;
});

// Tier 4
  craftingTable.addShaped(
  "watering_can_tertium",
   <item:mysticalagriculture:tertium_watering_can> * 1,
  [
    [<item:minecraft:air>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/salmon"}), <item:minecraft:air>],
    [<item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/salmon"}), <item:mysticalagriculture:prudentium_watering_can>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/salmon"})],
    [<item:minecraft:air>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/salmon"}), <item:minecraft:air>]
  ],
(usualOut as IItemStack, inputs as IItemStack[][]) => {

    val middle = inputs[1][1];
    if middle.tag != null {
        return usualOut.withTag(inputs[1][1].tag as IData as MapData);
    }
    return usualOut;
});

  // Tier 5
  craftingTable.addShaped(
  "watering_can_imperium",
   <item:mysticalagriculture:imperium_watering_can> * 1,
  [
    [<item:minecraft:air>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/glow_squid"}), <item:minecraft:air>],
    [<item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/glow_squid"}), <item:mysticalagriculture:tertium_watering_can>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/glow_squid"})],
    [<item:minecraft:air>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/glow_squid"}), <item:minecraft:air>]
  ],
(usualOut as IItemStack, inputs as IItemStack[][]) => {

    val middle = inputs[1][1];
    if middle.tag != null {
        return usualOut.withTag(inputs[1][1].tag as IData as MapData);
    }
    return usualOut;
});

  // Tier 6
  craftingTable.addShaped(
  "watering_can_supremium",
   <item:mysticalagriculture:supremium_watering_can> * 1,
  [
    [<item:minecraft:air>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/dolphin"}), <item:minecraft:air>],
    [<item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/dolphin"}), <item:mysticalagriculture:imperium_watering_can>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/dolphin"})],
    [<item:minecraft:air>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/dolphin"}), <item:minecraft:air>]
  ],
(usualOut as IItemStack, inputs as IItemStack[][]) => {

    val middle = inputs[1][1];
    if middle.tag != null {
        return usualOut.withTag(inputs[1][1].tag as IData as MapData);
    }
    return usualOut;
});

  // Tier 7
  craftingTable.addShaped(
  "watering_can_awakened_supremium",
   <item:mysticalagriculture:awakened_supremium_watering_can> * 1,
  [
    [<item:minecraft:netherite_ingot>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/elder_guardian"}), <item:minecraft:netherite_ingot>],
    [<item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/elder_guardian"}), <item:mysticalagriculture:supremium_watering_can>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/elder_guardian"})],
    [<item:minecraft:netherite_ingot>, <item:gateways:gate_pearl>.withTag({gateway: "gateways:titan/elder_guardian"}), <item:minecraft:netherite_ingot>]
  ],
(usualOut as IItemStack, inputs as IItemStack[][]) => {

    val middle = inputs[1][1];
    if middle.tag != null {
        return usualOut.withTag(inputs[1][1].tag as IData as MapData);
    }
    return usualOut;
});

// RGB Dye to Block
  craftingTable.addShaped(
  "rgb_block_from_dye",
  <item:sf5_things:block_of_rgb_dye> ,
  [
    [<item:sf5_things:rgb_dye>, <item:sf5_things:rgb_dye>, <item:sf5_things:rgb_dye>],
    [<item:sf5_things:rgb_dye>, <item:sf5_things:rgb_dye>, <item:sf5_things:rgb_dye>],
    [<item:sf5_things:rgb_dye>, <item:sf5_things:rgb_dye>, <item:sf5_things:rgb_dye>]
  ]
);

// Vanilla Planks to Crafting Station
  craftingTable.addShaped(
  "crafting_station_from_vanilla_planks",
  <item:craftingstation:crafting_station> ,
  [
    [<tag:items:skyfactory_5:vanilla_planks>, <tag:items:skyfactory_5:vanilla_planks>],
    [<tag:items:skyfactory_5:vanilla_planks>, <tag:items:skyfactory_5:vanilla_planks>]
  ]
);

// Block of Meat
  craftingTable.addShaped(
  "block_of_meat_from_meats",
  <item:sf5_things:block_of_meat> ,
  [
    [<tag:items:skyfactory_5:raw_meats>, <tag:items:skyfactory_5:raw_meats>, <tag:items:skyfactory_5:raw_meats>],
    [<tag:items:skyfactory_5:raw_meats>, <tag:items:skyfactory_5:raw_meats>, <tag:items:skyfactory_5:raw_meats>],
    [<tag:items:skyfactory_5:raw_meats>, <tag:items:skyfactory_5:raw_meats>, <tag:items:skyfactory_5:raw_meats>]
  ]
);

// Block of Jerky
  craftingTable.addShaped(
  "block_of_jerky_from_rotten_flesh",
  <item:sf5_things:block_of_jerky> ,
  [
    [<item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>],
    [<item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>],
    [<item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>]
  ]
);

// Block of Bubble Wrap
  craftingTable.addShaped(
  "block_of_bubble_wrap_from_plastic_pufferfish",
  <item:sf5_things:block_of_bubble_wrap> ,
  [
    [<item:industrialforegoing:plastic>, <item:industrialforegoing:plastic>, <item:industrialforegoing:plastic>],
    [<item:industrialforegoing:plastic>, <item:minecraft:pufferfish>, <item:industrialforegoing:plastic>],
    [<item:industrialforegoing:plastic>, <item:industrialforegoing:plastic>, <item:industrialforegoing:plastic>]
  ]
);

// Block of Blue Cheese
  craftingTable.addShaped(
  "block_of_blue_cheese_from_cheese_and_moss",
  <item:sf5_things:block_of_blue_cheese> ,
  [
    [<item:thermal:cheese_wedge>, <item:thermal:cheese_wedge>, <item:thermal:cheese_wedge>],
    [<item:thermal:cheese_wedge>, <item:minecraft:moss_block>, <item:thermal:cheese_wedge>],
    [<item:thermal:cheese_wedge>, <item:thermal:cheese_wedge>, <item:thermal:cheese_wedge>]
  ]
);

// Block of Blooming Onion
  craftingTable.addShaped(
  "block_of_blooming_onion_from_tallow_crops",
  <item:sf5_things:block_of_blooming_onion> ,
  [
    [<item:occultism:tallow>, <item:minecraft:egg>, <item:occultism:tallow>],
    [<item:create:wheat_flour>, <item:thermal:onion_block>, <item:create:wheat_flour>],
    [<item:occultism:tallow>, <item:occultism:tallow>, <item:occultism:tallow>]
  ]
);

// Block of Grass Clippings
  craftingTable.addShaped(
  "block_of_grass_clippings_from_grass",
  <item:sf5_things:block_of_grass_clippings> ,
  [
    [<item:minecraft:grass>, <item:minecraft:grass>, <item:minecraft:grass>],
    [<item:minecraft:grass>, <item:minecraft:grass>, <item:minecraft:grass>],
    [<item:minecraft:grass>, <item:minecraft:grass>, <item:minecraft:grass>]
  ]
);



// limestone
  craftingTable.addShaped(
  "limestone_recipe",
  <item:create:limestone> ,
  [
    [<item:minecraft:air>, <tag:items:forge:dyes/lime>, <item:minecraft:air>],
    [<tag:items:forge:dyes/lime>,<item:minecraft:stone>, <tag:items:forge:dyes/lime>],
    [<item:minecraft:air>, <tag:items:forge:dyes/lime>, <item:minecraft:air>]
  ]
);

// block_of_pocket_lint
  craftingTable.addShaped(
  "block_of_pocket_lint_recipe",
  <item:sf5_things:block_of_pocket_lint> ,
  [
    [<item:immersiveengineering:hemp_fiber>, <item:minecraft:string>],
    [<item:minecraft:paper>, <item:silentgear:pebble>]
  ]
);

// block_of_ketchup
  craftingTable.addShaped(
  "block_of_ketchup_recipe",
  <item:sf5_things:block_of_ketchup> ,
  [
    [<item:minecraft:sugar>, <item:thermal:tomato>, <item:minecraft:sugar>],
    [<item:thermal:tomato>, <item:colouredstuff:water_bucket_red>, <item:thermal:tomato>],
    [<item:refurbished_furniture:sea_salt>, <item:thermal:tomato>, <item:refurbished_furniture:sea_salt>]
  ]
);

// block_of_kitty_litter
  craftingTable.addShaped(
  "block_of_kitty_litter_recipe",
  <item:sf5_things:block_of_kitty_litter>  * 4,
  [
    [<item:minecraft:air>, <item:minecraft:clay>, <item:minecraft:air>],
    [<item:minecraft:gravel>, <item:colouredstuff:water_bucket_yellow>, <item:minecraft:sand>],
    [<item:minecraft:air>, <item:exnihilosequentia:crushed_diorite>, <item:minecraft:air>]
  ]
);

// block_of_grape_hi_chew
  craftingTable.addShaped(
  "block_of_grape_hi_chew_recipe",
  <item:sf5_things:block_of_grape_hi_chew> ,
  [
    [<item:minecraft:sugar>, <item:minecraft:sugar>, <item:minecraft:sugar>],
    [<item:minecraft:sugar>, <tag:items:skyfactory_5:purple_grapes>, <item:minecraft:sugar>],
    [<item:minecraft:sugar>, <item:minecraft:sugar>, <item:minecraft:sugar>]
  ]
);

// block_of_pumpkin_spice_latte
  craftingTable.addShaped(
  "block_of_pumpkin_spice_latte_recipe",
  <item:sf5_things:block_of_pumpkin_spice_latte> ,
  [
    [<item:pumpkinspice:latte>, <item:pumpkinspice:latte>, <item:pumpkinspice:latte>],
    [<item:pumpkinspice:latte>, <item:pumpkinspice:latte>, <item:pumpkinspice:latte>],
    [<item:pumpkinspice:latte>, <item:pumpkinspice:latte>, <item:pumpkinspice:latte>]
  ]
);

// block_of_black_olives
  craftingTable.addShaped(
  "block_of_black_olives_recipe",
  <item:sf5_things:block_of_black_olives> ,
  [
    [<item:pizzacraft:olive>, <item:pizzacraft:olive>, <item:pizzacraft:olive>],
    [<item:pizzacraft:olive>, <tag:items:forge:dyes/black>, <item:pizzacraft:olive>],
    [<item:pizzacraft:olive>, <item:pizzacraft:olive>, <item:pizzacraft:olive>]
  ]
);

// Minecraft Bell
  craftingTable.addShaped(
  "shaped_bell_recipe",
  <item:minecraft:bell> ,
  [
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [<tag:items:forge:nuggets/gold>, <tag:items:forge:ingots/gold>, <tag:items:forge:nuggets/gold>],
    [<tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>]
  ]
);

// Turtle Egg
  craftingTable.addShaped(
  "turtle_egg_from_egg_and_dye",
  <item:minecraft:turtle_egg>,
  [
    [<item:minecraft:air>, <tag:items:forge:dyes/green>, <item:minecraft:air>],
    [<tag:items:forge:dyes/green>, <item:minecraft:egg>, <tag:items:forge:dyes/green>],
    [<item:minecraft:air>, <tag:items:forge:dyes/green>, <item:minecraft:air>]
  ]
);

// Baubly Heart Canisters
  craftingTable.addShaped(
  "bhc_yellow_heart",
  <item:bhc:yellow_heart>,
  [
    [<item:bhc:red_heart>, <item:bhc:red_heart>, <item:bhc:red_heart>],
    [<item:bhc:red_heart>, <item:bhc:red_heart>, <item:bhc:red_heart>],
    [<item:bhc:red_heart>, <item:bhc:red_heart>, <item:bhc:red_heart>]
  ]
);

  craftingTable.addShaped(
  "bhc_green_heart",
  <item:bhc:green_heart>,
  [
    [<item:bhc:yellow_heart>, <item:bhc:yellow_heart>, <item:bhc:yellow_heart>],
    [<item:bhc:yellow_heart>, <item:bhc:yellow_heart>, <item:bhc:yellow_heart>],
    [<item:bhc:yellow_heart>, <item:bhc:yellow_heart>, <item:bhc:yellow_heart>]
  ]
);

  craftingTable.addShaped(
  "bhc_blue_heart",
  <item:bhc:blue_heart>,
  [
    [<item:bhc:green_heart>, <item:bhc:green_heart>, <item:bhc:green_heart>],
    [<item:bhc:green_heart>, <item:bhc:green_heart>, <item:bhc:green_heart>],
    [<item:bhc:green_heart>, <item:bhc:green_heart>, <item:bhc:green_heart>]
  ]
);

// Grass Recipe
  craftingTable.addShaped(
  "dye_and_sticks_to_grass",
  <item:minecraft:grass> * 4,
  [
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <tag:items:forge:dyes/green>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>]
  ]
);

// Witherproof Glass block
  craftingTable.addShaped(
  "mys_ag_witherproof_glass",
  <item:mysticalagriculture:witherproof_glass> * 4,
  [
    [<item:minecraft:tinted_glass>, <item:bhc:wither_bone>, <item:minecraft:tinted_glass>],
    [<item:bhc:wither_bone>, <item:minecraft:tinted_glass>, <item:bhc:wither_bone>],
    [<item:minecraft:tinted_glass>, <item:bhc:wither_bone>, <item:minecraft:tinted_glass>]
  ]
);

// Witherproof Block
  craftingTable.addShaped(
  "mys_ag_witherproof_block",
  <item:mysticalagriculture:witherproof_block> * 4,
  [
    [<item:minecraft:obsidian>, <item:bhc:wither_bone>, <item:minecraft:obsidian>],
    [<item:bhc:wither_bone>, <item:minecraft:obsidian>, <item:bhc:wither_bone>],
    [<item:minecraft:obsidian>, <item:bhc:wither_bone>, <item:minecraft:obsidian>]
  ]
);

// Draconic Evolution Quality of Life recipes
  craftingTable.addShaped(
  "de_awakened_core",
  <item:draconicevolution:awakened_core> * 1,
  [
    [<item:draconicevolution:awakened_draconium_ingot>, <item:draconicevolution:wyvern_core>, <item:draconicevolution:awakened_draconium_ingot>],
    [<item:draconicevolution:wyvern_core>, <item:minecraft:nether_star>, <item:draconicevolution:wyvern_core>],
    [<item:draconicevolution:awakened_draconium_ingot>, <item:draconicevolution:wyvern_core>, <item:draconicevolution:awakened_draconium_ingot>]
  ]
);

  craftingTable.addShaped(
  "de_chaotic_core",
  <item:draconicevolution:chaotic_core> * 1,
  [
    [<item:draconicevolution:large_chaos_frag>, <item:draconicevolution:awakened_core>, <item:draconicevolution:large_chaos_frag>],
    [<item:draconicevolution:awakened_core>, <item:minecraft:nether_star>, <item:draconicevolution:awakened_core>],
    [<item:draconicevolution:large_chaos_frag>, <item:draconicevolution:awakened_core>, <item:draconicevolution:large_chaos_frag>]
  ]
);

// Glowing Dirtstone
  craftingTable.addShaped(
  "glowing_dirtstone",
  <item:sf5_things:glowing_dirtstone> * 1,
  [
    [<item:minecraft:air>, <item:minecraft:glowstone_dust>, <item:minecraft:air>],
    [<item:minecraft:glowstone_dust>, <item:minecraft:dirt>, <item:minecraft:glowstone_dust>],
    [<item:minecraft:air>, <item:minecraft:glowstone_dust>, <item:minecraft:air>]
  ]
);

// Netherwood Sapling
  craftingTable.addShaped(
  "netherwood_sapling",
  <item:silentgear:netherwood_sapling> * 1,
  [
    [<item:minecraft:red_dye>, <item:minecraft:spruce_sapling>, <item:minecraft:nether_wart>]
  ]
);

// Ars Wood to Chest Recipes
  craftingTable.addShaped(
  "archwood_logs_to_chest",
  <item:minecraft:chest> * 4,
  [
    [<tag:items:skyfactory_5:ars_default_logs>, <tag:items:skyfactory_5:ars_default_logs>, <tag:items:skyfactory_5:ars_default_logs>],
    [<tag:items:skyfactory_5:ars_default_logs>, <item:minecraft:air>, <tag:items:skyfactory_5:ars_default_logs>],
    [<tag:items:skyfactory_5:ars_default_logs>, <tag:items:skyfactory_5:ars_default_logs>, <tag:items:skyfactory_5:ars_default_logs>]
  ]
);

  craftingTable.addShaped(
  "archwood_planks_to_chest",
  <item:minecraft:chest> * 1,
  [
    [<tag:items:skyfactory_5:ars_default_planks>, <tag:items:skyfactory_5:ars_default_planks>, <tag:items:skyfactory_5:ars_default_planks>],
    [<tag:items:skyfactory_5:ars_default_planks>, <item:minecraft:air>, <tag:items:skyfactory_5:ars_default_planks>],
    [<tag:items:skyfactory_5:ars_default_planks>, <tag:items:skyfactory_5:ars_default_planks>, <tag:items:skyfactory_5:ars_default_planks>]
  ]
);

craftingTable.addShaped(
  "archwood_to_crafting_table",
  <item:minecraft:crafting_table>,
  [
    [<tag:items:skyfactory_5:ars_default_planks>, <tag:items:skyfactory_5:ars_default_planks>],
    [<tag:items:skyfactory_5:ars_default_planks>, <tag:items:skyfactory_5:ars_default_planks>]
  ]
);

// Dead Coral Blocks
  craftingTable.addShaped(
  "ash_to_dead_tube_coral_block",
  <item:minecraft:dead_tube_coral_block> * 8,
  [
    [<tag:items:forge:dyes/gray>, <item:supplementaries:ash_brick>, <tag:items:forge:dyes/gray>],
    [<item:supplementaries:ash_brick>, <tag:items:forge:dyes/gray>, <item:supplementaries:ash_brick>],
    [<tag:items:forge:dyes/gray>, <item:supplementaries:ash_brick>, <tag:items:forge:dyes/gray>]
  ]
);

  craftingTable.addShaped(
  "ash_to_dead_brain_coral_block",
  <item:minecraft:dead_brain_coral_block> * 8,
  [
    [<item:supplementaries:ash_brick>, <tag:items:forge:dyes/gray>, <item:supplementaries:ash_brick>],
    [<tag:items:forge:dyes/gray>, <item:supplementaries:ash_brick>, <tag:items:forge:dyes/gray>],
    [<item:supplementaries:ash_brick>, <tag:items:forge:dyes/gray>, <item:supplementaries:ash_brick>]
  ]
);

  craftingTable.addShaped(
  "ash_to_dead_bubble_coral_block",
  <item:minecraft:dead_bubble_coral_block> * 8,
  [
    [<tag:items:forge:dyes/gray>, <item:supplementaries:ash_brick>, <tag:items:forge:dyes/gray>],
    [<item:supplementaries:ash_brick>, <item:supplementaries:ash_brick>, <item:supplementaries:ash_brick>],
    [<tag:items:forge:dyes/gray>, <item:supplementaries:ash_brick>, <tag:items:forge:dyes/gray>]
  ]
);

  craftingTable.addShaped(
  "ash_to_dead_fire_coral_block",
  <item:minecraft:dead_fire_coral_block> * 8,
  [
    [<item:supplementaries:ash_brick>, <tag:items:forge:dyes/gray>, <item:supplementaries:ash_brick>],
    [<tag:items:forge:dyes/gray>, <tag:items:forge:dyes/gray>, <tag:items:forge:dyes/gray>],
    [<item:supplementaries:ash_brick>, <tag:items:forge:dyes/gray>, <item:supplementaries:ash_brick>]
  ]
);

  craftingTable.addShaped(
  "ash_to_dead_horn_coral_block",
  <item:minecraft:dead_horn_coral_block> * 8,
  [
    [<item:supplementaries:ash_brick>, <item:supplementaries:ash_brick>, <tag:items:forge:dyes/gray>],
    [<item:supplementaries:ash_brick>, <tag:items:forge:dyes/gray>, <item:supplementaries:ash_brick>],
    [<tag:items:forge:dyes/gray>, <item:supplementaries:ash_brick>, <item:supplementaries:ash_brick>]
  ]
);


// Gem Blocks
craftingTable.addShaped(
  "sapphire_gem_to_block",
  <item:thermal:sapphire_block> * 1,
  [
    [<tag:items:forge:gems/sapphire>, <tag:items:forge:gems/sapphire>, <tag:items:forge:gems/sapphire>],
    [<tag:items:forge:gems/sapphire>, <tag:items:forge:gems/sapphire>, <tag:items:forge:gems/sapphire>],
    [<tag:items:forge:gems/sapphire>, <tag:items:forge:gems/sapphire>, <tag:items:forge:gems/sapphire>]
  ]
);


craftingTable.addShaped(
  "ruby_gem_to_block",
  <item:thermal:ruby_block> * 1,
  [
    [<tag:items:forge:gems/ruby>, <tag:items:forge:gems/ruby>, <tag:items:forge:gems/ruby>],
    [<tag:items:forge:gems/ruby>, <tag:items:forge:gems/ruby>, <tag:items:forge:gems/ruby>],
    [<tag:items:forge:gems/ruby>, <tag:items:forge:gems/ruby>, <tag:items:forge:gems/ruby>]
  ]
);

// Bubble Blower
craftingTable.addShaped(
  "bubble_blower_with_enchant",
  <item:supplementaries:bubble_blower>.withEnchantment(<enchantment:supplementaries:stasis>, 1).withDamage(250) * 1,
  [
    [<item:minecraft:air>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>],
    [<item:minecraft:air>, <item:minecraft:iron_nugget>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:air>]
  ]
);

// AE2 Flawless Quartz
craftingTable.addShaped(
  "ae2_flawless_quartz",
  <item:ae2:flawless_budding_quartz> * 1,
  [
    [<item:ae2:quartz_cluster>, <item:ae2:quartz_block>, <item:ae2:quartz_cluster>],
    [<item:ae2:quartz_block>, <item:ae2:flawed_budding_quartz>, <item:ae2:quartz_block>],
    [<item:ae2:quartz_cluster>, <item:ae2:quartz_block>, <item:ae2:quartz_cluster>],
  ]
);

// Milk Jar with Wooden Bucket. I can put whatever I want in this comment and nothing will change or break
// in the game. In fact, I could write and entire book in here and there's nothing that you can do about it!
// So there!
// Cow milk jar thing!
craftingTable.addShaped(
  "milk_jar_wooden_bucket",
  <item:cookingforblockheads:milk_jar> * 1,
  [
    [<item:minecraft:glass>, <tag:items:minecraft:planks>, <item:minecraft:glass>],
    [<item:minecraft:glass>, <item:woodenbucket:wooden_bucket>.withTag({Fluid: {Amount: 1000, FluidName: "minecraft:milk"}, BucketContent: "minecraft:milk"}), <item:minecraft:glass>],
    [<item:minecraft:glass>, <item:minecraft:glass>, <item:minecraft:glass>],
  ]
);

// Budding Amethyst
craftingTable.addShaped(
  "budding_amethyst_shaped",
  <item:minecraft:budding_amethyst> * 1,
  [
    [<item:minecraft:amethyst_cluster>, <item:ars_nouveau:source_gem_block>, <item:minecraft:amethyst_cluster>],
    [<item:ars_nouveau:source_gem_block>, <item:minecraft:amethyst_block>, <item:ars_nouveau:source_gem_block>],
    [<item:minecraft:amethyst_cluster>, <item:ars_nouveau:source_gem_block>, <item:minecraft:amethyst_cluster>]
  ]
);

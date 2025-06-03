// Script for obtaining dye items
// Ash to Gray Dye

craftingTable.addShapeless(
  "ash_to_gray_dye",
  <item:minecraft:gray_dye>,
  [<item:supplementaries:ash>]
);
// Light Gray Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:light_gray_dye_from_gray_white_dye");
craftingTable.removeByName("minecraft:light_gray_dye_from_black_white_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Light_Gray,
  "light_gray_dye_combo_manual_only",
  <item:minecraft:light_gray_dye> * 2,
  [<item:minecraft:gray_dye>, <item:minecraft:white_dye>]
);

mods.recipestages.Recipes.addShapeless(
  Stage.Light_Gray,
  "light_gray_dye_combo2_manual_only",
  <item:minecraft:light_gray_dye> * 3,
  [<item:minecraft:black_dye>, <item:minecraft:white_dye>, <item:minecraft:white_dye>]
);

// Gray Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:gray_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Gray,
  "gray_dye_combo_manual_only",
  <item:minecraft:gray_dye> * 2,
  [<item:minecraft:white_dye>, <item:minecraft:black_dye>]
);

// Orange Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:orange_dye_from_red_yellow");

mods.recipestages.Recipes.addShapeless(
  Stage.Orange,
  "orange_dye_combo_manual_only",
  <item:minecraft:orange_dye> * 2,
  [<item:minecraft:red_dye>, <item:minecraft:yellow_dye>]
);

// Purple Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:purple_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Purple,
  "purple_dye_combo_manual_only",
  <item:minecraft:purple_dye> * 2,
  [<item:minecraft:red_dye>, <item:minecraft:blue_dye>]
);

// Magenta Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:magenta_dye_from_blue_red_pink");
craftingTable.removeByName("minecraft:magenta_dye_from_purple_and_pink");
craftingTable.removeByName("minecraft:magenta_dye_from_blue_red_white_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Magenta,
  "magenta_dye_combo_manual_only",
  <item:minecraft:magenta_dye> * 2,
  [<item:minecraft:purple_dye>, <item:minecraft:pink_dye>]
);

// Lime Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:lime_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Lime,
  "lime_dye_combo_manual_only",
  <item:minecraft:lime_dye> * 2,
  [<item:minecraft:green_dye>, <item:minecraft:white_dye>]
);

// Pink Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:pink_dye_from_red_white_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Pink,
  "pink_dye_combo_manual_only",
  <item:minecraft:pink_dye> * 2,
  [<item:minecraft:white_dye>, <item:minecraft:red_dye>]
);

// Cyan Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:cyan_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Cyan,
  "cyan_dye_combo_manual_only",
  <item:minecraft:cyan_dye> * 2,
  [<item:minecraft:blue_dye>, <item:minecraft:green_dye>]
);

// Light Blue Dye Combination
// Will need to remember to go back and readd all the flowers to dye recipes
craftingTable.removeByName("minecraft:light_blue_dye_from_blue_white_dye");

mods.recipestages.Recipes.addShapeless(
  Stage.Light_Blue,
  "light_blue_dye_combo_manual_only",
  <item:minecraft:light_blue_dye> * 2,
  [<item:minecraft:blue_dye>, <item:minecraft:white_dye>]
);

// Green Dye Combination
mods.recipestages.Recipes.addShapeless(
  Stage.Green,
  "green_dye_combo_manual_only",
  <item:minecraft:green_dye> * 2,
  [<item:minecraft:blue_dye>, <item:minecraft:yellow_dye>]
);

// Bonemeal from Dye
craftingTable.addShapeless(
  "bonemeal_from_dye",
  <item:minecraft:bone_meal> * 2,
  [<item:minecraft:white_dye>, <item:minecraft:white_dye>, <item:minecraft:white_dye>]
);

// Bone Block from Dye Blocks
craftingTable.addShapeless(
  "bone_block_from_dye_blocks",
  <item:minecraft:bone_block> * 2,
  [<item:sf5_things:block_of_white_dye>, <item:sf5_things:block_of_white_dye>, <item:sf5_things:block_of_white_dye>]
);

// Colorless Dye Block
craftingTable.addShapeless(
  "apple_to_block_of_colorless_dye",
  <item:sf5_things:block_of_colorless_dye>,
  [<item:sf5_things:none_apple>, <item:sf5_things:none_apple>, <item:sf5_things:none_apple>, <item:sf5_things:none_apple>, <item:sf5_things:none_apple>, <item:sf5_things:none_apple>, <item:sf5_things:none_apple>, <item:sf5_things:none_apple>, <item:sf5_things:none_apple>]
);

craftingTable.addShapeless(
  "block_of_colorless_dye_to_apples",
  <item:sf5_things:none_apple> * 9,
  [<item:sf5_things:block_of_colorless_dye>]
);

// RGB Dye
craftingTable.addShapeless(
  "rgb_dye_shapeless",
  <item:sf5_things:rgb_dye> * 3,
  [<item:minecraft:red_dye>, <item:minecraft:green_dye>, <item:minecraft:blue_dye>]
);

craftingTable.addShapeless(
  "rgb_dye_cmyk_shapeless",
  <item:sf5_things:rgb_dye> * 4,
  [<item:minecraft:cyan_dye>, <item:minecraft:magenta_dye>, <item:minecraft:yellow_dye>, <item:minecraft:black_dye>]
);

// Recipes for combining Blocks of Dye

mods.recipestages.Recipes.addShapeless(
  Stage.Light_Gray,
  "light_gray_dye_block_combo_manual_only",
  <item:sf5_things:block_of_light_gray_dye> * 2,
  [<item:sf5_things:block_of_gray_dye>, <item:sf5_things:block_of_white_dye>]
);

mods.recipestages.Recipes.addShapeless(
  Stage.Light_Gray,
  "light_gray_dye_block_combo2_manual_only",
  <item:sf5_things:block_of_light_gray_dye> * 3,
  [<item:sf5_things:block_of_black_dye>, <item:sf5_things:block_of_white_dye>, <item:sf5_things:block_of_white_dye>]
);

mods.recipestages.Recipes.addShapeless(
  Stage.Gray,
  "gray_dye_block_combo_manual_only",
  <item:sf5_things:block_of_gray_dye> * 2,
  [<item:sf5_things:block_of_white_dye>, <item:sf5_things:block_of_black_dye>]
);

mods.recipestages.Recipes.addShapeless(
  Stage.Orange,
  "orange_dye_block_combo_manual_only",
  <item:sf5_things:block_of_orange_dye> * 2,
  [<item:sf5_things:block_of_red_dye>, <item:sf5_things:block_of_yellow_dye>]
);

mods.recipestages.Recipes.addShapeless(
  Stage.Purple,
  "purple_dye_block_combo_manual_only",
  <item:sf5_things:block_of_purple_dye> * 2,
  [<item:sf5_things:block_of_red_dye>, <item:sf5_things:block_of_blue_dye>]
);

mods.recipestages.Recipes.addShapeless(
  Stage.Magenta,
  "magenta_dye_block_combo_manual_only",
  <item:sf5_things:block_of_magenta_dye> * 2,
  [<item:sf5_things:block_of_purple_dye>, <item:sf5_things:block_of_pink_dye>]
);

mods.recipestages.Recipes.addShapeless(
  Stage.Lime,
  "lime_dye_block_combo_manual_only",
  <item:sf5_things:block_of_lime_dye> * 2,
  [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_white_dye>]
);

mods.recipestages.Recipes.addShapeless(
  Stage.Pink,
  "pink_dye_block_combo_manual_only",
  <item:sf5_things:block_of_pink_dye> * 2,
  [<item:sf5_things:block_of_white_dye>, <item:sf5_things:block_of_red_dye>]
);

mods.recipestages.Recipes.addShapeless(
  Stage.Cyan,
  "cyan_dye_block_combo_manual_only",
  <item:sf5_things:block_of_cyan_dye> * 2,
  [<item:sf5_things:block_of_blue_dye>, <item:sf5_things:block_of_green_dye>]
);

mods.recipestages.Recipes.addShapeless(
  Stage.Light_Blue,
  "light_blue_dye_block_combo_manual_only",
  <item:sf5_things:block_of_light_blue_dye> * 2,
  [<item:sf5_things:block_of_blue_dye>, <item:sf5_things:block_of_white_dye>]
);

mods.recipestages.Recipes.addShapeless(
  Stage.Green,
  "green_dye_block_combo_manual_only",
  <item:sf5_things:block_of_green_dye> * 2,
  [<item:sf5_things:block_of_blue_dye>, <item:sf5_things:block_of_yellow_dye>]
);

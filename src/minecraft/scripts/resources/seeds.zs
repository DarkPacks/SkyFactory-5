// Script for obtaining base items/resources from dyes

// Grass seeds
craftingTable.addShapeless(
  "grass_seeds_from_dye",
  <item:exnihilosequentia:grass_seeds>,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/brown>]
);
craftingTable.addShapeless(
  "grass_seeds_from_dye_blocks",
  <item:exnihilosequentia:grass_seeds> * 9,
  [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_brown_dye>]
);

// Sugarcane
craftingTable.addShapeless(
  "sugarcane_from_dye",
  <item:minecraft:sugar_cane>,
  [<tag:items:forge:dyes/lime>, <tag:items:forge:dyes/lime>, <tag:items:forge:dyes/white>]
);
craftingTable.addShapeless(
  "sugarcane_from_dye_blocks",
  <item:minecraft:sugar_cane> * 9,
  [<item:sf5_things:block_of_lime_dye>, <item:sf5_things:block_of_lime_dye>, <item:sf5_things:block_of_white_dye>]
);

// Kelp
craftingTable.addShapeless(
  "kelp_from_dye",
  <item:minecraft:kelp> * 2,
  [<tag:items:forge:dyes/lime>, <tag:items:forge:dyes/green>, <tag:items:forge:dyes/green>]
);
craftingTable.addShapeless(
  "kelp_from_dye_blocks",
  <item:minecraft:kelp> * 18,
  [<item:sf5_things:block_of_lime_dye>, <item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_green_dye>]
);

// Vines
craftingTable.addShapeless(
  "vines_from_dye",
  <item:minecraft:vine> * 2,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/green>, <tag:items:forge:dyes/green>]
);
craftingTable.addShapeless(
  "vines_from_dye_blocks",
  <item:minecraft:vine> * 18,
  [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_green_dye>]
);

// Datura Seeds / Occultism
craftingTable.addShapeless(
  "datura_seeds_from_dye",
  <item:occultism:datura_seeds> * 2,
  [<item:minecraft:wheat_seeds>, <tag:items:forge:dyes/magenta>,<tag:items:forge:dyes/brown>]
);

// Bamboo
craftingTable.addShapeless(
  "bamboo_from_dye",
  <item:minecraft:bamboo>,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/green>, <tag:items:forge:dyes/yellow>]
);
// Not Block of Bamboo bc it's not uncraftable
craftingTable.addShapeless(
  "bamboo_from_dye_blocks",
  <item:minecraft:bamboo> * 9,
  [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_yellow_dye>]
);

// Cactus
craftingTable.addShapeless(
  "cactus_from_dye",
  <item:minecraft:cactus>,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/green>, <tag:items:forge:dyes/black>]
);
craftingTable.addShapeless(
  "cactus_from_dye_blocks",
  <item:minecraft:cactus> * 9,
  [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_black_dye>]
);

// Mycelium Spores
craftingTable.addShapeless(
  "mycelium_from_dye",
  <item:exnihilosequentia:mycelium_spores>,
  [<tag:items:forge:dyes/brown>, <tag:items:forge:dyes/gray>, <tag:items:forge:dyes/purple>]
);
craftingTable.addShapeless(
  "mycelium_from_dye_blocks",
  <item:exnihilosequentia:mycelium_spores> * 9,
  [<item:sf5_things:block_of_brown_dye>, <item:sf5_things:block_of_gray_dye>, <item:sf5_things:block_of_purple_dye>]
);

// Crimson Nylium Spores
craftingTable.addShapeless(
  "crimson_nylium_from_dye",
  <item:exnihilosequentia:crimson_nylium_spores>,
  [<tag:items:forge:dyes/red>, <tag:items:forge:dyes/red>, <tag:items:forge:dyes/brown>]
);
craftingTable.addShapeless(
  "crimson_nylium_from_dye_blocks",
  <item:exnihilosequentia:crimson_nylium_spores> * 9,
  [<item:sf5_things:block_of_red_dye>, <item:sf5_things:block_of_red_dye>, <item:sf5_things:block_of_brown_dye>]
);

// Warped Nylium Spores
craftingTable.addShapeless(
  "warped_nylium_from_dye",
  <item:exnihilosequentia:warped_nylium_spores>,
  [<tag:items:forge:dyes/cyan>, <tag:items:forge:dyes/cyan>, <tag:items:forge:dyes/red>]
);
craftingTable.addShapeless(
  "warped_nylium_from_dye_blocks",
  <item:exnihilosequentia:warped_nylium_spores> * 9,
  [<item:sf5_things:block_of_cyan_dye>, <item:sf5_things:block_of_cyan_dye>, <item:sf5_things:block_of_red_dye>]
);

// Cucumber Seeds
craftingTable.addShapeless(
  "cucumber_seeds_from_dye",
  <item:sushigocrafting:cucumber_seeds>,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/brown>, <tag:items:forge:dyes/lime>]
);
craftingTable.addShapeless(
  "cucumber_seeds_from_dye_blocks",
  <item:sushigocrafting:cucumber_seeds> * 9,
  [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_brown_dye>, <item:sf5_things:block_of_lime_dye>]
);

// Corn Seeds
craftingTable.addShapeless(
  "corn_seeds_from_dye",
  <item:thermal:corn_seeds>,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/yellow>, <tag:items:forge:dyes/yellow>]
);
craftingTable.addShapeless(
  "corn_seeds_from_dye_blocks",
  <item:thermal:corn_seeds> * 9,
  [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_yellow_dye>, <item:sf5_things:block_of_yellow_dye>]
);

// Hemp Seeds
craftingTable.addShapeless(
  "hemp_seeds_from_dye",
  <item:immersiveengineering:seed>,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/green>, <tag:items:forge:dyes/orange>]
);
craftingTable.addShapeless(
  "hemp_seeds_from_dye_block",
  <item:immersiveengineering:seed> * 9,
  [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_orange_dye>]
);

// Onion Seeds
craftingTable.addShapeless(
  "onion_seeds_from_dye",
  <item:thermal:onion_seeds>,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/brown>, <tag:items:forge:dyes/black>]
);
craftingTable.addShapeless(
  "onion_seeds_from_dye_blocks",
  <item:thermal:onion_seeds> * 9,
  [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_brown_dye>, <item:sf5_things:block_of_black_dye>]
);

// Bell Pepper Seeds
craftingTable.addShapeless(
  "bell_pepper_seeds_from_dye",
  <item:thermal:bell_pepper_seeds>,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/yellow>, <tag:items:forge:dyes/red>]
);
craftingTable.addShapeless(
  "bell_pepper_seeds_from_dye_blocks",
  <item:thermal:bell_pepper_seeds> * 9,
  [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_yellow_dye>, <item:sf5_things:block_of_red_dye>]
);

// Eggplant Seeds
craftingTable.addShapeless(
  "eggplant_seeds_from_dye",
  <item:thermal:eggplant_seeds>,
  [<tag:items:forge:dyes/brown>, <tag:items:forge:dyes/yellow>, <tag:items:forge:dyes/orange>]
);
craftingTable.addShapeless(
  "eggplant_seeds_from_dye_blocks",
  <item:thermal:eggplant_seeds> * 9,
  [<item:sf5_things:block_of_brown_dye>, <item:sf5_things:block_of_yellow_dye>, <item:sf5_things:block_of_orange_dye>]
);

// Tomato Seeds
craftingTable.addShapeless(
  "tomato_seeds_from_dye",
  <item:thermal:tomato_seeds>,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/green>, <tag:items:forge:dyes/red>]
);
craftingTable.addShapeless(
  "tomato_seeds_from_dye_blocks",
  <item:thermal:tomato_seeds> * 9,
  [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_red_dye>]
);

// Flax Seeds
craftingTable.addShapeless(
  "flax_seeds_from_dye",
  <item:thermal:flax_seeds>,
  [<tag:items:forge:dyes/brown>, <tag:items:forge:dyes/brown>, <tag:items:forge:dyes/green>]
);
craftingTable.addShapeless(
  "flax_seeds_from_dye_blocks",
  <item:thermal:flax_seeds> * 9,
  [<item:sf5_things:block_of_brown_dye>, <item:sf5_things:block_of_brown_dye>, <item:sf5_things:block_of_green_dye>]
);

// Sadiroot Seeds
craftingTable.addShapeless(
  "sadiroot_seeds_from_dye",
  <item:thermal:sadiroot_seeds>,
  [<tag:items:forge:dyes/cyan>, <tag:items:forge:dyes/cyan>, <tag:items:forge:dyes/light_blue>]
);
craftingTable.addShapeless(
  "sadiroot_seeds_from_dye_blocks",
  <item:thermal:sadiroot_seeds> * 9,
  [<item:sf5_things:block_of_cyan_dye>, <item:sf5_things:block_of_cyan_dye>, <item:sf5_things:block_of_light_blue_dye>]
);

// Pumpkin Seeds
craftingTable.addShapeless(
  "pumpkin_seeds_from_dye",
  <item:minecraft:pumpkin_seeds>,
  [<tag:items:forge:dyes/yellow>, <tag:items:forge:dyes/yellow>, <tag:items:forge:dyes/orange>]
);
craftingTable.addShapeless(
  "pumpkin_seeds_from_dye_blocks",
  <item:minecraft:pumpkin_seeds> * 9,
  [<item:sf5_things:block_of_yellow_dye>, <item:sf5_things:block_of_yellow_dye>, <item:sf5_things:block_of_orange_dye>]
);

// Amaranth Seeds
craftingTable.addShapeless(
  "amaranth_seeds_from_dye",
  <item:thermal:amaranth_seeds>,
  [<tag:items:forge:dyes/brown>, <tag:items:forge:dyes/brown>, <tag:items:forge:dyes/red>]
);
craftingTable.addShapeless(
  "amaranth_seeds_from_dye_blocks",
  <item:thermal:amaranth_seeds> * 9,
  [<item:sf5_things:block_of_brown_dye>, <item:sf5_things:block_of_brown_dye>, <item:sf5_things:block_of_red_dye>]
);

// Strawberry Seeds
craftingTable.addShapeless(
  "strawberry_seeds_from_dye",
  <item:thermal:strawberry_seeds>,
  [<tag:items:forge:dyes/red>, <tag:items:forge:dyes/red>, <tag:items:forge:dyes/green>]
);
craftingTable.addShapeless(
  "strawberry_seeds_from_dye_blocks",
  <item:thermal:strawberry_seeds> * 9,
  [<item:sf5_things:block_of_red_dye>, <item:sf5_things:block_of_red_dye>, <item:sf5_things:block_of_green_dye>]
);

// Barley Seeds
craftingTable.addShapeless(
  "barley_seeds_from_dye",
  <item:thermal:barley_seeds>,
  [<tag:items:forge:dyes/brown>, <tag:items:forge:dyes/brown>, <tag:items:forge:dyes/yellow>]
);
craftingTable.addShapeless(
  "barley_seeds_from_dye_blocks",
  <item:thermal:barley_seeds> * 9,
  [<item:sf5_things:block_of_brown_dye>, <item:sf5_things:block_of_brown_dye>, <item:sf5_things:block_of_yellow_dye>]
);

// Radish Seeds
craftingTable.addShapeless(
  "radish_seeds_from_dye",
  <item:thermal:radish_seeds>,
  [<tag:items:forge:dyes/red>, <tag:items:forge:dyes/lime>, <tag:items:forge:dyes/brown>]
);
craftingTable.addShapeless(
  "radish_seeds_from_dye_blocks",
  <item:thermal:radish_seeds> * 9,
  [<item:sf5_things:block_of_red_dye>, <item:sf5_things:block_of_lime_dye>, <item:sf5_things:block_of_brown_dye>]
);

// Rice Seeds
craftingTable.addShapeless(
  "rice_seeds_from_dye",
  <item:thermal:rice_seeds>,
  [<tag:items:forge:dyes/white>, <tag:items:forge:dyes/white>, <tag:items:forge:dyes/yellow>]
);
craftingTable.addShapeless(
  "rice_seeds_from_dye_blocks",
  <item:thermal:rice_seeds> * 9,
  [<item:sf5_things:block_of_white_dye>, <item:sf5_things:block_of_white_dye>, <item:sf5_things:block_of_yellow_dye>]
);

// Spinach Seeds
craftingTable.addShapeless(
  "spinach_seeds_from_dye",
  <item:thermal:spinach_seeds>,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/green>, <tag:items:forge:dyes/gray>]
);
craftingTable.addShapeless(
  "spinach_seeds_from_dye_blocks",
  <item:thermal:spinach_seeds> * 9,
  [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_gray_dye>]
);

// Green Bean Seeds
craftingTable.addShapeless(
  "green_bean_seeds_from_dye",
  <item:thermal:green_bean_seeds>,
  [<tag:items:forge:dyes/green>, <tag:items:forge:dyes/green>, <tag:items:forge:dyes/light_gray>]
);
craftingTable.addShapeless(
  "green_bean_seeds_from_dye_blocks",
  <item:thermal:green_bean_seeds> * 9,
  [<item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_green_dye>, <item:sf5_things:block_of_light_gray_dye>]
);

// Peanut Seeds
craftingTable.addShapeless(
  "peanut_seeds_from_dye",
  <item:thermal:peanut_seeds>,
  [<tag:items:forge:dyes/yellow>, <tag:items:forge:dyes/yellow>, <tag:items:forge:dyes/red>]
);
craftingTable.addShapeless(
  "peanut_seeds_from_dye_blocks",
  <item:thermal:peanut_seeds> * 9,
  [<item:sf5_things:block_of_yellow_dye>, <item:sf5_things:block_of_yellow_dye>, <item:sf5_things:block_of_red_dye>]
);

// Glow Lichen
craftingTable.addShapeless(
  "glow_lichen_from_dye",
  <item:minecraft:glow_lichen> * 2,
  [<tag:items:forge:dyes/cyan>, <tag:items:forge:dyes/light_gray>, <tag:items:forge:dyes/light_gray>]
);
craftingTable.addShapeless(
  "glow_lichen_from_dye_blocks",
  <item:minecraft:glow_lichen> * 18,
  [<item:sf5_things:block_of_cyan_dye>, <item:sf5_things:block_of_light_gray_dye>, <item:sf5_things:block_of_light_gray_dye>]
);

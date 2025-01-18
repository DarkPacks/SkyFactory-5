
// Smelting Recipes

// Smelts Slimeballs to Dry Rubber
furnace.addRecipe(
  "slime_to_dry_rubber_smelting",
  <item:industrialforegoing:tinydryrubber>,
  <tag:items:forge:slimeballs>,
  0.15,
  100
);

// Smelts Seeds to Black Seed
furnace.addRecipe(
  "color_seeds_to_black_seed_smelting",
  <item:mysticalagriculture:black_crop_seeds>,
  <tag:items:skyfactory_5:color_seeds>,
  0.15,
  100
);

// Block of Meat to Charcoal
furnace.addRecipe(
  "block_of_meat_to_charcoal",
  <item:thermal:charcoal_block>,
  <item:sf5_things:block_of_meat>,
  0.15,
  100
);

// Flux Networks Flux Dust
furnace.addRecipe(
  "redstone_to_flux_dust",
  <item:fluxnetworks:flux_dust>,
  <item:minecraft:redstone>,
  0.15,
  100
);

// Sea Salt
furnace.addRecipe(
  "sea_salt_from_wooden_bucket",
  <item:refurbished_furniture:sea_salt> * 4,
  <item:woodenbucket:wooden_bucket>.withTag({Fluid: {Amount: 1000, FluidName: "minecraft:water"}}),
  0.15,
  100
);

furnace.addRecipe(
  "sea_salt_from_water_bottle",
  <item:refurbished_furniture:sea_salt> * 2,
  <item:minecraft:potion>.withTag({Potion: "minecraft:water"}),
  0.15,
  100
);

// Gem Dust to Gem
furnace.addRecipe(
  "sapphire_gem_from_dust",
  <item:thermal:sapphire>,
  <item:thermal:sapphire_dust>,
  0.15,
  100
);

furnace.addRecipe(
  "ruby_gem_from_dust",
  <item:thermal:ruby>,
  <item:thermal:ruby_dust>,
  0.15,
  100
);

// Makes items burnable
<item:minecraft:black_dye>.burnTime = 400;

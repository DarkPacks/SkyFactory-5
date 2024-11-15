#loader tags

import crafttweaker.api.resource.ResourceLocation;

val items as ResourceLocation[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <resource:colouredstuff:brick_white>,
  <resource:colouredstuff:chiseled_sandstone_white>,
  <resource:colouredstuff:chiseled_stone_bricks_white>,
  <resource:colouredstuff:cobblestone_white>,
  <resource:colouredstuff:crafting_table_white>,
  <resource:colouredstuff:cut_sandstone_white>,
  <resource:colouredstuff:dirt_white>,
  <resource:colouredstuff:farmland_white>,
  <resource:colouredstuff:fence_planks_white>,
  <resource:colouredstuff:gate_planks_white>,
  <resource:colouredstuff:leaves_white>,
  <resource:colouredstuff:log_stripped_white>,
  <resource:colouredstuff:log_white>,
  <resource:colouredstuff:path_white>,
  <resource:colouredstuff:planks_white>,
  <resource:colouredstuff:sandstone_white>,
  <resource:colouredstuff:sapling_white>,
  <resource:colouredstuff:slab_brick_white>,
  <resource:colouredstuff:slab_cobblestone_white>,
  <resource:colouredstuff:slab_planks_white>,
  <resource:colouredstuff:slab_sandstone_white>,
  <resource:colouredstuff:slab_stone_bricks_white>,
  <resource:colouredstuff:slab_stone_white>,
  <resource:colouredstuff:smooth_sandstone_white>,
  <resource:colouredstuff:stairs_brick_white>,
  <resource:colouredstuff:stairs_cobblestone_white>,
  <resource:colouredstuff:stairs_planks_white>,
  <resource:colouredstuff:stairs_sandstone_white>,
  <resource:colouredstuff:stairs_stone_bricks_white>,
  <resource:colouredstuff:stairs_stone_white>,
  <resource:colouredstuff:stone_bricks_white>,
  <resource:colouredstuff:stone_white>,
  <resource:colouredstuff:wall_brick_white>,
  <resource:colouredstuff:wall_cobblestone_white>,
  <resource:colouredstuff:wall_planks_white>,
  <resource:colouredstuff:wall_sandstone_white>,
  <resource:colouredstuff:wall_stone_bricks_white>,
  <resource:colouredstuff:wall_stone_white>,
  <resource:energeticsheep:white_energetic_wool>,
  <resource:forcecraft:force_brick_white>,
  <resource:forcecraft:force_brick_white_slab>,
  <resource:forcecraft:force_brick_white_stairs>,
  <resource:forcecraft:force_white_torch>,
  <resource:forcecraft:white_force_furnace>,
  <resource:minecraft:bone>,
  <resource:minecraft:bone_block>,
  <resource:minecraft:bone_meal>,
  <resource:minecraft:string>,
  <resource:minecraft:white_banner>,
  <resource:minecraft:white_bed>,
  <resource:minecraft:white_candle>,
  <resource:minecraft:white_carpet>,
  <resource:minecraft:white_concrete>,
  <resource:minecraft:white_concrete_powder>,
  <resource:minecraft:white_dye>,
  <resource:minecraft:white_glazed_terracotta>,
  <resource:minecraft:white_shulker_box>,
  <resource:minecraft:white_stained_glass>,
  <resource:minecraft:white_stained_glass_pane>,
  <resource:minecraft:white_terracotta>,
  <resource:minecraft:white_tulip>,
  <resource:minecraft:white_wool>,
  <resource:mysticalagriculture:white_crop_essence>,
  <resource:mysticalagriculture:white_crop_seeds>,
  <resource:sf5_things:block_of_white_dye>,
  <resource:sf5_things:white_apple>,
  <resource:supplementaries:candle_holder_white>,
  <resource:supplementaries:colouredstuff/sign_post_white>,
  <resource:supplementaries:flag_white>,
  <resource:supplementaries:present_white>,
  <resource:supplementaries:trapped_present_white>,
  <resource:tinted_torches:white_torch>,
  <resource:tintedcampfires:white_campfire>

  // GENERATOR END
];

for item in items {
  <tag:items:skyfactory_5:colored_items>.addId(item);
  <tag:items:skyfactory_5:colored_items/white>.addId(item);
}

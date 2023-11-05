import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.Lime];
val textColor = 0xFFFFFF;

val items as IItemStack[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <item:colouredstuff:brick_lime>,
  <item:colouredstuff:chiseled_sandstone_lime>,
  <item:colouredstuff:chiseled_stone_bricks_lime>,
  <item:colouredstuff:cobblestone_lime>,
  <item:colouredstuff:crafting_table_lime>,
  <item:colouredstuff:cut_sandstone_lime>,
  <item:colouredstuff:dirt_lime>,
  <item:colouredstuff:farmland_lime>,
  <item:colouredstuff:fence_planks_lime>,
  <item:colouredstuff:gate_planks_lime>,
  <item:colouredstuff:leaves_lime>,
  <item:colouredstuff:log_lime>,
  <item:colouredstuff:log_stripped_lime>,
  <item:colouredstuff:path_lime>,
  <item:colouredstuff:planks_lime>,
  <item:colouredstuff:sandstone_lime>,
  <item:colouredstuff:sapling_lime>,
  <item:colouredstuff:slab_brick_lime>,
  <item:colouredstuff:slab_cobblestone_lime>,
  <item:colouredstuff:slab_planks_lime>,
  <item:colouredstuff:slab_sandstone_lime>,
  <item:colouredstuff:slab_stone_bricks_lime>,
  <item:colouredstuff:slab_stone_lime>,
  <item:colouredstuff:smooth_sandstone_lime>,
  <item:colouredstuff:stairs_brick_lime>,
  <item:colouredstuff:stairs_cobblestone_lime>,
  <item:colouredstuff:stairs_planks_lime>,
  <item:colouredstuff:stairs_sandstone_lime>,
  <item:colouredstuff:stairs_stone_bricks_lime>,
  <item:colouredstuff:stairs_stone_lime>,
  <item:colouredstuff:stone_bricks_lime>,
  <item:colouredstuff:stone_lime>,
  <item:colouredstuff:wall_brick_lime>,
  <item:colouredstuff:wall_cobblestone_lime>,
  <item:colouredstuff:wall_planks_lime>,
  <item:colouredstuff:wall_sandstone_lime>,
  <item:colouredstuff:wall_stone_bricks_lime>,
  <item:colouredstuff:wall_stone_lime>,
  <item:create:cut_limestone_brick_slab>,
  <item:create:cut_limestone_brick_stairs>,
  <item:create:cut_limestone_brick_wall>,
  <item:create:cut_limestone_bricks>,
  <item:create:cut_limestone_slab>,
  <item:create:cut_limestone_stairs>,
  <item:create:cut_limestone_wall>,
  <item:create:cut_limestone>,
  <item:create:layered_limestone>,
  <item:create:limestone_pillar>,
  <item:create:limestone>,
  <item:create:polished_cut_limestone_slab>,
  <item:create:polished_cut_limestone_stairs>,
  <item:create:polished_cut_limestone_wall>,
  <item:create:polished_cut_limestone>,
  <item:create:small_limestone_brick_slab>,
  <item:create:small_limestone_brick_stairs>,
  <item:create:small_limestone_brick_wall>,
  <item:create:small_limestone_bricks>,
  <item:energeticsheep:lime_energetic_wool>,
  <item:forcecraft:force_brick_lime_slab>,
  <item:forcecraft:force_brick_lime_stairs>,
  <item:forcecraft:force_brick_lime>,
  <item:forcecraft:force_lime_torch>,
  <item:forcecraft:lime_force_furnace>,
  <item:minecraft:kelp>,
  <item:minecraft:lime_banner>,
  <item:minecraft:lime_bed>,
  <item:minecraft:lime_candle>,
  <item:minecraft:lime_carpet>,
  <item:minecraft:lime_concrete_powder>,
  <item:minecraft:lime_concrete>,
  <item:minecraft:lime_dye>,
  <item:minecraft:lime_glazed_terracotta>,
  <item:minecraft:lime_shulker_box>,
  <item:minecraft:lime_stained_glass_pane>,
  <item:minecraft:lime_stained_glass>,
  <item:minecraft:lime_terracotta>,
  <item:minecraft:lime_wool>,
  <item:minecraft:scute>,
  <item:minecraft:seagrass>,
  <item:minecraft:slime_ball>,
  <item:minecraft:slime_ball>,
  <item:minecraft:slime_block>,
  <item:minecraft:slime_block>,
  <item:minecraft:turtle_helmet>,
  <item:scarecrowsterritory:lime_scarecrow>,
  <item:sf5_things:lime_apple>,
  <item:sf5_things:lime_stick>,
  <item:sf5stuff:composting_bin_lime>,
  <item:sf5stuff:crucible_lime>,
  <item:supplementaries:candle_holder_lime>,
  <item:supplementaries:colouredstuff/sign_post_lime>,
  <item:supplementaries:flag_lime>,
  <item:supplementaries:present_lime>,
  <item:supplementaries:trapped_present_lime>,
  <item:tinted_torches:lime_torch>

  // GENERATOR END
];

for item in items {
  item.addTooltip(Component.literal(color.getName()).withStyle(style => style.withColor(textColor)));
}

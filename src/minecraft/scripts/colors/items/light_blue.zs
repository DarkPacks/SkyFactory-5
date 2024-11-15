import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.LightBlue];
val textColor = 0xFFFFFF;

val items as IItemStack[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <item:ae2:light_blue_paint_ball>,
  <item:colouredstuff:brick_light_blue>,
  <item:colouredstuff:chiseled_sandstone_light_blue>,
  <item:colouredstuff:chiseled_stone_bricks_light_blue>,
  <item:colouredstuff:cobblestone_light_blue>,
  <item:colouredstuff:crafting_table_light_blue>,
  <item:colouredstuff:cut_sandstone_light_blue>,
  <item:colouredstuff:dirt_light_blue>,
  <item:colouredstuff:farmland_light_blue>,
  <item:colouredstuff:fence_planks_light_blue>,
  <item:colouredstuff:gate_planks_light_blue>,
  <item:colouredstuff:leaves_light_blue>,
  <item:colouredstuff:log_light_blue>,
  <item:colouredstuff:log_stripped_light_blue>,
  <item:colouredstuff:path_light_blue>,
  <item:colouredstuff:planks_light_blue>,
  <item:colouredstuff:sandstone_light_blue>,
  <item:colouredstuff:sapling_light_blue>,
  <item:colouredstuff:slab_brick_light_blue>,
  <item:colouredstuff:slab_cobblestone_light_blue>,
  <item:colouredstuff:slab_planks_light_blue>,
  <item:colouredstuff:slab_sandstone_light_blue>,
  <item:colouredstuff:slab_stone_bricks_light_blue>,
  <item:colouredstuff:slab_stone_light_blue>,
  <item:colouredstuff:smooth_sandstone_light_blue>,
  <item:colouredstuff:stairs_brick_light_blue>,
  <item:colouredstuff:stairs_cobblestone_light_blue>,
  <item:colouredstuff:stairs_planks_light_blue>,
  <item:colouredstuff:stairs_sandstone_light_blue>,
  <item:colouredstuff:stairs_stone_bricks_light_blue>,
  <item:colouredstuff:stairs_stone_light_blue>,
  <item:colouredstuff:stone_bricks_light_blue>,
  <item:colouredstuff:stone_light_blue>,
  <item:colouredstuff:wall_brick_light_blue>,
  <item:colouredstuff:wall_cobblestone_light_blue>,
  <item:colouredstuff:wall_planks_light_blue>,
  <item:colouredstuff:wall_sandstone_light_blue>,
  <item:colouredstuff:wall_stone_bricks_light_blue>,
  <item:colouredstuff:wall_stone_light_blue>,
  <item:energeticsheep:light_blue_energetic_wool>,
  <item:forcecraft:force_brick_light_blue>,
  <item:forcecraft:force_brick_light_blue_slab>,
  <item:forcecraft:force_brick_light_blue_stairs>,
  <item:forcecraft:force_light_blue_torch>,
  <item:forcecraft:light_blue_force_furnace>,
  <item:minecraft:clay>,
  <item:minecraft:clay_ball>,
  <item:minecraft:light_blue_banner>,
  <item:minecraft:light_blue_bed>,
  <item:minecraft:light_blue_candle>,
  <item:minecraft:light_blue_carpet>,
  <item:minecraft:light_blue_concrete>,
  <item:minecraft:light_blue_concrete_powder>,
  <item:minecraft:light_blue_dye>,
  <item:minecraft:light_blue_glazed_terracotta>,
  <item:minecraft:light_blue_shulker_box>,
  <item:minecraft:light_blue_stained_glass>,
  <item:minecraft:light_blue_stained_glass_pane>,
  <item:minecraft:light_blue_terracotta>,
  <item:minecraft:light_blue_wool>,
  <item:mysticalagriculture:light_blue_crop_essence>,
  <item:mysticalagriculture:light_blue_crop_seeds>,
  <item:mysticalagriculture:prosperity_block>,
  <item:mysticalagriculture:prosperity_gemstone>,
  <item:mysticalagriculture:prosperity_gemstone_block>,
  <item:mysticalagriculture:prosperity_ingot>,
  <item:mysticalagriculture:prosperity_ingot_block>,
  <item:mysticalagriculture:prosperity_nugget>,
  <item:mysticalagriculture:prosperity_seed_base>,
  <item:mysticalagriculture:prosperity_shard>,
  <item:sf5_things:light_blue_apple>,
  <item:supplementaries:candle_holder_light_blue>,
  <item:supplementaries:colouredstuff/sign_post_light_blue>,
  <item:supplementaries:flag_light_blue>,
  <item:supplementaries:present_light_blue>,
  <item:supplementaries:trapped_present_light_blue>,
  <item:tinted_torches:light_blue_torch>

  // GENERATOR END
];

for item in items {
  item.addTooltip(Component.literal(color.getName()).withStyle(style => style.withColor(textColor)));
}

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.Green];
val textColor = 0xFFFFFF;

val items as IItemStack[] = [
  // GENERATOR START
  // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

  <item:ae2:green_paint_ball>,
  <item:ars_nouveau:green_archwood_sapling>,
  <item:bhc:green_heart>,
  <item:bhc:green_heart_canister>,
  <item:bhc:green_heart_melted>,
  <item:bhc:green_heart_patch>,
  <item:colouredstuff:brick_green>,
  <item:colouredstuff:chiseled_sandstone_green>,
  <item:colouredstuff:chiseled_stone_bricks_green>,
  <item:colouredstuff:cobblestone_green>,
  <item:colouredstuff:crafting_table_green>,
  <item:colouredstuff:cut_sandstone_green>,
  <item:colouredstuff:dirt_green>,
  <item:colouredstuff:farmland_green>,
  <item:colouredstuff:fence_planks_green>,
  <item:colouredstuff:gate_planks_green>,
  <item:colouredstuff:leaves_green>,
  <item:colouredstuff:log_green>,
  <item:colouredstuff:log_stripped_green>,
  <item:colouredstuff:path_green>,
  <item:colouredstuff:planks_green>,
  <item:colouredstuff:sandstone_green>,
  <item:colouredstuff:sapling_green>,
  <item:colouredstuff:slab_brick_green>,
  <item:colouredstuff:slab_cobblestone_green>,
  <item:colouredstuff:slab_planks_green>,
  <item:colouredstuff:slab_sandstone_green>,
  <item:colouredstuff:slab_stone_bricks_green>,
  <item:colouredstuff:slab_stone_green>,
  <item:colouredstuff:smooth_sandstone_green>,
  <item:colouredstuff:stairs_brick_green>,
  <item:colouredstuff:stairs_cobblestone_green>,
  <item:colouredstuff:stairs_planks_green>,
  <item:colouredstuff:stairs_sandstone_green>,
  <item:colouredstuff:stairs_stone_bricks_green>,
  <item:colouredstuff:stairs_stone_green>,
  <item:colouredstuff:stone_bricks_green>,
  <item:colouredstuff:stone_green>,
  <item:colouredstuff:wall_brick_green>,
  <item:colouredstuff:wall_cobblestone_green>,
  <item:colouredstuff:wall_planks_green>,
  <item:colouredstuff:wall_sandstone_green>,
  <item:colouredstuff:wall_stone_bricks_green>,
  <item:colouredstuff:wall_stone_green>,
  <item:cookingforblockheads:green_kitchen_floor>,
  <item:create:green_seat>,
  <item:create:green_toolbox>,
  <item:create:green_valve_handle>,
  <item:enderio:organic_green_dye>,
  <item:enderio:plant_matter_green>,
  <item:energeticsheep:green_energetic_wool>,
  <item:forcecraft:force_brick_green>,
  <item:forcecraft:force_brick_green_slab>,
  <item:forcecraft:force_brick_green_stairs>,
  <item:forcecraft:force_green_torch>,
  <item:forcecraft:green_chu_jelly>,
  <item:forcecraft:green_force_furnace>,
  <item:glow_sticks:glow_stick_green>,
  <item:immersiveengineering:sheetmetal_colored_green>,
  <item:immersiveengineering:slab_sheetmetal_colored_green>,
  <item:industrialforegoing:laser_lens13>,
  <item:interiors:green_chair>,
  <item:minecraft:bamboo>,
  <item:minecraft:green_banner>,
  <item:minecraft:green_bed>,
  <item:minecraft:green_candle>,
  <item:minecraft:green_carpet>,
  <item:minecraft:green_concrete>,
  <item:minecraft:green_concrete_powder>,
  <item:minecraft:green_dye>,
  <item:minecraft:green_glazed_terracotta>,
  <item:minecraft:green_shulker_box>,
  <item:minecraft:green_stained_glass>,
  <item:minecraft:green_stained_glass_pane>,
  <item:minecraft:green_terracotta>,
  <item:minecraft:green_wool>,
  <item:minecraft:sugar_cane>,
  <item:mysticalagriculture:green_crop_essence>,
  <item:mysticalagriculture:green_crop_seeds>,
  <item:mysticalagriculture:prudentium_essence>,
  <item:sf5_things:block_of_green_dye>,
  <item:sf5_things:green_apple>,
  <item:silentgear:green_fluffy_block>,
  <item:supplementaries:candle_holder_green>,
  <item:supplementaries:colouredstuff/sign_post_green>,
  <item:supplementaries:flag_green>,
  <item:supplementaries:luphieclutteredmod/sign_post_luphie_green>,
  <item:supplementaries:present_green>,
  <item:supplementaries:sconce_green>,
  <item:supplementaries:trapped_present_green>,
  <item:sushigocrafting:avocado>,
  <item:sushigocrafting:avocado_leaves>,
  <item:sushigocrafting:avocado_leaves_logged>,
  <item:sushigocrafting:avocado_sapling>,
  <item:sushigocrafting:cucumber>,
  <item:sushigocrafting:cucumber_slices>,
  <item:sushigocrafting:nori_sheets>,
  <item:sushigocrafting:soy_bean>,
  <item:sushigocrafting:wasabi_root>,
  <item:tinted_torches:green_torch>,
  <item:tintedcampfires:green_campfire>

  // GENERATOR END
];

for item in items {
  item.addTooltip(Component.literal(color.getName()).withStyle(style => style.withColor(textColor)));
}

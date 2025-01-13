ContentBuilder.factory
  .addRecipeGenerator("_dye_water_ie_bottling", (baseName, args) => {
    val dyeBlockItem = args.getItem(ColoredItem.DyeBlock);
    val coloredWaterFluidTag = args.getFluidTag(ColoredFluidTag.Water);

    if dyeBlockItem == null || coloredWaterFluidTag == null {
      return;
    }

    <recipetype:immersiveengineering:bottling_machine>.addRecipe(
      args.color.getResourceName() + baseName,
      [<tag:items:forge:sand>],
      coloredWaterFluidTag * 1000,
      [dyeBlockItem]
    );
  })
  .addRecipeGenerator("_dye_ie_crusher", (baseName, args) => {
    val dye = args.getItem(ColoredItem.Dye);
    val coloredProcessingItemTag = args.getItemTag(ColoredItemTag.ColoredProcessingItem);

    if dye == null || coloredProcessingItemTag == null {
      return;
    }

    <recipetype:immersiveengineering:crusher>.addRecipe(
      args.color.getResourceName() + baseName,
      coloredProcessingItemTag.asIIngredient(),
      500,
      dye,
      dye % 50,
      dye % 15
    );
  })

  .addRecipeGenerator("_dye_ie_mixer", (baseName, args) => {
  val dye = args.getItem(ColoredItem.Dye);
  val coloredProcessingItemTag = args.getItemTag(ColoredItemTag.ColoredProcessingItem);
  val water = args.getWater();

  if dye == null || coloredProcessingItemTag == null || water == null {
    return;
  }

  <recipetype:immersiveengineering:mixer>.addRecipe(
    args.color.getResourceName() + baseName,
    <tag:fluids:skyfactory_5:water>,
    [coloredProcessingItemTag.asIIngredient()],
    1001,
    water,
    1000
  );
 });

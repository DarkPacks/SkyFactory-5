import crafttweaker.api.ingredient.IIngredient;

ContentBuilder.factory
  .addRecipeGenerator("_apple_to_dye", (baseName, args) => {
    val apple = args.getItem(ColoredItem.Apple);
    val dye = args.getItem(ColoredItem.Dye);
    val air = args.getItem(ColoredItem.Dye);

    if apple == null || dye == null {
      return;
    }

    craftingTable.addShapeless(
      args.color.getResourceName() + baseName,
      dye,
      [apple]
    );
  })

  .addRecipeGenerator("_dye_block_from_dye", (baseName, args) => {
    val dyeBlockItem = args.getItem(ColoredItem.DyeBlock);
    val dye = args.getItem(ColoredItem.Dye);

    if dyeBlockItem == null || dye == null {
      return;
    }

    craftingTable.addShapeless(
      args.color.getResourceName() + baseName,
      dyeBlockItem,
      [
        dye,
        dye,
        dye,
        dye,
        dye,
        dye,
        dye,
        dye,
        dye
      ]
    );
  })
  .addRecipeGenerator("_dye_from_dye_block", (baseName, args) => {
    val dyeBlockItem = args.getItem(ColoredItem.DyeBlock);
    val dye = args.getItem(ColoredItem.Dye);

    if dyeBlockItem == null || dye == null {
      return;
    }

    craftingTable.addShapeless(
      args.color.getResourceName() + baseName,
      dye * 9,
      [dyeBlockItem]
    );
  })
  .addRecipeGenerator("_dye_from_essence", (baseName, args) => {
    val essence = args.getItem(ColoredItem.Essence);
    val dye = args.getItem(ColoredItem.Dye);
    val stage = getStageForColor(args.color);

    if essence == null || dye == null || stage == null {
      return;
    }

  craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      dye * 4,
      [
        [essence, essence],
        [essence, essence]
      ]
    );
  })

  .addRecipeGenerator("_campfire", (baseName, args) => {
    val logItem = args.getItem(ColoredItem.Log);
    val torchItem = args.getItem(ColoredItem.Torch);
    val campfireItem = args.getItem(ColoredItem.Campfire);

    if logItem == null || torchItem == null || campfireItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      campfireItem,
      [
        [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
        [<item:minecraft:stick>, torchItem, <item:minecraft:stick>],
        [<tag:items:minecraft:logs>,  <tag:items:minecraft:logs>,  <tag:items:minecraft:logs>],
      ]
    );
  })
  .addRecipeGenerator("_chest_shaped", (baseName, args) => {
    val plankItem = args.getItem(ColoredItem.Plank);
    val storageChest = args.getItem(ColoredItem.StorageChest);

    if plankItem == null || storageChest == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      storageChest,
      [
        [plankItem, plankItem, plankItem],
        [plankItem, <item:minecraft:air>, plankItem],
        [plankItem, plankItem, plankItem],
      ]
    );
  })
  .addRecipeGenerator("_chest_shaped_from_logs", (baseName, args) => {
    val logItem = args.getItem(ColoredItem.Log);
    val storageChest = args.getItem(ColoredItem.StorageChest);

    if logItem == null || storageChest == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      storageChest * 4,
      [
        [logItem, logItem, logItem],
        [logItem, <item:minecraft:air>, logItem],
        [logItem, logItem, logItem],
      ]
    );
  })
  .addRecipeGenerator("_composting_bin", (baseName, args) => {
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);
    val compostingBin = args.getItem(ColoredItem.CompostingBin);

    if plankItem == null || slabItem == null || compostingBin == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      compostingBin,
      [
        [plankItem, <item:minecraft:air>, plankItem],
        [plankItem, <item:minecraft:air>, plankItem],
        [plankItem, slabItem, plankItem]
      ]
    );
  })
  .addRecipeGenerator("_crafting_table", (baseName, args) => {
    val plankItem = args.getItem(ColoredItem.Plank);
    val craftingTableItem = args.getItem(ColoredItem.CraftingTable);

    if plankItem == null || craftingTableItem == null {
      return;
    }

    craftingTable.removeByName("colouredstuff:wood/crafting_table_" + args.color.getResourceName());

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      craftingTableItem,
      [
        [plankItem, plankItem],
        [plankItem, plankItem]
      ]
    );
  })
  .addRecipeGenerator("_crucible", (baseName, args) => {
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);
    val crucible = args.getItem(ColoredItem.Crucible);

    if plankItem == null || slabItem == null || crucible == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      crucible,
      [
        [plankItem, <item:minecraft:air>, plankItem],
        [plankItem, <item:minecraft:air>, plankItem],
        [slabItem, slabItem, slabItem]
      ]
    );
  })
  .addRecipeGenerator("_limited_barrel_shaped", (baseName, args) => {
    val barrel = args.getItem(ColoredItem.LimitedStorageBarrel1);
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);

    if barrel == null || plankItem == null || slabItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      barrel,
      [
        [plankItem, slabItem, plankItem],
        [plankItem, <item:minecraft:air>, plankItem],
        [plankItem, plankItem, plankItem],
      ]
    );
  })
  .addRecipeGenerator("_limited_barrel_shaped2", (baseName, args) => {
    val barrel = args.getItem(ColoredItem.LimitedStorageBarrel2);
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);

    if barrel == null || plankItem == null || slabItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      barrel,
      [
        [plankItem, plankItem, plankItem],
        [slabItem, <item:minecraft:air>, slabItem],
        [plankItem, plankItem, plankItem],
      ]
    );
  })


  .addRecipeGenerator("_limited_barrel_shaped3", (baseName, args) => {
    val barrel = args.getItem(ColoredItem.LimitedStorageBarrel3);
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);

    if barrel == null || plankItem == null || slabItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      barrel,
      [
        [plankItem, slabItem, plankItem],
        [plankItem, <item:minecraft:air>, plankItem],
        [slabItem, plankItem, slabItem],
      ]
    );
  })



  .addRecipeGenerator("_limited_barrel_shaped4", (baseName, args) => {
    val barrel = args.getItem(ColoredItem.LimitedStorageBarrel4);
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);

    if barrel == null || plankItem == null || slabItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      barrel,
      [
        [slabItem, plankItem, slabItem],
        [plankItem, <item:minecraft:air>, plankItem],
        [slabItem, plankItem, slabItem],
      ]
    );
  })
  .addRecipeGenerator("sophisticated_barrel_shaped", (baseName, args) => {
    val sophisticated_barrel = args.getItem(ColoredItem.SophisticatedBarrel);
    val plankItem = args.getItem(ColoredItem.Plank);
    val slabItem = args.getItem(ColoredItem.PlankSlab);

    if sophisticated_barrel == null || plankItem == null || slabItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      sophisticated_barrel,
      [
        [plankItem, slabItem, plankItem],
        [plankItem, <item:minecraft:redstone_torch>, plankItem],
        [plankItem, slabItem, plankItem],
      ]
    );
  })
  .addRecipeGenerator("_torch", (baseName, args) => {
    val dye = args.getItem(ColoredItem.Dye);
    val torchItem = args.getItem(ColoredItem.Torch);

    if dye == null || torchItem == null {
      return;
    }

    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      torchItem * 4,
      [
        [dye],
        [<tag:items:forge:rods>]
      ]
    );
  })
  .addRecipeGenerator("treasure_bag_", (baseName, args) => {
    val treasureBag = args.getItem(ColoredItem.TreasureBag);
    val wool = args.getItem(ColoredItem.Wool);

    if treasureBag == null || wool == null {
      return;
    }

    craftingTable.addShaped(
      baseName + args.color.getResourceName(),
      treasureBag,
      [
        [wool, wool, wool],
        [wool, <item:sf5_things:treasure_bag_template>.reuse(), wool],
        [wool, wool, wool]
      ]
    );
  })
  .addRecipeGenerator("_gateway_pearls_to_challenge_gateway", (baseName, args) => {
    val challengeGateway = args.getItem(ColoredItem.ChallengeGateway);
    if challengeGateway == null {
      return;
    }

    val gatewayIDsForColor = getGatewaysForColor(args.color);
    if gatewayIDsForColor.length <= 1 {
      return;
    }

    var gatewaysIngredient as IIngredient = <item:gateways:gate_pearl>.withTag({gateway: gatewayIDsForColor[0]});
    for i in 1 .. gatewayIDsForColor.length {
      gatewaysIngredient = gatewaysIngredient | <item:gateways:gate_pearl>.withTag({gateway: gatewayIDsForColor[i]});
    }

    craftingTable.addShapeless(
      args.color.getResourceName() + baseName,
      challengeGateway,
      [
        gatewaysIngredient,
        gatewaysIngredient,
        gatewaysIngredient,
        gatewaysIngredient,
        gatewaysIngredient,
        gatewaysIngredient,
        gatewaysIngredient,
        gatewaysIngredient,
        gatewaysIngredient
      ]
    );
  })

  .addRecipeGenerator("_coloured_wood_to_planks", (baseName, args) => {
  val plankItem = args.getItem(ColoredItem.Plank);
  val woodItem = args.getItem(ColoredItem.Wood);
    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      plankItem * 4,
      [
        [woodItem]
      ]
    );
  })

  .addRecipeGenerator("_coloured_stripped_wood_to_planks", (baseName, args) => {
  val plankItem = args.getItem(ColoredItem.Plank);
  val strippedWoodItem = args.getItem(ColoredItem.StrippedWood);
    craftingTable.addShaped(
      args.color.getResourceName() + baseName,
      plankItem * 4,
      [
        [strippedWoodItem]
      ]
    );
  });

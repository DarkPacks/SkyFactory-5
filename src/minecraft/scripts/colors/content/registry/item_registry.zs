
public enum ColoredItem {
  Apple = "apple",
  Campfire = "campfire",
  ChallengeGateway = "challenge_gateway",
  CompostingBin = "composting_bin",
  CraftingTable = "crafting_table",
  Crucible = "crucible",
  Dye = "dye",
  DyeBlock = "dye_block",
  Essence = "essence",
  LimitedStorageBarrel1 = "limited_storage_barrel_1",
  LimitedStorageBarrel2 = "limited_storage_barrel_2",
  LimitedStorageBarrel3 = "limited_storage_barrel_3",
  LimitedStorageBarrel4 = "limited_storage_barrel_4",
  SophisticatedBarrel= "barrel",
  Log = "log",
  Plank = "plank",
  PlankSlab = "plank_slab",
  Sapling = "sapling",
  Seed = "seed",
  StorageChest = "storage_chest",
  StrippedWood = "stripped_wood",
  Torch = "torch",
  TreasureBag = "treasure_bag",
  Wood = "wood",
  Wool = "wool",
}

ContentBuilder.factory
  .registerItem(ColoredItem.Apple, (color) => {
    if color.getName() == ColorName.Red {
      return <item:minecraft:apple>;
    }
    return <item:sf5_things:${color.getResourceName()}_apple>;
  })

  .registerItem(ColoredItem.Campfire, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return <item:tintedcampfires:${color.getResourceName()}_campfire>;
  })
  .registerItem(ColoredItem.ChallengeGateway, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return <item:gateways:gate_pearl>.withTag({gateway:"gateways:challenge/challenge_" + color.getResourceName()});
  })
  .registerItem(ColoredItem.CraftingTable, (color) => {
    return <item:colouredstuff:crafting_table_${color.getResourceName()}>;
  })
  .registerItem(ColoredItem.Dye, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return <item:minecraft:${color.getResourceName()}_dye>;
  })
  .registerItem(ColoredItem.DyeBlock, (color) => {
    var resourceName = color.getResourceName();
    if color.getName() == ColorName.None {
      resourceName = "colorless";
    }

    return <item:sf5_things:block_of_${resourceName}_dye>;
  })
  .registerItem(ColoredItem.Essence, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return <item:mysticalagriculture:${color.getResourceName()}_crop_essence>;
  })
  .registerItem(ColoredItem.Plank, (color) => {
    return <item:colouredstuff:planks_${color.getResourceName()}>;
  })
  .registerItem(ColoredItem.PlankSlab, (color) => {
    return <item:colouredstuff:slab_planks_${color.getResourceName()}>;
  })
  .registerItem(ColoredItem.Sapling, (color) => {
    return <item:colouredstuff:sapling_${color.getResourceName()}>;
  })
  .registerItem(ColoredItem.Seed, (color) => {
    return <item:mysticalagriculture:${color.getResourceName()}_crop_seeds>;
  })
  .registerItem(ColoredItem.StorageChest, (color) => {
    return <item:sophisticatedstorage:chest>.withTag({mainColor: color.asDecimal(), accentColor: 6710886});
  })
  .registerItem(ColoredItem.LimitedStorageBarrel1, (color) => {
    return <item:sophisticatedstorage:limited_barrel_1>.withTag({mainColor: color.asDecimal(), accentColor: 6710886});
  })
  .registerItem(ColoredItem.LimitedStorageBarrel2, (color) => {
    return <item:sophisticatedstorage:limited_barrel_2>.withTag({mainColor: color.asDecimal(), accentColor: 6710886});
  })
  .registerItem(ColoredItem.LimitedStorageBarrel3, (color) => {
    return <item:sophisticatedstorage:limited_barrel_3>.withTag({mainColor: color.asDecimal(), accentColor: 6710886});
  })
  .registerItem(ColoredItem.LimitedStorageBarrel4, (color) => {
    return <item:sophisticatedstorage:limited_barrel_4>.withTag({mainColor: color.asDecimal(), accentColor: 6710886});
  })
  .registerItem(ColoredItem.SophisticatedBarrel, (color) => {
    return <item:sophisticatedstorage:barrel>.withTag({mainColor: color.asDecimal(), accentColor: 6710886});
  })
  .registerItem(ColoredItem.Log, (color) => {
    return <item:colouredstuff:log_${color.getResourceName()}>;
  })
  .registerItem(ColoredItem.Torch, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return <item:colored_torches:${color.getResourceName()}_torch>;
  })
  .registerItem(ColoredItem.TreasureBag, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    if color.getName() == ColorName.Brown {
      color = Globals.colors[ColorName.LightBrown];
    }

    return <item:lootbags:loot_bag>.withTag({
      Type: "COMMON",
      Loot: "skyfactory_5:loot_bags/" + color.getResourceName() + "_loot_bag",
      Color: color.asDecimal(),
      Name: Component.translatable("item.skyfactory_5.loot_bag." + color.getName()).getString()
    });
  })
  .registerItem(ColoredItem.Wool, (color) => {
    if color.getName() == ColorName.None {
      return null;
    }

    return <item:minecraft:${color.getResourceName()}_wool>;
  })

  .registerItem(ColoredItem.Wood, (color) => {
    return <item:colouredstuff:wood_${color.getResourceName()}>;
  })

  .registerItem(ColoredItem.StrippedWood, (color) => {
    return <item:colouredstuff:wood_stripped_${color.getResourceName()}>;
  });

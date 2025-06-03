import crafttweaker.api.block.Block;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.type.player.Player;

ContentBuilder.factory
  .addLootModifierGenerator("colored_leaves_", (baseName, args) => {
    // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
    // val leaves = args.getBlock(ColoredBlock.Leaves);
    val leaves = <block:colouredstuff:leaves_${args.color.getResourceName()}> as Block?;

    val apple = args.getItem(ColoredItem.Apple);
    val dye = args.getItem(ColoredItem.Dye);
    val sapling = args.getItem(ColoredItem.Sapling);
    val treasureBag = args.getItem(ColoredItem.TreasureBag);

    if leaves == null {
      return;
    }

    leaves.addLootModifier(baseName + args.color.getResourceName(), (drops, ctx) => {
      if <tag:items:forge:shears>.contains(ctx.tool.registryName) {
        return drops;
      }

      val realPlayerLooting = isRealPlayerLooting(ctx);

      val saplingDropChance = realPlayerLooting ? 10 : 5;
      val appleDropChance = realPlayerLooting ? 5 : 0.75;
      val dyeDropChance = realPlayerLooting ? 5 : 0.85;
      val stickDropChance = realPlayerLooting ? 5 : 1;
      val treasureBagDropChance = realPlayerLooting ? 0.69 : 0.25;

      if apple != null && rollsChance(ctx.random, appleDropChance) {
        drops.add(apple);
      }

      if dye != null && rollsChance(ctx.random, dyeDropChance) {
        drops.add(dye);
      }

      if sapling != null && rollsChance(ctx.random, saplingDropChance) {
        drops.add(sapling);
      }

      if rollsChance(ctx.random, stickDropChance) {
        drops.add(<item:minecraft:stick>);
      }

      if treasureBag != null && rollsChance(ctx.random, treasureBagDropChance) {
        drops.add(treasureBag);
      }

      return drops;
    });
  })
  .addLootModifierGenerator("_colored_leaves_green_apple", (baseName, args) => {
    if args.color.getName() == ColorName.Green {
      return;
    }

    // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
    // val leaves = args.getBlock(ColoredBlock.Leaves);
    val leaves = <block:colouredstuff:leaves_${args.color.getResourceName()}> as Block?;

    if leaves == null {
      return;
    }

    leaves.addLootModifier(args.color.getResourceName() + baseName, (drops, ctx) => {
      if <tag:items:forge:shears>.contains(ctx.tool.registryName) {
        return drops;
      }

      if !isRealPlayerLooting(ctx) {
        return drops;
      }

      val appleDropChance = 5;
      val appleDropAmount = ctx.random.nextIntBetweenInclusive(4, 7);
      val player: Player = (ctx.thisEntity as Entity) as Player;

      if !player.hasGameStage(Stage.Green) && rollsChance(ctx.random, appleDropChance) {

        drops.add(<item:sf5_things:green_apple> * appleDropAmount);
      }

      return drops;
    });
  })
  .addLootModifierGenerator("_colored_leaves_silk_worm", (baseName, args) => {
    // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
    // val leaves = args.getBlock(ColoredBlock.Leaves);
    val leaves = <block:colouredstuff:leaves_${args.color.getResourceName()}> as Block?;

    if leaves == null {
      return;
    }

    leaves.addLootModifier(args.color.getResourceName() + baseName, (drops, ctx) => {
      if <tag:items:forge:shears>.contains(ctx.tool.registryName) {
        return drops;
      }

      if !isRealPlayerLooting(ctx) {
        return drops;
      }

      val appleDropChance = 10;

      if rollsChance(ctx.random, appleDropChance) {
        drops.add(<item:exnihilosequentia:silkworm>);
      }

      return drops;
    });
  });

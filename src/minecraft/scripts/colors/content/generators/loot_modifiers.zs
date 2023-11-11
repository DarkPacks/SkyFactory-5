import crafttweaker.api.block.Block;
import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.type.player.Player;

ContentBuilder.factory
  .addLootModifierGenerator("colored_leaves_", (baseName, args) => {
    // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
    // val leaves = args.blocks[ColoredBlock.Leaves];
    val leaves = BracketHandlers.getBlock("colouredstuff:leaves_" + args.color.getResourceName()) as Block?;

    val apple = args.items[ColoredItem.Apple];
    val dye = args.items[ColoredItem.Dye];
    val sapling = args.items[ColoredItem.Sapling];

    val gateways = getGatewayTreeDropsForColor(args.color);

    if leaves == null {
      return;
    }

    leaves.addLootModifier(baseName + args.color.getResourceName(), (drops, ctx) => {
      val realPlayerLooting = isRealPlayerLooting(ctx);

      val saplingDropChance = realPlayerLooting ? 15 : 10;
      val appleDropChance = realPlayerLooting ? 5 : 1;
      val dyeDropChance = realPlayerLooting ? 10 : 5;
      val stickDropChance = realPlayerLooting ? 5 : 1;
      val gatewayDropChance = realPlayerLooting ? 0.69 : 0.25;

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

      for gateway in gateways {
        if rollsChance(ctx.random, gatewayDropChance) {
          drops.add(<item:gateways:gate_pearl>.withTag({gateway: gateway}));
        }
      }

      return drops;
    });
  })
  .addLootModifierGenerator("_colored_leaves_green_apple", (baseName, args) => {
    if args.color.getName() == ColorName.Green {
      return;
    }

    // TODO: There is a bug in ZenCode that prevents us from implementing this. See the block_entry.zs file.
    // val leaves = args.blocks[ColoredBlock.Leaves];
    val leaves = BracketHandlers.getBlock("colouredstuff:leaves_" + args.color.getResourceName()) as Block?;

    if leaves == null {
      return;
    }

    leaves.addLootModifier(args.color.getResourceName() + baseName, (drops, ctx) => {
      val realPlayerLooting = isRealPlayerLooting(ctx);

      if !realPlayerLooting {
        return drops;
      }

      val appleDropChance = 5;

      val player: Player = (ctx.thisEntity as Entity) as Player;

      if !player.hasGameStage(Stage.Green) && rollsChance(ctx.random, appleDropChance) {
        drops.add(<item:sf5_things:green_apple>);
      }

      return drops;
    });
  });
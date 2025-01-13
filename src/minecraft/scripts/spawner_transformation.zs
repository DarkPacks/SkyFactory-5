import crafttweaker.forge.api.event.interact.RightClickBlockEvent;
import crafttweaker.api.block.entity.BlockEntity;
import crafttweaker.api.data.IData;
import crafttweaker.api.text.Component;


events.register<RightClickBlockEvent>((event) => {
    val level = event.entity.level;
    val heldItem = event.itemStack;

    val potentialBlockEntity = level.getBlockEntity(event.blockPos);
    if potentialBlockEntity is BlockEntity {
      val blockEntity = potentialBlockEntity as BlockEntity;

      if blockEntity.registryName == <resource:minecraft:mob_spawner> {
        if !<item:obtrophies:trophy>.matches(heldItem) || !("BlockEntityTag" in heldItem.tag) || !("entity" in heldItem.tag["BlockEntityTag"]) {
          return;
        }

        val toSpawn = heldItem.tag["BlockEntityTag"]["entity"];

        if (toSpawn as string) in ["minecraft:ender_dragon", "ghastcow:ghast_cow"] {
          if !level.isClientSide {
            event.entity.sendMessage(Component.literal("Invalid Mob Type").withStyle(<constant:minecraft:formatting:red>));
          }
          event.cancel();
          return;
        }
        val data = blockEntity.data;

        val spawnData = {
          entity: {
            id: toSpawn
          }
        } as IData;
        data["SpawnData"] = spawnData;
        data["SpawnPotentials"] = [];
        data["SpawnPotentials"].add({data: spawnData});
        blockEntity.updateData(data);

        event.cancel();
      }
    }
});

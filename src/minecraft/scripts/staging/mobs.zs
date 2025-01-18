import crafttweaker.api.block.entity.BlockEntity;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.EntityType;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.text.Component;
import crafttweaker.forge.api.event.interact.RightClickBlockEvent;

public class StagedMob {
  public val entityType as EntityType<Entity> : get;
  public val stageName as MobStage : get;

  public this(entityType: EntityType<Entity>, stageName: MobStage) {
    this.entityType = entityType;
    this.stageName = stageName;
  }

  public toggleStage(player: Player): bool {
    val newEnabled = !player.hasGameStage(this.stageName);

    this.setStageStateForPlayer(player, newEnabled);

    return newEnabled;
  }

  public setStageStateForPlayers(players: Player[], enabled: bool): void {
    for player in players {
      this.setStageStateForPlayer(player, enabled);
    }
  }

  private setStageStateForPlayer(player: Player, enabled: bool): void {
    // Skip giving stage if player already has it.
    if enabled && player.hasGameStage(this.stageName) {
      return;
    }

    // Skip removing stage if player already doesn't have it.
    if !enabled && !player.hasGameStage(this.stageName) {
      return;
    }

    if enabled {
      player.addGameStage(this.stageName);
      player.sendMessage(
        Component.empty()
          .append(this.entityType.getDescription())
          .append(Component.literal(" will now spawn!"))
          .withStyle(style => style.withColor(<constant:minecraft:formatting:green>))
      );
    } else {
      player.removeGameStage(this.stageName);
      player.sendMessage(
        Component.empty()
          .append(this.entityType.getDescription())
          .append(Component.literal(" will no longer spawn!"))
          .withStyle(style => style.withColor(<constant:minecraft:formatting:red>))
      );
    }
  }
}

val playerRadius = 64;

events.register<RightClickBlockEvent>(event => {
  val player = event.entity;
  val level = player.level;
  val pos = event.blockPos;

  if level.isClientSide {
    // Do nothing on the client
    return;
  }

  if player.isCrouching {
    // Early exit when player is crouching, to allow for toggling the trophy base
    return;
  }

  if level.getBlockState(pos).block == <block:obtrophies:trophy> {
    val blockEntity = level.getBlockEntity(pos);

    if blockEntity != null {
      val data = blockEntity.data;
      val type = <entitytype:${data["entity"].getAsString()}>;

      if type in Globals.stagedMobs {
        val StagedMob = Globals.stagedMobs[type];
        val newEnabledState = StagedMob.toggleStage(player);

        val entities = level.getEntitiesInArea<Player>(
          pos.north(playerRadius).east(playerRadius).above(playerRadius),
          pos.south(playerRadius).west(playerRadius).below(playerRadius)
        );

        StagedMob.setStageStateForPlayers(entities, newEnabledState);
      }
    }
  }
});

/*
// Used as a deny list for the following loop. Value should be true
val lootModifierDenyList: bool[string] = {};

for mob, trophyMob in mobs {
  val entity = BracketHandlers.getEntityType(mob);

  if !(mob in lootModifierDenyList) {
    entity.addLootModifier("extra_drops_" + mob.replace(":", "_"), (drops, ctx) => {
      drops.add(<item:minecraft:bone>);

      return drops;
    });
  }
}
*/

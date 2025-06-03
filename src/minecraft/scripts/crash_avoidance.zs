import crafttweaker.forge.api.event.block.EntityPlaceBlockEvent;
import crafttweaker.api.text.Component;

events.register<crafttweaker.forge.api.event.block.EntityPlaceBlockEvent>(event => {
  val level = event.level;
  val pos = event.pos;
  val entity = event.entity;
  val placedBlock = event.placedBlock;

  if level.isClientSide {
    return;
  }

  // Blocks Cyclic's Fluid Pipes next to Immersive Engineering's Mixer
  if placedBlock.block == <block:cyclic:fluid_pipe> {
    if level.getBlockState(pos.north()).block == <block:immersiveengineering:mixer> || level.getBlockState(pos.south()).block == <block:immersiveengineering:mixer> || level.getBlockState(pos.east()).block == <block:immersiveengineering:mixer> || level.getBlockState(pos.west()).block == <block:immersiveengineering:mixer> {
      entity.sendMessage(Component.literal("Cyclic Fluid Pipes cannot be placed next to a Mixer due to incompatibility").withStyle(<constant:minecraft:formatting:red>));
      event.cancel();
    }
  }

  // Blocks ClickMachine next to Immersive Engineering's Cloche
  if placedBlock.block == <block:clickmachine:auto_clicker> {
    var facing = placedBlock.getPropertyValue("facing");
    var blockEvent = false;

    if facing == "north" && (level.getBlockState(pos.north()).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.north(2)).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.north(3)).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.north(4)).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.north(5)).block == <block:immersiveengineering:cloche>) {
      blockEvent = true;
    }

    if facing == "east" && (level.getBlockState(pos.east()).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.east(2)).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.east(3)).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.east(4)).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.east(5)).block == <block:immersiveengineering:cloche>) {
      blockEvent = true;
    }

    if facing == "south" && (level.getBlockState(pos.south()).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.south(2)).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.south(3)).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.south(4)).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.south(5)).block == <block:immersiveengineering:cloche>) {
      blockEvent = true;
    }

    if facing == "west" && (level.getBlockState(pos.west()).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.west(2)).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.west(3)).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.west(4)).block == <block:immersiveengineering:cloche> ||  level.getBlockState(pos.west(5)).block == <block:immersiveengineering:cloche>) {
      blockEvent = true;
    }

    if blockEvent == true {
      entity.sendMessage(Component.literal("Click Machine cannot be placed next to a Cloche due to incompatibility").withStyle(<constant:minecraft:formatting:red>));
      event.cancel();
    }
  }
});

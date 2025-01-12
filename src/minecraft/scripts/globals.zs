#priority 100

import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.EntityType;

public class Globals {
  public static val colors as Color[ColorName] = {
    // Commented colors are being kept for reference
    ColorName.None: new Color(ColorName.None, "skyfactory_5.color.none", "none", 9539985), // #919191
    ColorName.Red: new Color(ColorName.Red, "skyfactory_5.color.red", "red", 11546150), // #b02e26
    ColorName.Green: new Color(ColorName.Green, "skyfactory_5.color.green", "green", 6192150), // #5d7c15
    ColorName.Lime: new Color(ColorName.Lime, "skyfactory_5.color.lime", "lime", 8439583), // #80c71f
    // ColorName.Blue: new Color(ColorName.Blue, "Blue", "blue", 33023), // #0080ff
    ColorName.Blue: new Color(ColorName.Blue, "skyfactory_5.color.blue", "blue", 3949738), // #3c44a9
    ColorName.LightBlue: new Color(ColorName.LightBlue, "skyfactory_5.color.light_blue", "light_blue", 3847130), // #3ab3da
    ColorName.Gray: new Color(ColorName.Gray, "skyfactory_5.color.gray", "gray", 4673362), // #474f52
    ColorName.LightGray: new Color(ColorName.LightGray, "skyfactory_5.color.light_gray", "light_gray", 10329495), // #9c9d97
    ColorName.Yellow: new Color(ColorName.Yellow, "skyfactory_5.color.yellow", "yellow", 16701501), // #ffd83d
    // ColorName.Purple: new Color(ColorName.Purple, "Purple", "purple", 8388736), // #800080
    ColorName.Purple: new Color(ColorName.Purple, "skyfactory_5.color.purple", "purple", 8991416), // #8932b7
    ColorName.Magenta: new Color(ColorName.Magenta, "skyfactory_5.color.magenta", "magenta", 13061821), // #c64fbd
    ColorName.Pink: new Color(ColorName.Pink, "skyfactory_5.color.pink", "pink", 15961002), // #f38caa
    ColorName.White: new Color(ColorName.White, "skyfactory_5.color.white", "white", 16383998), // #f9ffff
    ColorName.Black: new Color(ColorName.Black, "skyfactory_5.color.black", "black", 1908001), // #1d1c21
    ColorName.Brown: new Color(ColorName.Brown, "skyfactory_5.color.brown", "brown", 8606770), // #825432
    ColorName.LightBrown: new Color(ColorName.LightBrown, "skyfactory_5.color.brown", "brown", 9849600), // #964B00
    ColorName.Cyan: new Color(ColorName.Cyan, "skyfactory_5.color.cyan", "cyan", 1481884), // #169c9d
    ColorName.Orange: new Color(ColorName.Orange, "skyfactory_5.color.orange", "orange", 16351261), // #f9801d
    ColorName.RGB: new Color(ColorName.RGB, "skyfactory_5.color.rgb", "rgb", 16755200) // #FFAA00
  };

  public static val stagedMobs as StagedMob[EntityType<Entity>] = {
    // stagedMobs GENERATOR START
    // !THIS SECTION IS MANAGED BY A SCRIPT. DO NOT MANUALLY EDIT THIS SECTION!

    <entitytype:ars_nouveau:drygmy>: new StagedMob(<entitytype:ars_nouveau:drygmy>, MobStage.DRYGMY),
    <entitytype:ars_nouveau:starbuncle>: new StagedMob(<entitytype:ars_nouveau:starbuncle>, MobStage.STARBUNCLE),
    <entitytype:ars_nouveau:whirlisprig>: new StagedMob(<entitytype:ars_nouveau:whirlisprig>, MobStage.WHIRLISPRIG),
    <entitytype:colourfulgoats:goat>: new StagedMob(<entitytype:colourfulgoats:goat>, MobStage.GOAT),
    <entitytype:colourfulllamas:llama>: new StagedMob(<entitytype:colourfulllamas:llama>, MobStage.LLAMA),
    <entitytype:earthmobsmod:albino_cow>: new StagedMob(<entitytype:earthmobsmod:albino_cow>, MobStage.ALBINO_COW),
    <entitytype:earthmobsmod:baby_ghast>: new StagedMob(<entitytype:earthmobsmod:baby_ghast>, MobStage.BABY_GHAST),
    <entitytype:earthmobsmod:bone_spider>: new StagedMob(<entitytype:earthmobsmod:bone_spider>, MobStage.BONE_SPIDER),
    <entitytype:earthmobsmod:bouldering_drowned>: new StagedMob(<entitytype:earthmobsmod:bouldering_drowned>, MobStage.BOULDERING_DROWNED),
    <entitytype:earthmobsmod:bouldering_zombie>: new StagedMob(<entitytype:earthmobsmod:bouldering_zombie>, MobStage.BOULDERING_ZOMBIE),
    <entitytype:earthmobsmod:cluck_shroom>: new StagedMob(<entitytype:earthmobsmod:cluck_shroom>, MobStage.CLUCKSHROOM),
    <entitytype:earthmobsmod:cream_cow>: new StagedMob(<entitytype:earthmobsmod:cream_cow>, MobStage.CREAM_COW),
    <entitytype:earthmobsmod:fancy_chicken>: new StagedMob(<entitytype:earthmobsmod:fancy_chicken>, MobStage.FANCY_CHICKEN),
    <entitytype:earthmobsmod:furnace_golem>: new StagedMob(<entitytype:earthmobsmod:furnace_golem>, MobStage.FURNACE_GOLEM),
    <entitytype:earthmobsmod:horned_sheep>: new StagedMob(<entitytype:earthmobsmod:horned_sheep>, MobStage.HORNED_SHEEP),
    <entitytype:earthmobsmod:hyper_rabbit>: new StagedMob(<entitytype:earthmobsmod:hyper_rabbit>, MobStage.HYPER_RABBIT),
    <entitytype:earthmobsmod:jumbo_rabbit>: new StagedMob(<entitytype:earthmobsmod:jumbo_rabbit>, MobStage.JUMBO_RABBIT),
    <entitytype:earthmobsmod:lobber_drowned>: new StagedMob(<entitytype:earthmobsmod:lobber_drowned>, MobStage.LOBBER_DROWNED),
    <entitytype:earthmobsmod:lobber_zombie>: new StagedMob(<entitytype:earthmobsmod:lobber_zombie>, MobStage.LOBBER_ZOMBIE),
    <entitytype:earthmobsmod:magma_cow>: new StagedMob(<entitytype:earthmobsmod:magma_cow>, MobStage.MAGMA_COW),
    <entitytype:earthmobsmod:melon_golem>: new StagedMob(<entitytype:earthmobsmod:melon_golem>, MobStage.MELON_GOLEM),
    <entitytype:earthmobsmod:moobloom>: new StagedMob(<entitytype:earthmobsmod:moobloom>, MobStage.MOOBLOOM),
    <entitytype:earthmobsmod:moolip>: new StagedMob(<entitytype:earthmobsmod:moolip>, MobStage.MOOLIP),
    <entitytype:earthmobsmod:skeleton_wolf>: new StagedMob(<entitytype:earthmobsmod:skeleton_wolf>, MobStage.SKELETON_WOLF),
    <entitytype:earthmobsmod:stray_bone_spider>: new StagedMob(<entitytype:earthmobsmod:stray_bone_spider>, MobStage.STRAY_BONE_SPIDER),
    <entitytype:earthmobsmod:teacup_pig>: new StagedMob(<entitytype:earthmobsmod:teacup_pig>, MobStage.TEACUP_PIG),
    <entitytype:earthmobsmod:tropical_slime>: new StagedMob(<entitytype:earthmobsmod:tropical_slime>, MobStage.TROPICAL_SLIME),
    <entitytype:earthmobsmod:umbra_cow>: new StagedMob(<entitytype:earthmobsmod:umbra_cow>, MobStage.UMBRA_COW),
    <entitytype:earthmobsmod:viler_witch>: new StagedMob(<entitytype:earthmobsmod:viler_witch>, MobStage.VILER_WITCH),
    <entitytype:earthmobsmod:wither_skeleton_wolf>: new StagedMob(<entitytype:earthmobsmod:wither_skeleton_wolf>, MobStage.WITHER_SKELETON_WOLF),
    <entitytype:earthmobsmod:wooly_cow>: new StagedMob(<entitytype:earthmobsmod:wooly_cow>, MobStage.WOOLY_COW),
    <entitytype:earthmobsmod:zombified_pig>: new StagedMob(<entitytype:earthmobsmod:zombified_pig>, MobStage.ZOMBIFIED_PIG),
    <entitytype:energeticsheep:energetic_sheep>: new StagedMob(<entitytype:energeticsheep:energetic_sheep>, MobStage.ENERGETIC_SHEEP),
    <entitytype:forcecraft:blue_chu_chu>: new StagedMob(<entitytype:forcecraft:blue_chu_chu>, MobStage.BLUE_CHU_CHU),
    <entitytype:forcecraft:creeper_tot>: new StagedMob(<entitytype:forcecraft:creeper_tot>, MobStage.CREEPER_TOT),
    <entitytype:forcecraft:ender_tot>: new StagedMob(<entitytype:forcecraft:ender_tot>, MobStage.ENDER_TOT),
    <entitytype:forcecraft:fairy>: new StagedMob(<entitytype:forcecraft:fairy>, MobStage.FAIRY),
    <entitytype:forcecraft:gold_chu_chu>: new StagedMob(<entitytype:forcecraft:gold_chu_chu>, MobStage.GOLD_CHU_CHU),
    <entitytype:forcecraft:green_chu_chu>: new StagedMob(<entitytype:forcecraft:green_chu_chu>, MobStage.GREEN_CHU_CHU),
    <entitytype:forcecraft:red_chu_chu>: new StagedMob(<entitytype:forcecraft:red_chu_chu>, MobStage.RED_CHU_CHU),
    <entitytype:ghastcow:ghast_cow>: new StagedMob(<entitytype:ghastcow:ghast_cow>, MobStage.GHAST_COW),
    <entitytype:lava_monster:lava_monster>: new StagedMob(<entitytype:lava_monster:lava_monster>, MobStage.LAVA_MONSTER),
    <entitytype:minecraft:allay>: new StagedMob(<entitytype:minecraft:allay>, MobStage.ALLAY),
    <entitytype:minecraft:axolotl>: new StagedMob(<entitytype:minecraft:axolotl>, MobStage.AXOLOTL),
    <entitytype:minecraft:bat>: new StagedMob(<entitytype:minecraft:bat>, MobStage.BAT),
    <entitytype:minecraft:bee>: new StagedMob(<entitytype:minecraft:bee>, MobStage.BEE),
    <entitytype:minecraft:blaze>: new StagedMob(<entitytype:minecraft:blaze>, MobStage.BLAZE),
    <entitytype:minecraft:camel>: new StagedMob(<entitytype:minecraft:camel>, MobStage.CAMEL),
    <entitytype:minecraft:cat>: new StagedMob(<entitytype:minecraft:cat>, MobStage.CAT),
    <entitytype:minecraft:cave_spider>: new StagedMob(<entitytype:minecraft:cave_spider>, MobStage.CAVE_SPIDER),
    <entitytype:minecraft:chicken>: new StagedMob(<entitytype:minecraft:chicken>, MobStage.CHICKEN),
    <entitytype:minecraft:cod>: new StagedMob(<entitytype:minecraft:cod>, MobStage.COD),
    <entitytype:minecraft:cow>: new StagedMob(<entitytype:minecraft:cow>, MobStage.COW),
    <entitytype:minecraft:creeper>: new StagedMob(<entitytype:minecraft:creeper>, MobStage.CREEPER),
    <entitytype:minecraft:dolphin>: new StagedMob(<entitytype:minecraft:dolphin>, MobStage.DOLPHIN),
    <entitytype:minecraft:donkey>: new StagedMob(<entitytype:minecraft:donkey>, MobStage.DONKEY),
    <entitytype:minecraft:drowned>: new StagedMob(<entitytype:minecraft:drowned>, MobStage.DROWNED),
    <entitytype:minecraft:elder_guardian>: new StagedMob(<entitytype:minecraft:elder_guardian>, MobStage.ELDER_GUARDIAN),
    <entitytype:minecraft:ender_dragon>: new StagedMob(<entitytype:minecraft:ender_dragon>, MobStage.ENDER_DRAGON),
    <entitytype:minecraft:enderman>: new StagedMob(<entitytype:minecraft:enderman>, MobStage.ENDERMAN),
    <entitytype:minecraft:endermite>: new StagedMob(<entitytype:minecraft:endermite>, MobStage.ENDERMITE),
    <entitytype:minecraft:evoker>: new StagedMob(<entitytype:minecraft:evoker>, MobStage.EVOKER),
    <entitytype:minecraft:fox>: new StagedMob(<entitytype:minecraft:fox>, MobStage.FOX),
    <entitytype:minecraft:frog>: new StagedMob(<entitytype:minecraft:frog>, MobStage.FROG),
    <entitytype:minecraft:ghast>: new StagedMob(<entitytype:minecraft:ghast>, MobStage.GHAST),
    <entitytype:minecraft:glow_squid>: new StagedMob(<entitytype:minecraft:glow_squid>, MobStage.GLOW_SQUID),
    <entitytype:minecraft:goat>: new StagedMob(<entitytype:minecraft:goat>, MobStage.GOAT),
    <entitytype:minecraft:guardian>: new StagedMob(<entitytype:minecraft:guardian>, MobStage.GUARDIAN),
    <entitytype:minecraft:hoglin>: new StagedMob(<entitytype:minecraft:hoglin>, MobStage.HOGLIN),
    <entitytype:minecraft:horse>: new StagedMob(<entitytype:minecraft:horse>, MobStage.HORSE),
    <entitytype:minecraft:husk>: new StagedMob(<entitytype:minecraft:husk>, MobStage.HUSK),
    <entitytype:minecraft:illusioner>: new StagedMob(<entitytype:minecraft:illusioner>, MobStage.ILLUSIONER),
    <entitytype:minecraft:iron_golem>: new StagedMob(<entitytype:minecraft:iron_golem>, MobStage.IRON_GOLEM),
    <entitytype:minecraft:llama>: new StagedMob(<entitytype:minecraft:llama>, MobStage.LLAMA),
    <entitytype:minecraft:magma_cube>: new StagedMob(<entitytype:minecraft:magma_cube>, MobStage.MAGMA_CUBE),
    <entitytype:minecraft:mooshroom>: new StagedMob(<entitytype:minecraft:mooshroom>, MobStage.MOOSHROOM),
    <entitytype:minecraft:ocelot>: new StagedMob(<entitytype:minecraft:ocelot>, MobStage.OCELOT),
    <entitytype:minecraft:panda>: new StagedMob(<entitytype:minecraft:panda>, MobStage.PANDA),
    <entitytype:minecraft:parrot>: new StagedMob(<entitytype:minecraft:parrot>, MobStage.PARROT),
    <entitytype:minecraft:phantom>: new StagedMob(<entitytype:minecraft:phantom>, MobStage.PHANTOM),
    <entitytype:minecraft:pig>: new StagedMob(<entitytype:minecraft:pig>, MobStage.PIG),
    <entitytype:minecraft:piglin>: new StagedMob(<entitytype:minecraft:piglin>, MobStage.PIGLIN),
    <entitytype:minecraft:piglin_brute>: new StagedMob(<entitytype:minecraft:piglin_brute>, MobStage.PIGLIN_BRUTE),
    <entitytype:minecraft:pillager>: new StagedMob(<entitytype:minecraft:pillager>, MobStage.PILLAGER),
    <entitytype:minecraft:polar_bear>: new StagedMob(<entitytype:minecraft:polar_bear>, MobStage.POLAR_BEAR),
    <entitytype:minecraft:pufferfish>: new StagedMob(<entitytype:minecraft:pufferfish>, MobStage.PUFFERFISH),
    <entitytype:minecraft:rabbit>: new StagedMob(<entitytype:minecraft:rabbit>, MobStage.RABBIT),
    <entitytype:minecraft:ravager>: new StagedMob(<entitytype:minecraft:ravager>, MobStage.RAVAGER),
    <entitytype:minecraft:salmon>: new StagedMob(<entitytype:minecraft:salmon>, MobStage.SALMON),
    <entitytype:minecraft:sheep>: new StagedMob(<entitytype:minecraft:sheep>, MobStage.SHEEP),
    <entitytype:minecraft:shulker>: new StagedMob(<entitytype:minecraft:shulker>, MobStage.SHULKER),
    <entitytype:minecraft:silverfish>: new StagedMob(<entitytype:minecraft:silverfish>, MobStage.SILVERFISH),
    <entitytype:minecraft:skeleton>: new StagedMob(<entitytype:minecraft:skeleton>, MobStage.SKELETON),
    <entitytype:minecraft:skeleton_horse>: new StagedMob(<entitytype:minecraft:skeleton_horse>, MobStage.SKELETON_HORSE),
    <entitytype:minecraft:slime>: new StagedMob(<entitytype:minecraft:slime>, MobStage.SLIME),
    <entitytype:minecraft:sniffer>: new StagedMob(<entitytype:minecraft:sniffer>, MobStage.SNIFFER),
    <entitytype:minecraft:snow_golem>: new StagedMob(<entitytype:minecraft:snow_golem>, MobStage.SNOW_GOLEM),
    <entitytype:minecraft:spider>: new StagedMob(<entitytype:minecraft:spider>, MobStage.SPIDER),
    <entitytype:minecraft:squid>: new StagedMob(<entitytype:minecraft:squid>, MobStage.SQUID),
    <entitytype:minecraft:stray>: new StagedMob(<entitytype:minecraft:stray>, MobStage.STRAY),
    <entitytype:minecraft:strider>: new StagedMob(<entitytype:minecraft:strider>, MobStage.STRIDER),
    <entitytype:minecraft:tadpole>: new StagedMob(<entitytype:minecraft:tadpole>, MobStage.TADPOLE),
    <entitytype:minecraft:trader_llama>: new StagedMob(<entitytype:minecraft:trader_llama>, MobStage.TRADER_LLAMA),
    <entitytype:minecraft:tropical_fish>: new StagedMob(<entitytype:minecraft:tropical_fish>, MobStage.TROPICAL_FISH),
    <entitytype:minecraft:turtle>: new StagedMob(<entitytype:minecraft:turtle>, MobStage.TURTLE),
    <entitytype:minecraft:vex>: new StagedMob(<entitytype:minecraft:vex>, MobStage.VEX),
    <entitytype:minecraft:villager>: new StagedMob(<entitytype:minecraft:villager>, MobStage.VILLAGER),
    <entitytype:minecraft:vindicator>: new StagedMob(<entitytype:minecraft:vindicator>, MobStage.VINDICATOR),
    <entitytype:minecraft:wandering_trader>: new StagedMob(<entitytype:minecraft:wandering_trader>, MobStage.WANDERING_TRADER),
    <entitytype:minecraft:warden>: new StagedMob(<entitytype:minecraft:warden>, MobStage.WARDEN),
    <entitytype:minecraft:witch>: new StagedMob(<entitytype:minecraft:witch>, MobStage.WITCH),
    <entitytype:minecraft:wither>: new StagedMob(<entitytype:minecraft:wither>, MobStage.WITHER),
    <entitytype:minecraft:wither_skeleton>: new StagedMob(<entitytype:minecraft:wither_skeleton>, MobStage.WITHER_SKELETON),
    <entitytype:minecraft:wolf>: new StagedMob(<entitytype:minecraft:wolf>, MobStage.WOLF),
    <entitytype:minecraft:zoglin>: new StagedMob(<entitytype:minecraft:zoglin>, MobStage.ZOGLIN),
    <entitytype:minecraft:zombie>: new StagedMob(<entitytype:minecraft:zombie>, MobStage.ZOMBIE),
    <entitytype:minecraft:zombie_horse>: new StagedMob(<entitytype:minecraft:zombie_horse>, MobStage.ZOMBIE_HORSE),
    <entitytype:minecraft:zombie_villager>: new StagedMob(<entitytype:minecraft:zombie_villager>, MobStage.ZOMBIE_VILLAGER),
    <entitytype:minecraft:zombified_piglin>: new StagedMob(<entitytype:minecraft:zombified_piglin>, MobStage.ZOMBIFIED_PIGLIN),
    <entitytype:monsterplus:abyssologer>: new StagedMob(<entitytype:monsterplus:abyssologer>, MobStage.ABYSSOLOGER),
    <entitytype:monsterplus:crystal_zombie>: new StagedMob(<entitytype:monsterplus:crystal_zombie>, MobStage.CRYSTAL_ZOMBIE),
    <entitytype:monsterplus:glow_skeleton>: new StagedMob(<entitytype:monsterplus:glow_skeleton>, MobStage.GLOW_SKELETON),
    <entitytype:monsterplus:lava_squid>: new StagedMob(<entitytype:monsterplus:lava_squid>, MobStage.LAVA_SQUID),
    <entitytype:monsterplus:mother_lava_squid>: new StagedMob(<entitytype:monsterplus:mother_lava_squid>, MobStage.MOTHER_LAVA_SQUID),
    <entitytype:monsterplus:opalescent_eye>: new StagedMob(<entitytype:monsterplus:opalescent_eye>, MobStage.OPALESCENT_EYE),
    <entitytype:monsterplus:overgrown_skeleton>: new StagedMob(<entitytype:monsterplus:overgrown_skeleton>, MobStage.OVERGROWN_SKELETON),
    <entitytype:monsterplus:swamp_zombie>: new StagedMob(<entitytype:monsterplus:swamp_zombie>, MobStage.SWAMP_ZOMBIE),
    <entitytype:sushigocrafting:shrimp>: new StagedMob(<entitytype:sushigocrafting:shrimp>, MobStage.SHRIMP),
    <entitytype:sushigocrafting:tuna>: new StagedMob(<entitytype:sushigocrafting:tuna>, MobStage.TUNA),
    <entitytype:veincreeper:black>: new StagedMob(<entitytype:veincreeper:black>, MobStage.BLACK_VEIN_CREEPER),
    <entitytype:veincreeper:blue>: new StagedMob(<entitytype:veincreeper:blue>, MobStage.BLUE_VEIN_CREEPER),
    <entitytype:veincreeper:brown>: new StagedMob(<entitytype:veincreeper:brown>, MobStage.BROWN_VEIN_CREEPER),
    <entitytype:veincreeper:cyan>: new StagedMob(<entitytype:veincreeper:cyan>, MobStage.CYAN_VEIN_CREEPER),
    <entitytype:veincreeper:gray>: new StagedMob(<entitytype:veincreeper:gray>, MobStage.GRAY_VEIN_CREEPER),
    <entitytype:veincreeper:green>: new StagedMob(<entitytype:veincreeper:green>, MobStage.GREEN_VEIN_CREEPER),
    <entitytype:veincreeper:light_blue>: new StagedMob(<entitytype:veincreeper:light_blue>, MobStage.LIGHT_BLUE_VEIN_CREEPER),
    <entitytype:veincreeper:light_gray>: new StagedMob(<entitytype:veincreeper:light_gray>, MobStage.LIGHT_GRAY_VEIN_CREEPER),
    <entitytype:veincreeper:lime>: new StagedMob(<entitytype:veincreeper:lime>, MobStage.LIME_VEIN_CREEPER),
    <entitytype:veincreeper:magenta>: new StagedMob(<entitytype:veincreeper:magenta>, MobStage.MAGENTA_VEIN_CREEPER),
    <entitytype:veincreeper:orange>: new StagedMob(<entitytype:veincreeper:orange>, MobStage.ORANGE_VEIN_CREEPER),
    <entitytype:veincreeper:pink>: new StagedMob(<entitytype:veincreeper:pink>, MobStage.PINK_VEIN_CREEPER),
    <entitytype:veincreeper:purple>: new StagedMob(<entitytype:veincreeper:purple>, MobStage.PURPLE_VEIN_CREEPER),
    <entitytype:veincreeper:red>: new StagedMob(<entitytype:veincreeper:red>, MobStage.RED_VEIN_CREEPER),
    <entitytype:veincreeper:white>: new StagedMob(<entitytype:veincreeper:white>, MobStage.WHITE_VEIN_CREEPER),
    <entitytype:veincreeper:yellow>: new StagedMob(<entitytype:veincreeper:yellow>, MobStage.YELLOW_VEIN_CREEPER),
    <entitytype:vinery:mule>: new StagedMob(<entitytype:vinery:mule>, MobStage.MULE),
    <entitytype:vinery:wandering_winemaker>: new StagedMob(<entitytype:vinery:wandering_winemaker>, MobStage.WANDERING_WINEMAKER),
    <entitytype:waddles:adelie_penguin>: new StagedMob(<entitytype:waddles:adelie_penguin>, MobStage.ADELIE_PENGUIN)

    // stagedMobs GENERATOR END
  };
}

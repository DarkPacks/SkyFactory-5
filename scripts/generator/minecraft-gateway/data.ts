import { Float, Int, TagObject } from "nbt-ts";
import { HostileNeuralNetworksDataModel } from "schemas/minecraft/hostilenetworks/data-model";
import { InControlSpawn } from "schemas/minecraft/incontrol/spawn";
import { OpenBlocksTrophiesTrophy } from "schemas/minecraft/obtrophies/trophy";
import { ColorName } from "scripts/utils/minecraft-colors";
import { GatewayType } from "./constants";
import { GatewayOverrides } from "./types";

interface MobDataBase {
  /** The ID of the mob. */
  mobID: string;
  /** The name of the mob. */
  mobName: string;
  /** The stage associated with this mob. */
  stage: string;
  /** The minimum light level for the mob to spawn. */
  minLightLevel: number;
  /** The maximum light level for the mob to spawn. */
  maxLightLevel: number;

  spawnOverrides?: Pick<
    InControlSpawn[0],
    "block" | "potion" | "nbt" | "helditem"
  >;
}

interface MobDataSpawnOnly extends MobDataBase {
  /** Indicates that this mob should only be added to the spawn config. */
  spawnOnly: true;
}

interface MobDataAll extends MobDataBase {
  /** Indicates that this mob should generate gateways/etc. */
  spawnOnly: false;

  /** The color associated with this mob. */
  color: ColorName;
  /** The type of gateways to be generated for this mob. */
  gatewayTypes: GatewayType[];
  /** NBT to apply to the mob in addition to the defaults. */
  additionalGatewayMobNBT?: TagObject;
  /** Overrides to apply to the gateway generators */
  gatewayOverrides?: GatewayOverrides;
  /** Additional data to apply to the generated trophy file. */
  trophyData?: Omit<OpenBlocksTrophiesTrophy, "entity">;
  /** Override the default weight value for the mob's gateway drops in the trophy bag loot table. */
  trophyBagLootTableWeight?: number;
  /** Omits this mob's gateway pearl from certain loot tables */
  isUniqueMob?: boolean;
  /** Skips generation of Neural Network */
  disableNeuralNetworkGeneration?: true;
  /** Neural Network overrides */
  neuralNetworkOverrides?: Pick<HostileNeuralNetworksDataModel, "gui_scale">;
}

export type MobData = MobDataSpawnOnly | MobDataAll;

export const mobData: MobData[] = [
  {
    spawnOnly: true,
    mobID: "minecraft:goat",
    mobName: "Goat",
    stage: "goat",
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: true,
    mobID: "minecraft:llama",
    mobName: "Llama",
    stage: "llama",
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "waddles:adelie_penguin",
    mobName: "Adelie Penguin",
    stage: "adelie_penguin",
    color: ColorName.Black,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:allay",
    mobName: "Allay",
    stage: "allay",
    color: ColorName.LightBlue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    trophyData: {
      offset: 0,
      scale: 1.75,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:bee",
    mobName: "Bee",
    stage: "bee",
    color: ColorName.Yellow,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    trophyData: {
      behavior: {
        type: "obtrophies:right_click_item",
        execute_behavior: {
          type: "obtrophies:item",
          item: "minecraft:honey_bottle",
        },
        item_to_use: "minecraft:glass_bottle",
        shrink_item_stack: true,
        sound: "minecraft:item.bottle.fill",
      },
      offset: 0,
      scale: 1.5,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:bat",
    mobName: "Bat",
    stage: "bat",
    color: ColorName.Brown,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      offset: -0.3,
      scale: 2,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:axolotl",
    mobName: "Axolotl",
    stage: "axolotl",
    color: ColorName.Pink,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_fish_and_other_sea_creatures_should_spawn_please_work_please_please_please",
      },
    },
    trophyData: {
      offset: 0,
      scale: 1.25,
      variants: [
        {
          Variant: "0",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "forcecraft:blue_chu_chu",
    mobName: "Blue Chu Chu",
    stage: "blue_chu_chu",
    color: ColorName.Blue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      Size: new Int(3),
    },
    trophyData: {
      offset: -0.3,
      scale: 2,
    },
  },
  {
    spawnOnly: false,
    mobID: "monsterplus:abyssologer",
    mobName: "Abyssologer",
    stage: "abyssologer",
    color: ColorName.Gray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:camel",
    mobName: "Camel",
    stage: "camel",
    color: ColorName.Yellow,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 7,
    maxLightLevel: 15,
    trophyData: {
      offset: 0,
      scale: 0.75,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:blaze",
    mobName: "Blaze",
    stage: "blaze",
    color: ColorName.Orange,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_nether_mobs_need_to_spawn_and_it_probably_works",
      },
      potion: "minecraft:glowing,10000,1",
      nbt: {
        Team: "sf5_gold_team",
      },
    },
    trophyData: {
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:cat",
    mobName: "Cat",
    stage: "cat",
    color: ColorName.Gray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    trophyData: {
      offset: 0,
      scale: 1.25,
      variants: [
        {
          VariantID: "minecraft:jellie",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:cave_spider",
    mobName: "Cave Spider",
    stage: "cave_spider",
    color: ColorName.Black,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:chicken",
    mobName: "Chicken",
    stage: "chicken",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 10000,
        item: "minecraft:egg",
        sound: "minecraft:entity.chicken.egg",
      },
      offset: 0,
      scale: 1.5,
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:bone_spider",
    mobName: "Bone Spider",
    stage: "bone_spider",
    color: ColorName.Purple,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:cream_cow",
    mobName: "Cream Cow",
    stage: "cream_cow",
    color: ColorName.Yellow,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:cod",
    mobName: "Cod",
    stage: "cod",
    color: ColorName.Brown,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      Air: new Int(-50000),
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_fish_and_other_sea_creatures_should_spawn_please_work_please_please_please",
      },
    },
    trophyData: {
      offset: 0,
      scale: 1.75,
    },
  },
  {
    spawnOnly: false,
    mobID: "forcecraft:creeper_tot",
    mobName: "Creeper Tot",
    stage: "creeper_tot",
    color: ColorName.Lime,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      offset: -0.3,
      scale: 2,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:creeper",
    mobName: "Creeper",
    stage: "creeper",
    color: ColorName.Lime,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      behavior: {
        type: "obtrophies:explosion",
        destructive: false,
        power: 2,
      },
      offset: 0,
      scale: 1,
      variants: [
        {
          powered: "false",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "monsterplus:crystal_zombie",
    mobName: "Crystal Zombie",
    stage: "crystal_zombie",
    color: ColorName.Magenta,
    gatewayTypes: [GatewayType.Normal, GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:dolphin",
    mobName: "Dolphin",
    stage: "dolphin",
    color: ColorName.LightBlue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      Moistness: new Int(50000),
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_fish_and_other_sea_creatures_should_spawn_please_work_please_please_please",
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:mob_effect",
        amplifier: 0,
        effect: "minecraft:dolphins_grace",
        time: 300,
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:donkey",
    mobName: "Donkey",
    stage: "donkey",
    color: ColorName.Brown,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:wheat",
      },
      offset: 0,
      scale: 0.9,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:cow",
    mobName: "Cow",
    stage: "cow",
    color: ColorName.Brown,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:right_click_item",
        execute_behavior: {
          type: "obtrophies:item",
          item: "minecraft:milk_bucket",
        },
        item_to_use: "minecraft:bucket",
        shrink_item_stack: true,
        sound: "minecraft:entity.cow.milk",
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:drowned",
    mobName: "Drowned",
    stage: "drowned",
    color: ColorName.Blue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_fish_and_other_sea_creatures_should_spawn_please_work_please_please_please",
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 50000,
        item: "minecraft:nautilus_shell",
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:enderman",
    mobName: "Enderman",
    stage: "enderman",
    color: ColorName.Black,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    spawnOverrides: {
      potion: "minecraft:glowing,10000,1",
      nbt: {
        Team: "sf5_black_team",
      },
    },
    trophyData: {
      offset: 0,
      scale: 0.75,
    },
  },
  {
    spawnOnly: false,
    mobID: "forcecraft:ender_tot",
    mobName: "Ender Tot",
    stage: "ender_tot",
    color: ColorName.Black,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      offset: -0.3,
      scale: 2,
    },
  },

  {
    spawnOnly: false,
    mobID: "minecraft:ender_dragon",
    mobName: "Ender Dragon",
    stage: "ender_dragon",
    color: ColorName.Black,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 15,
    trophyData: {
      scale: 0.4,
    },
    gatewayOverrides: {
      leashRange: 256,
      spacing: 256,
      spawnCount: 1,
      preventScaling: true,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:endermite",
    mobName: "Endermite",
    stage: "endermite",
    color: ColorName.Purple,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:spawn_blocks_for_end_entities",
      },
    },
    trophyData: {
      offset: 0,
      scale: 1.5,
    },
  },
  {
    spawnOnly: false,
    mobID: "energeticsheep:energetic_sheep",
    mobName: "Energetic Sheep",
    stage: "energetic_sheep",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 7,
    maxLightLevel: 15,
    isUniqueMob: true, // TODO: Exclude from treasure bags (and eventually villager trades)
  },
  {
    spawnOnly: false,
    mobID: "forcecraft:fairy",
    mobName: "Fairy",
    stage: "fairy",
    color: ColorName.LightBlue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
    disableNeuralNetworkGeneration: true,
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:fancy_chicken",
    mobName: "Fancy Chicken",
    stage: "fancy_chicken",
    color: ColorName.Cyan,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:evoker",
    mobName: "Evoker",
    stage: "evoker",
    color: ColorName.Gray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:frog",
    mobName: "Frog",
    stage: "frog",
    color: ColorName.Green,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:slime_ball",
      },
      offset: 0,
      scale: 1.5,
      variants: [
        {
          variant: "minecraft:cold",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:fox",
    mobName: "Fox",
    stage: "fox",
    color: ColorName.Orange,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    spawnOverrides: {
      helditem: [
        "50=minecraft:bone",
        "5=minecraft:orange_dye",
        "5=ars_nouveau:blue_archwood_sapling",
        "5=ars_nouveau:green_archwood_sapling",
        "5=ars_nouveau:red_archwood_sapling",
        "5=ars_nouveau:purple_archwood_sapling",
      ],
    },
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:sweet_berries",
      },
      offset: 0,
      scale: 1,
      variants: [
        {
          Type: "red",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:furnace_golem",
    mobName: "Furnace Golem",
    stage: "furnace_golem",
    color: ColorName.LightGray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "monsterplus:glow_skeleton",
    mobName: "Glow Skeleton",
    stage: "glow_skeleton",
    color: ColorName.Cyan,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
  },
  {
    spawnOnly: false,
    mobID: "ghastcow:ghast_cow",
    mobName: "Ghast Cow",
    stage: "ghast_cow",
    color: ColorName.Brown,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 0,
    maxLightLevel: 7,
    neuralNetworkOverrides: {
      gui_scale: 0.75,
    },
    gatewayOverrides: {
      leashRange: 256,
      spacing: 256,
      spawnCount: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:glow_squid",
    mobName: "Glow Squid",
    stage: "glow_squid",
    color: ColorName.Cyan,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      Air: new Int(-50000),
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_fish_and_other_sea_creatures_should_spawn_please_work_please_please_please",
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:mob_effect",
        amplifier: 0,
        effect: "minecraft:glowing",
        time: 200,
      },
      offset: 0.5,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:ghast",
    mobName: "Ghast",
    stage: "ghast",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_nether_mobs_need_to_spawn_and_it_probably_works",
      },
    },
    trophyData: {
      offset: 0.3,
      scale: 0.25,
    },
    neuralNetworkOverrides: {
      gui_scale: 0.4,
    },
  },
  {
    spawnOnly: false,
    mobID: "forcecraft:green_chu_chu",
    mobName: "Green Chu Chu",
    stage: "green_chu_chu",
    color: ColorName.Green,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      Size: new Int(3),
    },
    trophyData: {
      offset: -0.3,
      scale: 2,
    },
  },
  {
    spawnOnly: false,
    mobID: "forcecraft:gold_chu_chu",
    mobName: "Gold Chu Chu",
    stage: "gold_chu_chu",
    color: ColorName.Yellow,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      Size: new Int(3),
    },
    trophyData: {
      offset: -0.3,
      scale: 2,
    },
  },
  {
    spawnOnly: false,
    mobID: "colourfulgoats:goat",
    mobName: "Goat",
    stage: "goat",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "colourfulllamas:llama",
    mobName: "Llama",
    stage: "llama",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      Attributes: [{ Name: "generic.movementSpeed", Base: 0.0 }],
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    gatewayOverrides: {
      finalizeGatewayEntitySpawn: false,
      preventSpeedModifiers: true,
    },
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:guardian",
    mobName: "Guardian",
    stage: "guardian",
    color: ColorName.LightGray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:horse",
    mobName: "Horse",
    stage: "horse",
    color: ColorName.Brown,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:wheat",
      },
      offset: 0,
      scale: 0.9,
      variants: [
        {
          Variant: "2",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:jumbo_rabbit",
    mobName: "Jumbo Rabbit",
    stage: "jumbo_rabbit",
    color: ColorName.Pink,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:hyper_rabbit",
    mobName: "Hyper Rabbit",
    stage: "hyper_rabbit",
    color: ColorName.Orange,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:hoglin",
    mobName: "Hoglin",
    stage: "hoglin",
    color: ColorName.Pink,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:leather",
      },
      offset: 0,
      scale: 0.85,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:husk",
    mobName: "Husk",
    stage: "husk",
    color: ColorName.Brown,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:feather",
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:iron_golem",
    mobName: "Iron Golem",
    stage: "iron_golem",
    color: ColorName.LightGray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      offset: 0,
      scale: 0.75,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:illusioner",
    mobName: "Illusioner",
    stage: "illusioner",
    color: ColorName.Gray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      behavior: {
        type: "obtrophies:mob_effect",
        amplifier: 1,
        effect: "minecraft:blindness",
        time: 100,
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:magma_cow",
    mobName: "Magma Cow",
    stage: "magma_cow",
    color: ColorName.Orange,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "monsterplus:lava_squid",
    mobName: "Lava Squid",
    stage: "lava_squid",
    color: ColorName.Orange,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
  },

  {
    spawnOnly: false,
    mobID: "lava_monster:lava_monster",
    mobName: "Lava Monster",
    stage: "lava_monster",
    color: ColorName.Orange,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:melon_golem",
    mobName: "Melon Golem",
    stage: "melon_golem",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:moolip",
    mobName: "Moolip",
    stage: "moolip",
    color: ColorName.Pink,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:moobloom",
    mobName: "Moobloom",
    stage: "moobloom",
    color: ColorName.Yellow,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:magma_cube",
    mobName: "Magma Cube",
    stage: "magma_cube",
    color: ColorName.Orange,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      Size: new Int(3),
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_nether_mobs_need_to_spawn_and_it_probably_works",
      },
    },
    trophyData: {
      offset: 0,
      scale: 1.25,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:ocelot",
    mobName: "Ocelot",
    stage: "ocelot",
    color: ColorName.Yellow,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    trophyData: {
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:mooshroom",
    mobName: "Mooshroom",
    stage: "mooshroom",
    color: ColorName.Red,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:place_block",
        block: "minecraft:red_mushroom",
        placement: "around",
      },
      offset: 0,
      scale: 1,
      variants: [
        {
          Type: "red",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "monsterplus:mother_lava_squid",
    mobName: "Mother Lava Squid",
    stage: "mother_lava_squid",
    color: ColorName.Orange,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      scale: 0.25,
      offset: 0.5,
    },
    neuralNetworkOverrides: {
      gui_scale: 0.25,
    },
    gatewayOverrides: {
      leashRange: 256,
      spacing: 256,
      spawnCount: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "vinery:mule",
    mobName: "Mule",
    stage: "mule",
    color: ColorName.Brown,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
  },
  {
    spawnOnly: false,
    mobID: "monsterplus:opalescent_eye",
    mobName: "Opalescent Eye",
    stage: "opalescent_eye",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:panda",
    mobName: "Panda",
    stage: "panda",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:bamboo",
      },
      offset: 0,
      scale: 0.75,
      variants: [
        {
          HiddenGene: "weak",
          MainGene: "weak",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:parrot",
    mobName: "Parrot",
    stage: "parrot",
    color: ColorName.Red,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    trophyData: {
      offset: 0,
      scale: 1.75,
      variants: [
        {
          Variant: "0",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "monsterplus:overgrown_skeleton",
    mobName: "Overgrown Skeleton",
    stage: "overgrown_skeleton",
    color: ColorName.Green,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:pig",
    mobName: "Pig",
    stage: "pig",
    color: ColorName.Pink,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:porkchop",
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:phantom",
    mobName: "Phantom",
    stage: "phantom",
    color: ColorName.Blue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:phantom_membrane",
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:piglin",
    mobName: "Piglin",
    stage: "piglin",
    color: ColorName.Pink,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_nether_mobs_need_to_spawn_and_it_probably_works",
      },
    },
    trophyData: {
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:piglin_brute",
    mobName: "Piglin Brute",
    stage: "piglin_brute",
    color: ColorName.Pink,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_nether_mobs_need_to_spawn_and_it_probably_works",
      },
    },
    trophyData: {
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:polar_bear",
    mobName: "Polar Bear",
    stage: "polar_bear",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:cod",
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:pillager",
    mobName: "Pillager",
    stage: "pillager",
    color: ColorName.Gray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      behavior: {
        type: "obtrophies:arrow",
        amount: 1,
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:rabbit",
    mobName: "Rabbit",
    stage: "rabbit",
    color: ColorName.Brown,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      RabbitType: new Int(99),
    },
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:carrot",
      },
      offset: 0,
      scale: 2,
      variants: [
        {
          RabbitType: "6",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:pufferfish",
    mobName: "Pufferfish",
    stage: "pufferfish",
    color: ColorName.Orange,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      Air: new Int(-50000),
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_fish_and_other_sea_creatures_should_spawn_please_work_please_please_please",
      },
    },
    trophyData: {
      offset: 0,
      scale: 2,
      variants: [
        {
          PuffState: "2",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:ravager",
    mobName: "Ravager",
    stage: "ravager",
    color: ColorName.Gray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      offset: 0,
      scale: 0.75,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:sheep",
    mobName: "Sheep",
    stage: "sheep",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      offset: 0,
      scale: 1,
      variants: {
        Color: 0,
      },
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:salmon",
    mobName: "Salmon",
    stage: "salmon",
    color: ColorName.Red,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      Air: new Int(-50000),
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_fish_and_other_sea_creatures_should_spawn_please_work_please_please_please",
      },
    },
    trophyData: {
      offset: 0,
      scale: 1.25,
    },
  },
  {
    spawnOnly: false,
    mobID: "forcecraft:red_chu_chu",
    mobName: "Red Chu Chu",
    stage: "red_chu_chu",
    color: ColorName.Red,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      Size: new Int(3),
    },
    trophyData: {
      offset: -0.3,
      scale: 2,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:shulker",
    mobName: "Shulker",
    stage: "shulker",
    color: ColorName.Purple,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:spawn_blocks_for_end_entities",
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:mob_effect",
        amplifier: 1,
        effect: "minecraft:levitation",
        time: 100,
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:skeleton_horse",
    mobName: "Skeleton Horse",
    stage: "skeleton_horse",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:bone",
      },
      offset: 0,
      scale: 0.9,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:silverfish",
    mobName: "Silverfish",
    stage: "silverfish",
    color: ColorName.Gray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      offset: 0,
      scale: 1.5,
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:skeleton_wolf",
    mobName: "Skeleton Wolf",
    stage: "skeleton_wolf",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:sniffer",
    mobName: "Sniffer",
    stage: "sniffer",
    color: ColorName.Green,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    trophyData: {
      offset: 0,
      scale: 0.5,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:skeleton",
    mobName: "Skeleton",
    stage: "skeleton",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    spawnOverrides: {
      helditem: [
        "5=xercapaint:item_palette",
        "5=minecraft:brush",
        "95=minecraft:bow",
      ],
    },
    trophyData: {
      behavior: {
        type: "obtrophies:arrow",
        amount: 1,
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:slime",
    mobName: "Slime",
    stage: "slime",
    color: ColorName.Lime,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      Size: new Int(3),
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      offset: 0,
      scale: 1.25,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:snow_golem",
    mobName: "Snow Golem",
    stage: "snow_golem",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      Pumpkin: new Int(0),
    },
    trophyData: {
      offset: 0,
      scale: 1,
      variants: [
        {
          Pumpkin: "true",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:stray",
    mobName: "Stray",
    stage: "stray",
    color: ColorName.LightGray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      behavior: {
        type: "obtrophies:arrow",
        amount: 1,
        effect: "minecraft:slowness",
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:spider",
    mobName: "Spider",
    stage: "spider",
    color: ColorName.Black,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:stray_bone_spider",
    mobName: "Stray Bone Spider",
    stage: "stray_bone_spider",
    color: ColorName.Cyan,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:squid",
    mobName: "Squid",
    stage: "squid",
    color: ColorName.Blue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      Air: new Int(-50000),
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_fish_and_other_sea_creatures_should_spawn_please_work_please_please_please",
      },
    },
    trophyData: {
      offset: 0.5,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:teacup_pig",
    mobName: "Teacup Pig",
    stage: "teacup_pig",
    color: ColorName.Pink,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:strider",
    mobName: "Strider",
    stage: "strider",
    color: ColorName.Red,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:wet_nether_mobs_need_liquid_and_also_possibly_solid_blocks",
      },
    },
    trophyData: {
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:tropical_fish",
    mobName: "Tropical Fish",
    stage: "tropical_fish",
    color: ColorName.Orange,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      Air: new Int(-50000),
      Variant: new Int(16844033),
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_fish_and_other_sea_creatures_should_spawn_please_work_please_please_please",
      },
      nbt: {
        Variant: "16844033",
      },
    },
    trophyData: {
      offset: 0,
      scale: 2,
      variants: [
        {
          Variant: "65536",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:trader_llama",
    mobName: "Trader Llama",
    stage: "trader_llama",
    color: ColorName.Blue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:llama_spit",
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:tropical_slime",
    mobName: "Tropical Slime",
    stage: "tropical_slime",
    color: ColorName.Cyan,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:tadpole",
    mobName: "Tadpole",
    stage: "tadpole",
    color: ColorName.Brown,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      Air: new Int(-50000),
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_fish_and_other_sea_creatures_should_spawn_please_work_please_please_please",
      },
    },
    trophyData: {
      offset: 0,
      scale: 2,
    },
  },
  {
    spawnOnly: false,
    mobID: "sushigocrafting:tuna",
    mobName: "Tuna",
    stage: "tuna",
    color: ColorName.LightBlue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      Air: new Int(-50000),
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_fish_and_other_sea_creatures_should_spawn_please_work_please_please_please",
      },
    },
  },
  {
    spawnOnly: false,
    mobID: "monsterplus:swamp_zombie",
    mobName: "Swamp Zombie",
    stage: "swamp_zombie",
    color: ColorName.Green,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:turtle",
    mobName: "Turtle",
    stage: "turtle",
    color: ColorName.Lime,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:black",
    mobName: "Black Vein Creeper",
    stage: "black_vein_creeper",
    color: ColorName.Black,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:umbra_cow",
    mobName: "Umbra Cow",
    stage: "umbra_cow",
    color: ColorName.Black,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:blue",
    mobName: "Blue Vein Creeper",
    stage: "blue_vein_creeper",
    color: ColorName.Blue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:cyan",
    mobName: "Cyan Vein Creeper",
    stage: "cyan_vein_creeper",
    color: ColorName.Cyan,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:green",
    mobName: "Green Vein Creeper",
    stage: "green_vein_creeper",
    color: ColorName.Green,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:gray",
    mobName: "Gray Vein Creeper",
    stage: "gray_vein_creeper",
    color: ColorName.Gray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:brown",
    mobName: "Brown Vein Creeper",
    stage: "brown_vein_creeper",
    color: ColorName.Brown,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:light_blue",
    mobName: "Light Blue Vein Creeper",
    stage: "light_blue_vein_creeper",
    color: ColorName.LightBlue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:lime",
    mobName: "Lime Vein Creeper",
    stage: "lime_vein_creeper",
    color: ColorName.Lime,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:magenta",
    mobName: "Magenta Vein Creeper",
    stage: "magenta_vein_creeper",
    color: ColorName.Magenta,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:red",
    mobName: "Red Vein Creeper",
    stage: "red_vein_creeper",
    color: ColorName.Red,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:orange",
    mobName: "Orange Vein Creeper",
    stage: "orange_vein_creeper",
    color: ColorName.Orange,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:purple",
    mobName: "Purple Vein Creeper",
    stage: "purple_vein_creeper",
    color: ColorName.Purple,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:pink",
    mobName: "Pink Vein Creeper",
    stage: "pink_vein_creeper",
    color: ColorName.Pink,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:white",
    mobName: "White Vein Creeper",
    stage: "white_vein_creeper",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:light_gray",
    mobName: "Light Gray Vein Creeper",
    stage: "light_gray_vein_creeper",
    color: ColorName.LightGray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "veincreeper:yellow",
    mobName: "Yellow Vein Creeper",
    stage: "yellow_vein_creeper",
    color: ColorName.Yellow,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      scale: 1.3,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:villager",
    mobName: "Villager",
    stage: "villager",
    color: ColorName.Brown,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    trophyData: {
      offset: 0,
      scale: 1,
      variants: [
        {
          profession: "minecraft:nitwit",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:vex",
    mobName: "Vex",
    stage: "vex",
    color: ColorName.LightBlue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      offset: 0,
      scale: 1.5,
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:viler_witch",
    mobName: "Viler Witch",
    stage: "viler_witch",
    color: ColorName.Blue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:vindicator",
    mobName: "Vindicator",
    stage: "vindicator",
    color: ColorName.Gray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:wandering_trader",
    mobName: "Wandering Trader",
    stage: "wandering_trader",
    color: ColorName.Blue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 10000,
        item: "minecraft:emerald",
        sound: "minecraft:entity.wandering_trader.yes",
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "vinery:wandering_winemaker",
    mobName: "Wandering Winemaker",
    stage: "wandering_winemaker",
    color: ColorName.Red,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:witch",
    mobName: "Witch",
    stage: "witch",
    color: ColorName.LightGray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      behavior: {
        type: "obtrophies:mob_effect",
        amplifier: 1,
        effect: "minecraft:blindness",
        time: 70,
      },
      offset: 0,
      scale: 0.9,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:warden",
    mobName: "Warden",
    stage: "warden",
    color: ColorName.Cyan,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      behavior: {
        type: "obtrophies:mob_effect",
        amplifier: 0,
        effect: "minecraft:darkness",
        time: 200,
      },
      offset: 0,
      scale: 0.75,
    },
    gatewayOverrides: {
      leashRange: 256,
      spacing: 256,
      spawnCount: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:wither_skeleton",
    mobName: "Wither Skeleton",
    stage: "wither_skeleton",
    color: ColorName.Black,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_nether_mobs_need_to_spawn_and_it_probably_works",
      },
    },
    trophyData: {
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:wolf",
    mobName: "Wolf",
    stage: "wolf",
    color: ColorName.LightGray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      offset: 0,
      scale: 1.25,
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:wooly_cow",
    mobName: "Wooly Cow",
    stage: "wooly_cow",
    color: ColorName.Orange,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 7,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:wither",
    mobName: "Wither",
    stage: "wither",
    color: ColorName.Black,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      drop_chance: 0.0075,
      offset: -0.2,
      scale: 0.75,
    },
    gatewayOverrides: {
      leashRange: 256,
      spacing: 256,
      spawnCount: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:wither_skeleton_wolf",
    mobName: "Wither Skeleton Wolf",
    stage: "wither_skeleton_wolf",
    color: ColorName.Black,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:zoglin",
    mobName: "Zoglin",
    stage: "zoglin",
    color: ColorName.Pink,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_nether_mobs_need_to_spawn_and_it_probably_works",
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 10000,
        item: "minecraft:rotten_flesh",
      },
      offset: 0,
      scale: 0.85,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:zombie",
    mobName: "Zombie",
    stage: "zombie",
    color: ColorName.Green,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    spawnOverrides: {
      nbt: {
        Team: "sf5_green_team",
      },
      helditem: ["xercapaint:item_palette", "minecraft:brush"],
    },
    trophyData: {
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:zombie_horse",
    mobName: "Zombie Horse",
    stage: "zombie_horse",
    color: ColorName.Green,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:rotten_flesh",
      },
      offset: 0,
      scale: 0.9,
    },
  },
  {
    spawnOnly: false,
    mobID: "minecraft:zombie_villager",
    mobName: "Zombie Villager",
    stage: "zombie_villager",
    color: ColorName.Green,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      offset: 0,
      scale: 1,
      variants: [
        {
          profession: "minecraft:nitwit",
        },
      ],
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:zombified_pig",
    mobName: "Zombified Pig",
    stage: "zombified_pig",
    color: ColorName.Pink,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:zombified_piglin",
    mobName: "Zombified Piglin",
    stage: "zombified_piglin",
    color: ColorName.Pink,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_nether_mobs_need_to_spawn_and_it_probably_works",
      },
    },
    trophyData: {
      behavior: {
        type: "obtrophies:item",
        cooldown: 20000,
        item: "minecraft:gold_nugget",
      },
      offset: 0,
      scale: 1,
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:albino_cow",
    mobName: "Albino Cow",
    stage: "albino_cow",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    additionalGatewayMobNBT: {
      "pehkui:scale_data_types": {
        "pehkui:reach": {
          scale: new Float(0.05),
        },
      },
    },
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:baby_ghast",
    mobName: "Baby Ghast",
    stage: "baby_ghast",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:bouldering_drowned",
    mobName: "Bouldering Drowned",
    stage: "bouldering_drowned",
    color: ColorName.Blue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:bouldering_zombie",
    mobName: "Bouldering Zombie",
    stage: "bouldering_zombie",
    color: ColorName.Gray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:cluck_shroom",
    mobName: "Cluckshroom",
    stage: "cluckshroom",
    color: ColorName.Red,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "sushigocrafting:shrimp",
    mobName: "Shrimp",
    stage: "shrimp",
    color: ColorName.Pink,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 7,
    maxLightLevel: 15,
    additionalGatewayMobNBT: {
      Air: new Int(-50000),
    },
    spawnOverrides: {
      block: {
        tag: "skyfactory_5:this_is_where_fish_and_other_sea_creatures_should_spawn_please_work_please_please_please",
      },
    },
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:horned_sheep",
    mobName: "Horned Sheep",
    stage: "horned_sheep",
    color: ColorName.White,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:lobber_drowned",
    mobName: "Lobber Drowned",
    stage: "lobber_drowned",
    color: ColorName.Blue,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "earthmobsmod:lobber_zombie",
    mobName: "Lobber Zombie",
    stage: "lobber_zombie",
    color: ColorName.Green,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
  },
  {
    spawnOnly: false,
    mobID: "minecraft:elder_guardian",
    mobName: "Elder Guardian",
    stage: "elder_guardian",
    color: ColorName.LightGray,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 0,
    maxLightLevel: 7,
    trophyData: {
      offset: 0,
      scale: 0.75,
    },
  },
  {
    spawnOnly: false,
    mobID: "ars_nouveau:drygmy",
    mobName: "Drygmy",
    stage: "drygmy",
    color: ColorName.Cyan,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
    trophyData: {
      scale: 1.5,
      variants: [
        {
          color: "cyan",
        },
      ],
    },
    additionalGatewayMobNBT: {
      color: "cyan",
    },
  },
  {
    spawnOnly: false,
    mobID: "ars_nouveau:starbuncle",
    mobName: "Starbuncle",
    stage: "starbuncle",
    color: ColorName.Magenta,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
    trophyData: {
      scale: 2.0,
      variants: [
        {
          starbuncleData: { color: "purple" },
        },
      ],
    },
    additionalGatewayMobNBT: {
      starbuncleData: {
        color: "purple",
        cosmetic: { id: "ars_nouveau:starbuncle_shades", Count: 1 },
      },
    },
  },
  {
    spawnOnly: false,
    mobID: "ars_nouveau:whirlisprig",
    mobName: "Whirlisprig",
    stage: "whirlisprig",
    color: ColorName.Lime,
    gatewayTypes: [GatewayType.Normal, GatewayType.Titan],
    minLightLevel: 8,
    maxLightLevel: 15,
    trophyData: {
      scale: 2.0,
    },
  },
  //! DATA MANAGER ENTRY MARKER - DO NOT TOUCH
];

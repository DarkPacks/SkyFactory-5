import { isArray } from "lodash";
import { parse as parseNBT, stringify, TagObject } from "nbt-ts";
import path from "path";
import {
  GatewayWaveEntity,
  GatewayWaveModifier,
  NormalGateway,
} from "schemas/minecraft/gateways/gateways-v2";
import { GatewayType } from "./constants";
import { generateGatewayGenerator } from "./gateway-utils";
import { GatewayOverrides } from "./types";
import { BaseEntity, cleanEntityNBT, isFriendlyMob } from "./utils";

const gatewayBasePath = path.resolve(
  "./src/minecraft/global_packs/required_data/skyfactory_5/data/gateways/gateways/normal",
);

export const defaultNormalBaseEntityNBT =
  '{DeathLootTable:"skyfactory_5:gateway_entities",ArmorItems:[{},{},{},{id:"simplehats:fro",Count:1b,tag:{display:{color:16352035},Unbreakable:1b}}],"pehkui:scale_data_types":{"pehkui:hitbox_width":{scale:1f},"pehkui:width":{scale:1f},"pehkui:height":{scale:1f}},Tags:["gateway_entity"]}';

export function createStandardNormalGateway(
  gatewayID: string,
  baseEntity: BaseEntity,
  color: string,
  dye: string,
  overrides: GatewayOverrides,
): NormalGateway {
  const waveEntity: GatewayWaveEntity = cleanEntityNBT({
    type: "gateways:standard",
    count: overrides.spawnCount ?? 4,
    entity: baseEntity.entity,
    nbt: baseEntity.nbt,
    desc: baseEntity.desc,
    finalize_spawn: baseEntity.finalize_spawn,
  });

  if (waveEntity.nbt) {
    const waveEntityNBT =
      typeof waveEntity.nbt === "string"
        ? (parseNBT(waveEntity.nbt) as TagObject)
        : (parseNBT(JSON.stringify(waveEntity.nbt)) as TagObject);

    if (isArray(waveEntityNBT["Tags"])) {
      const gatewayEntityTag = waveEntityNBT["Tags"].find(
        (val) => val === "gateway_entity",
      );
      if (gatewayEntityTag === undefined) {
        waveEntityNBT["Tags"].push("gateway_entity");
      }
    } else {
      waveEntityNBT["Tags"] = ["gateway_entity"];
    }

    waveEntity.nbt = stringify(waveEntityNBT, {
      pretty: false,
      breakLength: Infinity,
    });
  }

  const newData: NormalGateway = {
    __typename: "NormalGateway",
    size: "small",
    color: color,
    failures: [
      {
        type: "gateways:command",
        command: `summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Invulnerable:1b,Item:{id:"gateways:gate_pearl",Count:1b,tag:{gateway:"gateways:normal/${gatewayID}"}}}`,
        desc: "gateways.failures.common.gateway_pearl",
      },
      {
        type: "gateways:command",
        command: `team join sf5_gold_team @e[distance=..5,nbt={Item:{id:"gateways:gate_pearl"}}]`,
        desc: "",
      },
    ],
    waves: [
      {
        entities: [{ ...waveEntity }],
        rewards: [
          {
            type: "gateways:experience",
            experience: 50,
          },
          {
            type: "gateways:stack",
            stack: {
              item: dye,
              count: 16,
            },
          },
        ],
        max_wave_time: 1200,
        setup_time: 200,
      },
      {
        entities: [{ ...waveEntity }],
        modifiers: [
          {
            type: "gateways:attribute",
            attribute: "generic.max_health",
            operation: "multiply_total",
            value: 0.15,
          },
          {
            type: "gateways:attribute",
            attribute: "generic.armor",
            operation: "addition",
            value: 2,
          },
          {
            type: "gateways:attribute",
            attribute: "generic.attack_damage",
            operation: "multiply_total",
            value: 0.15,
          },
          {
            type: "gateways:attribute",
            attribute: "generic.knockback_resistance",
            operation: "addition",
            value: 0.05,
          },
          {
            type: "gateways:attribute",
            attribute: "generic.movement_speed",
            operation: "multiply_total",
            value: 0.05,
          },
        ].filter((m) => {
          if (
            m.attribute === "generic.movement_speed" &&
            overrides.preventSpeedModifiers
          ) {
            return false;
          }
          return true;
        }) as GatewayWaveModifier[],
        rewards: [
          {
            type: "gateways:experience",
            experience: 75,
          },
          {
            type: "gateways:stack",
            stack: {
              item: dye,
              count: 16,
            },
          },
        ],
        max_wave_time: 1800,
        setup_time: 280,
      },
      {
        entities: [{ ...waveEntity }],
        modifiers: [
          {
            type: "gateways:attribute",
            attribute: "generic.max_health",
            operation: "multiply_total",
            value: 0.2,
          },
          {
            type: "gateways:attribute",
            attribute: "generic.armor",
            operation: "addition",
            value: 3,
          },
          {
            type: "gateways:attribute",
            attribute: "generic.attack_damage",
            operation: "multiply_total",
            value: 0.2,
          },
          {
            type: "gateways:attribute",
            attribute: "generic.knockback_resistance",
            operation: "addition",
            value: 0.15,
          },
          {
            type: "gateways:attribute",
            attribute: "generic.movement_speed",
            operation: "multiply_total",
            value: 0.1,
          },
        ].filter((m) => {
          if (
            m.attribute === "generic.movement_speed" &&
            overrides.preventSpeedModifiers
          ) {
            return false;
          }
          return true;
        }) as GatewayWaveModifier[],
        rewards: [
          {
            type: "gateways:experience",
            experience: 100,
          },
          {
            type: "gateways:stack",
            stack: {
              item: dye,
              count: 32,
            },
          },
        ],
        max_wave_time: 2400,
        setup_time: 340,
      },
    ],
    rewards: [
      {
        type: "gateways:experience",
        experience: 250,
      },
      {
        type: "gateways:command",
        command: `summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Invulnerable:1b,Item:{id:"obtrophies:trophy",Count:1b,tag:{BlockEntityTag:{VariantID:0,entity:"${waveEntity.entity}"}}}}`,
        desc: `gateways.rewards.trophy.${gatewayID}`,
      },
      {
        type: "gateways:command",
        command: `team join sf5_gold_team @e[distance=..5,nbt={Item:{id:"obtrophies:trophy"}}]`,
        desc: "",
      },
    ],
    rules: {
      leash_range: overrides.leashRange ?? 32,
      spacing: overrides.spacing ?? 32,
      spawn_range: 2,
    },
    boss_event: {
      mode: "name_plate",
    },
    spawn_algorithm: "gateways:inward_spiral",
  };

  if (isFriendlyMob(waveEntity.entity)) {
    newData.rewards!.push({
      type: "gateways:summon",
      entity: waveEntity,
    });
  }

  const waveModifiers = [
    {
      waveIndex: 0,
      appendedEntityNBT:
        '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 1.0f}, "pehkui:width": {scale:1.0f}, "pehkui:height": {scale: 1.0f}}}',
    },
    {
      waveIndex: 1,
      appendedEntityNBT:
        '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 0.95f}, "pehkui:width": {scale: 1.5f}, "pehkui:height": {scale: 1.5f}}}',
    },
    {
      waveIndex: 2,
      appendedEntityNBT:
        '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 0.8f}, "pehkui:width": {scale: 2.0f}, "pehkui:height": {scale: 2.0f}}}',
    },
  ];

  waveModifiers.forEach((wave) => {
    const newNBT: TagObject = waveEntity.nbt
      ? typeof waveEntity.nbt === "string"
        ? (parseNBT(waveEntity.nbt) as TagObject)
        : (parseNBT(JSON.stringify(waveEntity.nbt)) as TagObject)
      : {};

    const appendedEntityNBT: TagObject = parseNBT(
      wave.appendedEntityNBT,
    ) as TagObject;

    Object.entries(appendedEntityNBT).forEach(([key, val]) => {
      if (key === "pehkui:scale_data_types" && !overrides.preventScaling) {
        newNBT[key] = val;
      }
    });

    newData.waves[wave.waveIndex].entities[0] = {
      ...newData.waves[wave.waveIndex].entities[0],
      nbt: newNBT
        ? stringify(newNBT, {
            pretty: false,
            breakLength: Infinity,
          })
        : undefined,
    };
  });

  return newData;
}

export const generateNormalGateways = generateGatewayGenerator(
  gatewayBasePath,
  createStandardNormalGateway,
  parseNBT(defaultNormalBaseEntityNBT) as TagObject,
  (entry) =>
    entry.spawnOnly === false &&
    entry.gatewayTypes.includes(GatewayType.Normal),
);

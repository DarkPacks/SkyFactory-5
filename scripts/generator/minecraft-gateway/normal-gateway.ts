import { isArray } from "lodash";
import { parse as parseNBT, stringify, TagObject } from "nbt-ts";
import {
  GatewayWaveEntity,
  NormalGateway,
} from "schemas/minecraft/gateways/gateways-v2";
import { BaseEntity, cleanEntityNBT, isFriendlyMob } from "./utils";

export const defaultNormalBaseEntityNBT =
  '{DeathLootTable:"skyfactory_5:gateway_entities",ArmorItems:[{},{},{},{id:"simplehats:fro",Count:1b,tag:{display:{color:16352035},Unbreakable:1b}}],"pehkui:scale_data_types":{"pehkui:hitbox_width":{scale:1f},"pehkui:width":{scale:1f},"pehkui:height":{scale:1f}},Tags:["gateway_entity"]}';

export function createStandardNormalGateway(
  baseEntity: BaseEntity,
  color: string,
  dye: string,
): NormalGateway {
  const waveEntity: GatewayWaveEntity = cleanEntityNBT({
    ...baseEntity,
    type: "gateways:standard",
  });
  waveEntity.count = 4;

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
    size: "large",
    color: color,
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
        ],
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
        ],
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
        type: "gateways:stack",
        stack: {
          item: "obtrophies:trophy",
          nbt: {
            BlockEntityTag: {
              SpecialCycleVariant: 0,
              VariantID: 0,
              entity: waveEntity.entity,
            },
          },
        },
      },
    ],
    rules: {
      leash_range: 32,
      spacing: 8,
      spawn_range: 5,
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

    Object.entries(appendedEntityNBT).forEach(
      ([key, val]) => (newNBT[key] = val),
    );

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
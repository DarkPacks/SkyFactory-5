import { isArray } from "lodash";
import { parse as parseNBT, stringify, TagObject } from "nbt-ts";
import path from "path";
import {
  EndlessGateway,
  EndlessGatewayModifier,
  GatewayWaveEntity,
} from "schemas/minecraft/gateways/gateways-v2";
import { GatewayType } from "./constants";
import { generateGatewayGenerator } from "./gateway-utils";
import { GatewayOverrides } from "./types";
import { BaseEntity, cleanEntityNBT } from "./utils";

const gatewayBasePath = path.resolve(
  "./src/minecraft/global_packs/required_data/skyfactory_5/data/gateways/gateways/titan",
);

export const defaultTitanBaseEntityNBT =
  '{ArmorItems:[{},{},{},{id:"simplehats:fro",Count:1b,tag:{display:{color:16352035},Unbreakable:1b}}],Tags:["gateway_entity"]}';

export function createStandardTitanGateway(
  _gatewayID: string,
  baseEntity: BaseEntity,
  color: string,
  dye: string,
  overrides: GatewayOverrides,
): EndlessGateway {
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

  const newData: EndlessGateway = {
    __typename: "EndlessGateway",
    type: "gateways:endless",
    size: "medium",
    color: color,
    base_wave: {
      entities: [waveEntity],
      rewards: [
        {
          type: "gateways:experience",
          experience: 50,
        },
        {
          type: "gateways:stack",
          stack: {
            item: dye,
            count: 8,
          },
        },
      ],
      max_wave_time: 1200,
      setup_time: 200,
    },
    modifiers: [
      {
        application_mode: {
          type: "gateways:after_every_n_waves",
          waves: 3,
          max: 1024,
        },
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
            value: 1,
          },
          {
            type: "gateways:attribute",
            attribute: "generic.attack_damage",
            operation: "multiply_total",
            value: 0.25,
          },
          {
            type: "gateways:attribute",
            attribute: "generic.knockback_resistance",
            operation: "addition",
            value: 0.05,
          },
        ],
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

  const bossWaves = [
    {
      wave: 10,
      appendedEntityNBT:
        '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 1.0f}, "pehkui:width": {scale:1.0f}, "pehkui:height": {scale: 1.0f}}}',
      gearSet: "gateways:inferium",
    },
    {
      wave: 20,
      appendedEntityNBT:
        '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 0.95f}, "pehkui:width": {scale: 1.5f}, "pehkui:height": {scale: 1.5f}}}',
      gearSet: "gateways:prudentium",
    },
    {
      wave: 30,
      appendedEntityNBT:
        '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 0.8f}, "pehkui:width": {scale: 2.0f}, "pehkui:height": {scale: 2.0f}}}',
      gearSet: "gateways:tertium",
    },
    {
      wave: 40,
      appendedEntityNBT:
        '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 0.75f}, "pehkui:width": {scale: 2.5f}, "pehkui:height": {scale: 2.5f}}}',
      gearSet: "gateways:imperium",
    },
    {
      wave: 50,
      appendedEntityNBT:
        '{"pehkui:scale_data_types": {"pehkui:hitbox_width": {scale: 0.72f}, "pehkui:width": {scale: 3.0f}, "pehkui:height": {scale: 3.0f}}}',
      gearSet: "gateways:supremium",
    },
  ];

  const bossWaveModifiers = bossWaves.map<EndlessGatewayModifier>((wave) => {
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

    return {
      application_mode: {
        type: "gateways:only_on_wave",
        wave: wave.wave,
      },
      entities: [
        {
          ...waveEntity,
          count: 1,
          nbt: newNBT
            ? stringify(newNBT, {
                pretty: false,
                breakLength: Infinity,
              })
            : undefined,
          modifiers: [
            {
              type: "gateways:gear_set",
              gear_set: wave.gearSet,
            },
          ],
        },
      ],
    };
  });

  newData.modifiers.push(...bossWaveModifiers);

  return newData;
}

export const generateTitanGateways = generateGatewayGenerator(
  gatewayBasePath,
  createStandardTitanGateway,
  parseNBT(defaultTitanBaseEntityNBT) as TagObject,
  (entry) =>
    entry.spawnOnly === false && entry.gatewayTypes.includes(GatewayType.Titan),
);

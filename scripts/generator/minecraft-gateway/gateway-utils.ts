import { unlink } from "fs/promises";
import glob from "glob-promise";
import { defaultsDeep, snakeCase } from "lodash";
import cloneDeep from "lodash.clonedeep";
import { stringify as stringifyNBT, TagObject } from "nbt-ts";
import path from "path";
import { writeJSONFile } from "scripts/utils/file";
import { mapColorNameToHex } from "scripts/utils/minecraft-colors";
import { MobData } from "./data-manager";
import { GatewayOverrides } from "./types";
import { BaseEntity, getDyeFromColor } from "./utils";

type CreateGatewayFn = (
  gatewayID: string,
  baseEntity: BaseEntity,
  color: string,
  dye: string,
  overrides: GatewayOverrides,
) => object;

export function generateGatewayGenerator<T extends CreateGatewayFn>(
  gatewayBasePath: string,
  createGatewayFn: T,
  defaultEntityNBT: TagObject,
  filter: (mobEntry: MobData[0]) => boolean,
) {
  return async function generateGateways(data: MobData) {
    const files = await glob(`${gatewayBasePath}/**/*.json`);

    await Promise.all(files.map((filePath) => unlink(filePath)));

    await Promise.all(
      data.filter(filter).map((entry) => {
        if (entry.spawnOnly) {
          return;
        }

        const colorHex = mapColorNameToHex(entry.color);
        if (colorHex === null) {
          throw new Error(`Unsupported color for mobID ${entry.mobID}`);
        }

        const dye = getDyeFromColor(entry.color);
        if (dye === null) {
          throw new Error(
            `Unsupported color for dye ${entry.color} for mobID ${entry.mobID}`,
          );
        }

        const gatewayID = snakeCase(entry.mobName);

        const json = createGatewayFn(
          gatewayID,
          {
            entity: entry.mobID,
            nbt: stringifyNBT(
              defaultsDeep(
                cloneDeep(entry.additionalGatewayMobNBT),
                defaultEntityNBT,
              ),
            ),
            finalize_spawn: entry.gatewayOverrides?.finalizeGatewayEntitySpawn,
          },
          colorHex,
          dye,
          entry.gatewayOverrides || {},
        );

        return writeJSONFile(
          path.join(gatewayBasePath, `${gatewayID}.json`),
          json,
          "json",
        );
      }),
    );
  };
}

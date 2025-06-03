import { merge } from "lodash";
import path from "path";
import { HostileNeuralNetworksDataModel } from "schemas/minecraft/hostilenetworks/data-model";
import {
  checkFileExists,
  readJSONFile,
  writeJSONFile,
} from "scripts/utils/file";
import { mapColorNameToHex } from "scripts/utils/minecraft-colors";
import { MobData } from "./data-manager";
import { getDyeFromColor } from "./utils";

const rootDir = path.join(
  "src",
  "minecraft",
  "global_packs",
  "required_data",
  "skyfactory_5",
  "data",
  "hostilenetworks",
  "data_models",
);

export async function generateHostileNeuralNetworkEntries(data: MobData) {
  await Promise.all(
    data.map(async (entry) => {
      if (entry.spawnOnly || entry.disableNeuralNetworkGeneration) {
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

      const [, mob] = entry.mobID.split(":");
      if (!mob) {
        throw new Error("invalid mob ID");
      }

      const filePath = path.join(rootDir, `${mob}.json`);
      const fileExists = await checkFileExists(filePath);
      if (!fileExists) {
        throw new Error(
          `file doesn't exist for mobID ${entry.mobID}. Expected at ${filePath}`,
        );
      }

      const data = await readJSONFile<HostileNeuralNetworksDataModel>(filePath);

      data.name_color = colorHex;
      data.base_drop = {
        item: dye,
        count: 8,
      };
      data.tier_data = [12, 60, 360, 1260];

      if (entry.neuralNetworkOverrides) {
        merge(data, entry.neuralNetworkOverrides);
      }

      await writeJSONFile(filePath, data, "json");
    }),
  );
}

import { mkdir } from "fs/promises";
import type { CustomActionFunction } from "node-plop";
import path from "path";
import {
  getSrcPath,
  PromptName,
} from "scripts/generator/minecraft-json-things/constants";
import { formatResourceLocation } from "scripts/generator/minecraft-json-things/utils/resource-location";
import {
  checkFileExists,
  readJSONFile,
  writeJSONFile,
} from "scripts/utils/file";

export function createUpsertTagAction(
  type: "item" | "block",
  tagNamespace: string,
  tagPath: string,
): CustomActionFunction {
  const filePath = getSrcPath(
    `./data/${tagNamespace}/tags/${type}s/${tagPath}.json`,
  );

  type TagData = {
    values?: string[];
  };

  return async (answers) => {
    let json: TagData = {};

    if (await checkFileExists(filePath)) {
      json = await readJSONFile<TagData>(filePath);
    } else {
      await mkdir(path.parse(filePath).dir, { recursive: true });
    }

    if (!json.values) {
      json.values = [];
    }

    json.values.push(
      formatResourceLocation(
        answers[PromptName.Namespace],
        answers[PromptName.Path],
      ),
    );

    await writeJSONFile(filePath, json, "json");

    return `Upserted ${filePath}`;
  };
}

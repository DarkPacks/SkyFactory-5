import { mkdir } from "fs/promises";
import type { CustomActionFunction } from "node-plop";
import path from "path";
import {
  getSrcPath,
  packNamespace,
  PromptName,
} from "scripts/generator/minecraft-json-things/constants";
import {
  checkFileExists,
  readJSONFile,
  writeJSONFile,
} from "scripts/utils/file";

export function createUpsertLangAction(
  type: "item" | "block",
): CustomActionFunction {
  const filePath = getSrcPath(`./assets/${packNamespace}/lang/en_us.json`);

  type LangData = {
    [k: string]: string;
  };

  return async (answers) => {
    let json: LangData = {};

    if (await checkFileExists(filePath)) {
      json = await readJSONFile<LangData>(filePath);
    } else {
      await mkdir(path.parse(filePath).dir, { recursive: true });
    }

    const langKey = `${type}.${answers[PromptName.Namespace]}.${
      answers[PromptName.Path]
    }`;

    json[langKey] = answers[PromptName.Name];

    await writeJSONFile(filePath, json, "json");

    return `Upserted ${filePath}`;
  };
}

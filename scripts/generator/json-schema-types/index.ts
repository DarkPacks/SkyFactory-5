import fs from "fs/promises";
import glob from "glob-promise";
import { compileFromFile } from "json-schema-to-typescript";
import path from "path";
import { RegisterGeneratorFn } from "scripts/generator/models";
import { schemaPath } from "./constants";
import { schemaFiles } from "./schema-files";

export const registerGenerator: RegisterGeneratorFn = (plop) => {
  plop.setActionType("generateSchemaTypes", async () => {
    const files = await glob(schemaPath + "/**/*.json");

    let filesGenerated = 0;

    await Promise.all(
      files.map(async (filePath) => {
        const fileName = filePath.replace(`${schemaPath}/`, "");

        if (!schemaFiles.has(fileName)) {
          return;
        }

        const compiled = await compileFromFile(path.join(schemaPath, fileName));

        await fs.writeFile(
          path.join(schemaPath, `${path.parse(fileName).name}.d.ts`),
          compiled,
        );

        filesGenerated += 1;
      }),
    );

    return `Successfully generated ${filesGenerated} schema type files`;
  });

  plop.setGenerator("JSON Schema Types", {
    description: "Generates JSON Schema Types",
    prompts: [],
    actions: [
      {
        type: "generateSchemaTypes",
      },
    ],
  });
};

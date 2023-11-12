import chalk from "chalk";
import { readFile, writeFile } from "fs/promises";
import glob from "glob-promise";
import { CustomActionFunction } from "node-plop";
import path from "path";
import { RegisterGeneratorFn } from "scripts/generator/models";
import { readJSONFile } from "scripts/utils/file";

const colorScriptFilePath = path.resolve(
  "./src/minecraft/scripts/colors/gateways.zs",
);
const gatewayScriptFilePath = path.resolve(
  "./src/minecraft/scripts/globals.zs",
);
const gatewaysBasePath = path.resolve(
  "./src/minecraft/global_packs/required_data/skyfactory_5/data/gateways/gateways",
);

export const registerGenerator: RegisterGeneratorFn = (plop) => {
  plop.setGenerator("Minecraft Gateway CrT List", {
    description:
      "Generates/Updates the list of minecraft gateways in a Crafttweaker script",
    prompts: [],
    actions: [
      updateCrafttweakerGatewayScript,
      updateCrafttweakerColorGatewayScript,
    ],
  });
};

interface GatewayDatapackData {
  color?: string;
  rewards?: {
    stack?: {
      item: string;
      nbt?: {
        BlockEntityTag?: {
          entity?: string;
        };
      };
    };
  }[];
}

const updateCrafttweakerGatewayScript: CustomActionFunction = async (
  _answers,
  _config,
  plop,
) => {
  const gatewayDatapackFiles = await glob(`${gatewaysBasePath}/*.json`, {
    ignore: [],
  });

  const gatewayEntityMappings: { gatewayName: string; entity: string }[] = [];

  const uncategorizedFiles: string[] = [];
  const ignoredFiles: string[] = [];

  await Promise.all(
    gatewayDatapackFiles.map(async (filePath) => {
      const fileName = path.parse(filePath).name;
      const data = await readJSONFile<GatewayDatapackData>(filePath);

      if (!data.color) {
        ignoredFiles.push(fileName);
        return;
      }

      const colorName = mapHexToColorName(data.color);
      if (colorName === null) {
        uncategorizedFiles.push(fileName);
        return;
      }

      if (
        (data.rewards?.length || 0) > 0 &&
        data.rewards?.[0].stack?.item === "obtrophies:trophy" &&
        data.rewards[0].stack.nbt?.BlockEntityTag?.entity
      ) {
        gatewayEntityMappings.push({
          gatewayName: `gateways:${fileName}`,
          entity: data.rewards[0].stack.nbt.BlockEntityTag.entity,
        });
      }
    }),
  );

  const template = await readFile(
    path.join(__dirname, "gateway-template.tpl"),
    "utf-8",
  );
  let script = await readFile(gatewayScriptFilePath, "utf-8");

  script = script.replace(
    /(\/\/ gatewayEntityMapping GENERATOR START(\n|.)*\/\/ gatewayEntityMapping GENERATOR END)/,
    plop.renderString(template, {
      gatewayEntityMappings: gatewayEntityMappings.sort((a, b) =>
        a.gatewayName.localeCompare(b.gatewayName),
      ),
    }),
  );

  await writeFile(gatewayScriptFilePath, script);

  let baseResult = `Successfully updated Crafttweaker Script ${gatewayScriptFilePath}`;

  if (ignoredFiles.length > 0) {
    baseResult += chalk.yellow(
      `\n    Ignored files:  ${ignoredFiles.join(", ")}`,
    );
  }
  if (uncategorizedFiles.length > 0) {
    baseResult += chalk.red(
      `\n    Uncategorized files: ${uncategorizedFiles.join(", ")}`,
    );
  }

  return baseResult;
};

const updateCrafttweakerColorGatewayScript: CustomActionFunction = async (
  _answers,
  _config,
  plop,
) => {
  const gatewayDatapackFiles = await glob(`${gatewaysBasePath}/*.json`, {
    ignore: [],
  });

  const categorizedMap = new Map<ColorName, Set<string>>();

  const uncategorizedFiles: string[] = [];
  const ignoredFiles: string[] = [];

  await Promise.all(
    gatewayDatapackFiles.map(async (filePath) => {
      const fileName = path.parse(filePath).name;
      const data = await readJSONFile<GatewayDatapackData>(filePath);

      if (!data.color) {
        ignoredFiles.push(fileName);
        return;
      }

      const colorName = mapHexToColorName(data.color);
      if (colorName === null) {
        uncategorizedFiles.push(fileName);
        return;
      }

      if (categorizedMap.has(colorName)) {
        categorizedMap.get(colorName)?.add(fileName);
      } else {
        categorizedMap.set(colorName, new Set([fileName]));
      }
    }),
  );

  const template = await readFile(
    path.join(__dirname, "color-template.tpl"),
    "utf-8",
  );
  let script = await readFile(colorScriptFilePath, "utf-8");

  script = script.replace(
    /(\/\/ GENERATOR START(\n|.)*\/\/ GENERATOR END)/,
    plop.renderString(template, {
      colorMappings: Array.from(categorizedMap)
        .map(([key, val]) => ({
          colorName: key,
          gateways: Array.from(val)
            .map((name) => `gateways:${name}`)
            .sort((a, b) => a.localeCompare(b)),
        }))
        .sort((a, b) => a.colorName.localeCompare(b.colorName)),
    }),
  );

  await writeFile(colorScriptFilePath, script);

  let baseResult = `Successfully updated Crafttweaker Script ${colorScriptFilePath}`;

  if (ignoredFiles.length > 0) {
    baseResult += chalk.yellow(
      `\n    Ignored files:  ${ignoredFiles.join(", ")}`,
    );
  }
  if (uncategorizedFiles.length > 0) {
    baseResult += chalk.red(
      `\n    Uncategorized files: ${uncategorizedFiles.join(", ")}`,
    );
  }

  return baseResult;
};

enum ColorName {
  None = "None",
  Red = "Red",
  Green = "Green",
  Lime = "Lime",
  Blue = "Blue",
  LightBlue = "LightBlue",
  Gray = "Gray",
  LightGray = "LightGray",
  Yellow = "Yellow",
  Purple = "Purple",
  Magenta = "Magenta",
  Pink = "Pink",
  White = "White",
  Black = "Black",
  Brown = "Brown",
  Cyan = "Cyan",
  Orange = "Orange",
}

function mapHexToColorName(hexCode: string): ColorName | null {
  switch (hexCode.toLowerCase()) {
    case "#919191":
      return ColorName.None;
    case "#ff0000":
      return ColorName.Red;
    case "#165f16":
      return ColorName.Green;
    case "#02fd02":
      return ColorName.Lime;
    case "#004488":
    case "#0080ff":
    case "#0000ff":
      return ColorName.Blue;
    case "#8fd3ff":
      return ColorName.LightBlue;
    case "#333333":
      return ColorName.Gray;
    case "#d3d3d3":
      return ColorName.LightGray;
    case "#ffff00":
      return ColorName.Yellow;
    case "#7d00dd":
    case "#800080":
      return ColorName.Purple;
    case "#ff00ff":
      return ColorName.Magenta;
    case "#ffc0cb":
      return ColorName.Pink;
    case "#ffffff":
      return ColorName.White;
    case "#000000":
      return ColorName.Black;
    case "#59381f":
    case "#964b00":
      return ColorName.Brown;
    case "#30e1b9":
      return ColorName.Cyan;
    case "#fb6b1d":
      return ColorName.Orange;
  }

  return null;
}

import { mkdir } from "fs/promises";
import type { Answers } from "inquirer";
import type {
  ActionType,
  CustomActionFunction,
  DynamicActionsFunction,
} from "node-plop";
import path from "path";
import { genEnsureConfirmedAction } from "scripts/generator/common";
import { RegisterGeneratorFn } from "scripts/generator/models";
import {
  checkFileExists,
  readJSONFile,
  writeJSONFile,
} from "scripts/utils/file";

const packNamespace = "sf5_things";
const jsonThingsPackRootDir = path.resolve(
  `./src/minecraft/thingpacks/${packNamespace}`,
);

enum PromptName {
  Thing = "thing",
  Name = "name",
  Namespace = "namespace",
  Path = "path",
  Confirmed = "confirmed",
}

enum Thing {
  BlockAndItem = "Block and Item",
}

export const registerGenerator: RegisterGeneratorFn = (plop) => {
  plop.setGenerator("Minecraft JsonThings", {
    description: "Generates JsonThings datapack files",
    prompts: [
      {
        type: "list",
        name: PromptName.Thing,
        message: "What is it you want to generate?",
        choices: Object.values(Thing).sort(),
      },
      {
        type: "input",
        name: PromptName.Name,
        message: (answers) =>
          `What is the name of your ${answers[PromptName.Thing]}?`,
      },
      {
        type: "input",
        name: PromptName.Namespace,
        default: packNamespace,
        message: (answers) =>
          `What is the namespace for the ${answers[PromptName.Thing]}?`,
        validate: (input) => {
          if (/^[a-z0-9_]+$/.test(input)) {
            return true;
          }

          return "Invalid ResourceLocation Namespace";
        },
      },
      {
        type: "input",
        name: PromptName.Path,
        default: (answers: Answers) =>
          `${answers[PromptName.Name].toLowerCase().replaceAll(" ", "_")}`,
        message: (answers) =>
          `What is the path for the ${answers[PromptName.Thing]}?`,
        validate: (input) => {
          if (/^[a-z0-9_]+$/.test(input)) {
            return true;
          }

          return "Invalid ResourceLocation Path";
        },
      },
      {
        type: "confirm",
        name: PromptName.Confirmed,
        message: (answers) =>
          `Create a ${answers[PromptName.Thing]} named ${
            answers[PromptName.Name]
          } with a ResourceLocation of ${answers[PromptName.Namespace]}:${
            answers[PromptName.Path]
          }?`,
        default: true,
      },
    ],
    actions: getActionsForThing,
  });
};

type SkipFn = (answers: Answers) => boolean;

type ActionData = {
  resourceLocation: string;
};

const generateSkipFn =
  (thing: Thing): SkipFn =>
  (answers: Answers) =>
    answers[PromptName.Thing] !== thing;

const getPath = (relativePath: string) =>
  path.resolve(jsonThingsPackRootDir, relativePath);

const getActionsForThing: DynamicActionsFunction = (answers) => {
  const actions: ActionType[] = [
    genEnsureConfirmedAction(PromptName.Confirmed),
  ];

  if (!answers) {
    return actions;
  }

  const actionData: ActionData = {
    resourceLocation: `${answers[PromptName.Namespace]}:${
      answers[PromptName.Path]
    }`,
  };

  switch (answers?.thing as Thing) {
    case Thing.BlockAndItem:
      actions.push(
        ...getActionsForBlockAndItem(
          generateSkipFn(Thing.BlockAndItem),
          actionData,
        ),
      );
      break;

    default:
      break;
  }

  return actions;
};

function createLangAction(
  type: "item" | "block",
  skip: SkipFn,
): CustomActionFunction {
  const filePath = getPath(`./assets/${packNamespace}/lang/en_us.json`);

  type LangData = {
    [k: string]: string;
  };

  return async (answers) => {
    if (skip(answers)) {
      return "";
    }

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

function getActionsForBlockAndItem(
  skip: SkipFn,
  data: ActionData,
): ActionType[] {
  return [
    createLangAction("block", skip),
    {
      type: "add",
      skip,
      path: getPath(`./things/${packNamespace}/block/{{snakeCase path}}.json`),
      templateFile: path.resolve(__dirname, "./templates/things/block.json"),
      data,
    },
    {
      type: "add",
      skip,
      path: getPath(
        `./assets/${packNamespace}/blockstates/{{snakeCase path}}.json`,
      ),
      templateFile: path.resolve(
        __dirname,
        "./templates/assets/blockstate.block.json",
      ),
      data,
    },
    {
      type: "add",
      skip,
      path: getPath(
        `./assets/${packNamespace}/models/block/{{snakeCase path}}.json`,
      ),
      templateFile: path.resolve(
        __dirname,
        "./templates/assets/model.block.json",
      ),
      data,
    },
    {
      type: "add",
      skip,
      path: getPath(
        `./assets/${packNamespace}/models/item/{{snakeCase path}}.json`,
      ),
      templateFile: path.resolve(
        __dirname,
        "./templates/assets/item-model.block.json",
      ),
      data,
    },
    {
      type: "add",
      skip,
      path: getPath(
        `./data/${packNamespace}/loot_tables/blocks/{{snakeCase path}}.json`,
      ),
      templateFile: path.resolve(
        __dirname,
        "./templates/data/loot_tables/block.json",
      ),
      data,
    },
  ];
}

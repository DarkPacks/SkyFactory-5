import {
  getSrcPath,
  getTemplatePath,
  packNamespace,
} from "scripts/generator/minecraft-json-things/constants";
import { createUpsertLangAction } from "scripts/generator/minecraft-json-things/custom-actions/upsert-lang";
import { ActionGetter } from "scripts/generator/minecraft-json-things/models";

export const getActionsForBlockAndItem: ActionGetter = (data) => {
  return [
    createUpsertLangAction("block"),
    {
      type: "add",
      path: getSrcPath(
        `./things/${packNamespace}/block/{{snakeCase path}}.json`,
      ),
      templateFile: getTemplatePath("./things/block.json"),
      data,
    },
    {
      type: "add",
      path: getSrcPath(
        `./assets/${packNamespace}/blockstates/{{snakeCase path}}.json`,
      ),
      templateFile: getTemplatePath("./assets/blockstate.block.json"),
      data,
    },
    {
      type: "add",
      path: getSrcPath(
        `./assets/${packNamespace}/models/block/{{snakeCase path}}.json`,
      ),
      templateFile: getTemplatePath("./assets/model.block.json"),
      data,
    },
    {
      type: "add",
      path: getSrcPath(
        `./assets/${packNamespace}/models/item/{{snakeCase path}}.json`,
      ),
      templateFile: getTemplatePath("./assets/item-model.block.json"),
      data,
    },
    {
      type: "add",
      path: getSrcPath(
        `./data/${packNamespace}/loot_tables/blocks/{{snakeCase path}}.json`,
      ),
      templateFile: getTemplatePath("./data/loot_tables/block.json"),
      data,
    },
  ];
};

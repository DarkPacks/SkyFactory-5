import {
  getSrcPath,
  getTemplatePath,
  packNamespace,
} from "scripts/generator/minecraft-json-things/constants";
import { createUpsertLangAction } from "scripts/generator/minecraft-json-things/custom-actions/upsert-lang";
import { ActionGetter } from "scripts/generator/minecraft-json-things/models";

export const getActionsForFood: ActionGetter = (data) => {
  return [
    createUpsertLangAction("item"),
    {
      type: "add",
      path: getSrcPath(
        `./things/${packNamespace}/item/{{snakeCase path}}.json`,
      ),
      templateFile: getTemplatePath("./things/item.food.json"),
      data,
    },
    {
      type: "add",
      path: getSrcPath(
        `./things/${packNamespace}/food/{{snakeCase path}}.json`,
      ),
      templateFile: getTemplatePath("./things/food.food.json"),
      data,
    },
  ];
};

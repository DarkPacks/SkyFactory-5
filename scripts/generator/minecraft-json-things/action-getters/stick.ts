import { snakeCase } from "lodash";
import {
  getSrcPath,
  getTemplatePath,
  packNamespace,
} from "scripts/generator/minecraft-json-things/constants";
import { createUpsertLangAction } from "scripts/generator/minecraft-json-things/custom-actions/upsert-lang";
import { createUpsertTagAction } from "scripts/generator/minecraft-json-things/custom-actions/upsert-tag";
import { ActionGetter } from "scripts/generator/minecraft-json-things/models";

export const getActionsForStick: ActionGetter = (data) => {
  return [
    createUpsertLangAction(
      "item",
      (basePath) => `${snakeCase(basePath)}_stick`,
      (baseName) => `${baseName} Stick`,
    ),
    {
      type: "add",
      path: getSrcPath(
        `./things/${packNamespace}/item/{{snakeCase path}}_stick.json`,
      ),
      templateFile: getTemplatePath("./things/item.stick.json"),
      data,
    },
    createUpsertTagAction("item", "forge", "rods"),
  ];
};

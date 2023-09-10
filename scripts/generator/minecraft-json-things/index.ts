import type { Answers } from "inquirer";
import type { ActionType, DynamicActionsFunction } from "node-plop";
import { genEnsureConfirmedAction } from "scripts/generator/common";
import { RegisterGeneratorFn } from "scripts/generator/models";
import { getActionsForBlockAndItem } from "./action-getters/block-and-item";
import { getActionsForFood } from "./action-getters/food";
import { packNamespace, PromptName, Thing } from "./constants";
import { ActionData } from "./models";
import { formatResourceLocation } from "./utils/resource-location";

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

const getActionsForThing: DynamicActionsFunction = (answers) => {
  const actions: ActionType[] = [
    genEnsureConfirmedAction(PromptName.Confirmed),
  ];

  if (!answers) {
    return actions;
  }

  const actionData: ActionData = {
    resourceLocation: formatResourceLocation(
      answers[PromptName.Namespace],
      answers[PromptName.Path],
    ),
  };

  switch (answers?.thing as Thing) {
    case Thing.BlockAndItem:
      actions.push(...getActionsForBlockAndItem(actionData));
      break;
    case Thing.Food:
      actions.push(...getActionsForFood(actionData));
      break;

    default:
      break;
  }

  return actions;
};

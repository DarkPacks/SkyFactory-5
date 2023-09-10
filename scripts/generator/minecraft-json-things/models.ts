import type { ActionType } from "node-plop";

export type ActionData = {
  resourceLocation: string;
};

export type ActionGetter = (data: ActionData) => ActionType[];

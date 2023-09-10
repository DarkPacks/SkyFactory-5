import path from "path";

export const templatesRoot = path.resolve(__dirname, "./templates");
export const getTemplatePath = (relativePath: string) =>
  path.resolve(templatesRoot, relativePath);

export const packNamespace = "sf5_things";
export const jsonThingsPackRootDir = path.resolve(
  `./src/minecraft/thingpacks/${packNamespace}`,
);

export const getSrcPath = (relativePath: string) =>
  path.resolve(jsonThingsPackRootDir, relativePath);

export enum PromptName {
  Thing = "thing",
  Name = "name",
  Namespace = "namespace",
  Path = "path",
  Confirmed = "confirmed",
}

export enum Thing {
  BlockAndItem = "Block and Item",
  Food = "Food",
}

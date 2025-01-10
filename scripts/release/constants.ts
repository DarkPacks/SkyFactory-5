import path from "path";

export const releaseDirPath = path.join(process.cwd(), ".releases");
export const clientReleaseIgnorePath = path.join(
  process.cwd(),
  ".releaseignore-client",
);
export const serverReleaseIgnorePath = path.join(
  process.cwd(),
  ".releaseignore-server",
);
export const sharedReleaseIgnorePath = path.join(
  process.cwd(),
  ".releaseignore-shared",
);

const buildDirPath = path.join(process.cwd(), "src", "minecraft");
export const minecraftDirPath = path.join(process.cwd(), "minecraft");

export const directories = new Map([
  ["config", buildDirPath],
  ["defaultconfigs", buildDirPath],
  ["global_packs", buildDirPath],
  ["journeymap", buildDirPath],
  ["mods", minecraftDirPath],
  ["packmenu", buildDirPath],
  ["scripts", buildDirPath],
  ["thingpacks", buildDirPath],
]);

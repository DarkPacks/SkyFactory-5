import type { NodePlopAPI } from "@crutchcorn/plop";
import glob from "glob-promise";
import { GeneratorModule } from "./models";

export async function rootGenerator(plop: NodePlopAPI) {
  const files = await glob(__dirname + "/**/index.ts", {
    ignore: [__filename, __dirname + "/common/**/*"],
  });

  const modules: GeneratorModule[] = await Promise.all(
    files.map(
      (file) => import(file.replace(__dirname, ".").replace(".ts", "")),
    ),
  );

  modules.forEach((module) =>
    module.registerGenerator(plop, { rootGeneratorPath: __dirname }),
  );
}

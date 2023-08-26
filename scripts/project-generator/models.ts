import { NodePlopAPI } from "plop";

export type Metadata = {
  rootGeneratorPath: string;
};

export type RegisterGeneratorFn = (
  plop: NodePlopAPI,
  metadata: Metadata,
) => void;

export type GeneratorModule = {
  registerGenerator: RegisterGeneratorFn;
};

import path from "path";
import { RegisterGeneratorFn } from "scripts/project-generator/models";

export const registerGenerator: RegisterGeneratorFn = (plop, metadata) => {
  plop.setGenerator("Project Generator Generator", {
    description: "Create a new generator for the project",
    prompts: [
      {
        type: "input",
        name: "name",
        message: "What is the name for the generator?",
      },
      {
        type: "input",
        name: "description",
        message: "Describe this generator",
      },
    ],
    actions: [
      // Create Index file
      {
        type: "add",
        path: path.join(
          metadata.rootGeneratorPath,
          "{{dashCase name}}",
          "index.ts",
        ),
        templateFile: path.join(__dirname, "index.template.txt"),
      },
      // Create Template file
      {
        type: "add",
        path: path.join(
          metadata.rootGeneratorPath,
          "{{dashCase name}}",
          "template.txt",
        ),
      },
    ],
  });
};

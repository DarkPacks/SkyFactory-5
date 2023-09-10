import { CustomActionFunction } from "@crutchcorn/plop";

export const genEnsureConfirmedAction =
  (confirmationName: string): CustomActionFunction =>
  (answers) => {
    if (!answers[confirmationName]) {
      throw new Error("Confirmation Failed");
    }

    return "Confirmed";
  };

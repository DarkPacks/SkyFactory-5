#modloaded botania

import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import stdlib.List;

public class BotaniaManaInfusion {
  public static addRecipe(recipeName: string, input: IIngredient, output: IItemStack, mana: float): void {
    val recipe: IData = {
      input: input,
      output: output,
      mana: mana
    };

    <recipetype:botania:mana_infusion>.addJsonRecipe(recipeName, recipe);
  }
}

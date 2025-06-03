// Script for obtaining base items/resources from dyes

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import stdlib.List;

public class NoPrinterMaterialCraftingRecipe {

  private val recipeName as string;
  private val output as IItemStack;
  private val ingredients as IIngredient[];

  public this(recipeName: string, output: IItemStack, ingredients: IIngredient[]) {
    this.recipeName = recipeName;
    this.output = output;
    this.ingredients = ingredients;
  }



  public addRecipes(): void {
    craftingTable.addShapeless(
      this.recipeName,
      this.output,
      this.ingredients
    );


    BotaniaElvenTrade.addRecipe(
      "elven_trade_" + this.recipeName,
      this.ingredients,
      [this.output, this.output]
    );
  }
}

// Ruby Gem
new NoPrinterMaterialCraftingRecipe(
  "ruby_from_dye",
  <item:thermal:ruby>,
  [
    <tag:items:forge:dyes/red>,
    <tag:items:forge:dyes/red>,
    <tag:items:forge:dyes/red>,
    <tag:items:forge:dyes/red>,
    <tag:items:forge:dyes/red>,
    <tag:items:forge:dyes/red>
  ]
).addRecipes();

// Ruby Gem Block
new NoPrinterMaterialCraftingRecipe(
  "ruby_block_from_dye_blocks",
  <item:thermal:ruby_block>,
  [
    <item:sf5_things:block_of_red_dye>,
    <item:sf5_things:block_of_red_dye>,
    <item:sf5_things:block_of_red_dye>,
    <item:sf5_things:block_of_red_dye>,
    <item:sf5_things:block_of_red_dye>,
    <item:sf5_things:block_of_red_dye>
  ]
).addRecipes();

// Sapphire Gem
new NoPrinterMaterialCraftingRecipe(
  "sapphire_from_dye",
  <item:thermal:sapphire>,
  [
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>
  ]
).addRecipes();

// Sapphire Gem Bock
new NoPrinterMaterialCraftingRecipe(
  "sapphire_block_from_dye_blocks",
  <item:thermal:sapphire_block>,
  [
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>
  ]
).addRecipes();

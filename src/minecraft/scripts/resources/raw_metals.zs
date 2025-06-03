// Script for obtaining base items/resources from dyes

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import stdlib.List;

public class MaterialCraftingRecipe {
  private static val DEFAULT_WEIGHT = 100;

  private val recipeName as string;
  private val output as IItemStack;
  private val ingredients as IIngredient[];
  private val weight as int;

  public this(recipeName: string, output: IItemStack, ingredients: IIngredient[]) {
    this(recipeName, output, ingredients, DEFAULT_WEIGHT);
  }

  public this(recipeName: string, output: IItemStack, ingredients: IIngredient[], weight: int) {
    this.recipeName = recipeName;
    this.output = output;
    this.ingredients = ingredients;
    this.weight = weight;
  }

  public addRecipes(): void {
    craftingTable.addShapeless(
      this.recipeName,
      this.output,
      this.ingredients
    );

    ForbiddenSmoothiesPrinter.addRecipe(
      "printer_" + this.recipeName,
      this.output,
      this.ingredients,
      this.weight
    );

    BotaniaElvenTrade.addRecipe(
      "elven_trade_" + this.recipeName,
      this.ingredients,
      [this.output, this.output]
    );
  }
}

// Raw Copper
new MaterialCraftingRecipe(
  "raw_copper_from_dye",
  <item:minecraft:raw_copper>,
  [
    <tag:items:forge:dyes/green>,
    <tag:items:forge:dyes/orange>,
    <tag:items:forge:dyes/orange>,
    <tag:items:forge:dyes/orange>
  ]
).addRecipes();

// Block of Raw Copper
new MaterialCraftingRecipe(
  "raw_copper_block_from_dye_blocks",
  <item:minecraft:raw_copper_block>,
  [
    <item:sf5_things:block_of_green_dye>,
    <item:sf5_things:block_of_orange_dye>,
    <item:sf5_things:block_of_orange_dye>,
    <item:sf5_things:block_of_orange_dye>
  ]
).addRecipes();

// Raw Iron
new MaterialCraftingRecipe(
  "raw_iron_from_dye",
  <item:minecraft:raw_iron>,
  [
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>
  ]
).addRecipes();

// Block of Raw Iron
new MaterialCraftingRecipe(
  "raw_iron_block_from_dye_blocks",
  <item:minecraft:raw_iron_block>,
  [
    <item:sf5_things:block_of_light_gray_dye>,
    <item:sf5_things:block_of_light_gray_dye>,
    <item:sf5_things:block_of_light_gray_dye>,
    <item:sf5_things:block_of_light_gray_dye>
  ]
).addRecipes();

// Raw Gold
new MaterialCraftingRecipe(
  "raw_gold_from_dye",
  <item:minecraft:raw_gold>,
  [
    <tag:items:forge:dyes/yellow>,
    <tag:items:forge:dyes/yellow>,
    <tag:items:forge:dyes/yellow>,
    <tag:items:forge:dyes/yellow>
  ]
).addRecipes();

// Block of Raw Gold
new MaterialCraftingRecipe(
  "raw_gold_block_from_dye_blocks",
  <item:minecraft:raw_gold_block>,
  [
    <item:sf5_things:block_of_yellow_dye>,
    <item:sf5_things:block_of_yellow_dye>,
    <item:sf5_things:block_of_yellow_dye>,
    <item:sf5_things:block_of_yellow_dye>
  ]
).addRecipes();

// Raw Zinc
new MaterialCraftingRecipe(
  "raw_zinc_from_dye",
  <item:create:raw_zinc>,
  [
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>
  ]
).addRecipes();

// Block of Raw Zinc
new MaterialCraftingRecipe(
  "raw_zinc_block_from_dye_blocks",
  <item:create:raw_zinc_block>,
  [
    <item:sf5_things:block_of_lime_dye>,
    <item:sf5_things:block_of_light_gray_dye>,
    <item:sf5_things:block_of_light_gray_dye>,
    <item:sf5_things:block_of_light_gray_dye>
  ]
).addRecipes();

// Coal
new MaterialCraftingRecipe(
  "coal_from_dye",
  <item:minecraft:coal>,
  [
    <tag:items:forge:dyes/black>,
    <tag:items:forge:dyes/black>,
    <tag:items:forge:dyes/black>,
    <tag:items:forge:dyes/black>
  ]
).addRecipes();

// Block of Coal
new MaterialCraftingRecipe(
  "coal_block_from_dye_blocks",
  <item:minecraft:coal_block>,
  [
    <item:sf5_things:block_of_black_dye>,
    <item:sf5_things:block_of_black_dye>,
    <item:sf5_things:block_of_black_dye>,
    <item:sf5_things:block_of_black_dye>
  ]
).addRecipes();

// Redstone
new MaterialCraftingRecipe(
  "redstone_from_dye",
  <item:minecraft:redstone> * 2,
  [
    <tag:items:forge:dyes/red>,
    <tag:items:forge:dyes/red>,
    <tag:items:forge:dyes/red>
  ]
).addRecipes();

// Block of Redstone
new MaterialCraftingRecipe(
  "redstone_block_from_dye_blocks",
  <item:minecraft:redstone_block> * 2,
  [
    <item:sf5_things:block_of_red_dye>,
    <item:sf5_things:block_of_red_dye>,
    <item:sf5_things:block_of_red_dye>
  ]
).addRecipes();

// Lapis
new MaterialCraftingRecipe(
  "lapis_from_dye",
  <item:minecraft:lapis_lazuli> * 2,
  [
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>
  ]
).addRecipes();

// Block of Lapis
new MaterialCraftingRecipe(
  "lapis_block_from_dye_blocks",
  <item:minecraft:lapis_block> * 2,
  [
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>
  ]
).addRecipes();

// Diamond
new MaterialCraftingRecipe(
  "diamond_from_dye",
  <item:minecraft:diamond>,
  [
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/cyan>
  ]
).addRecipes();

// Block of Diamond
new MaterialCraftingRecipe(
  "diamond_block_from_dye_blocks",
  <item:minecraft:diamond_block>,
  [
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_cyan_dye>
  ]
).addRecipes();

// Emerald
new MaterialCraftingRecipe(
  "emerald_from_dye",
  <item:minecraft:emerald>,
  [
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/lime>,
    <tag:items:forge:dyes/green>
  ]
).addRecipes();

// Block of Emerald
new MaterialCraftingRecipe(
  "emerald_block_from_dye_blocks",
  <item:minecraft:emerald_block>,
  [
    <item:sf5_things:block_of_lime_dye>,
    <item:sf5_things:block_of_lime_dye>,
    <item:sf5_things:block_of_lime_dye>,
    <item:sf5_things:block_of_lime_dye>,
    <item:sf5_things:block_of_lime_dye>,
    <item:sf5_things:block_of_lime_dye>,
    <item:sf5_things:block_of_lime_dye>,
    <item:sf5_things:block_of_green_dye>
  ]
).addRecipes();

// Glowstone
new MaterialCraftingRecipe(
  "glowstone_from_dye",
  <item:minecraft:glowstone>,
  [
    <tag:items:forge:dyes/brown>,
    <tag:items:forge:dyes/brown>,
    <tag:items:forge:dyes/orange>,
    <tag:items:forge:dyes/orange>
  ]
).addRecipes();
new MaterialCraftingRecipe(
  "glowstone_from_dye_blocks",
  <item:minecraft:glowstone> * 9,
  [
    <item:sf5_things:block_of_brown_dye>,
    <item:sf5_things:block_of_brown_dye>,
    <item:sf5_things:block_of_orange_dye>,
    <item:sf5_things:block_of_orange_dye>
  ]
).addRecipes();

// Amethyst
new MaterialCraftingRecipe(
  "amethyst_from_dye",
  <item:minecraft:amethyst_shard> * 2,
  [
    <tag:items:forge:dyes/purple>,
    <tag:items:forge:dyes/magenta>,
    <tag:items:forge:dyes/magenta>
  ]
).addRecipes();
new MaterialCraftingRecipe(
  "amethyst_from_dye_blocks",
  <item:minecraft:amethyst_shard> * 18,
  [
    <item:sf5_things:block_of_purple_dye>,
    <item:sf5_things:block_of_magenta_dye>,
    <item:sf5_things:block_of_magenta_dye>
  ]
).addRecipes();

// Quartz
new MaterialCraftingRecipe(
  "quartz_from_dye",
  <item:minecraft:quartz> * 2,
  [
    <tag:items:forge:dyes/white>,
    <tag:items:forge:dyes/white>,
    <tag:items:forge:dyes/light_gray>
  ]
).addRecipes();
new MaterialCraftingRecipe(
  "quartz_from_dye_blocks",
  <item:minecraft:quartz> * 18,
  [
    <item:sf5_things:block_of_white_dye>,
    <item:sf5_things:block_of_white_dye>,
    <item:sf5_things:block_of_light_gray_dye>
  ]
).addRecipes();

// Raw Aluminum
new MaterialCraftingRecipe(
  "raw_aluminum_from_dye",
  <item:immersiveengineering:raw_aluminum>,
  [
    <tag:items:forge:dyes/white>,
    <tag:items:forge:dyes/orange>,
    <tag:items:forge:dyes/orange>,
    <tag:items:forge:dyes/orange>
  ]
).addRecipes();

// Block of Raw Aluminum
new MaterialCraftingRecipe(
  "raw_aluminum_block_from_dye_blocks",
  <item:immersiveengineering:raw_block_aluminum>,
  [
    <item:sf5_things:block_of_white_dye>,
    <item:sf5_things:block_of_orange_dye>,
    <item:sf5_things:block_of_orange_dye>,
    <item:sf5_things:block_of_orange_dye>
  ]
).addRecipes();

// Raw Lead
new MaterialCraftingRecipe(
  "raw_lead_from_dye",
  <item:thermal:raw_lead>,
  [
    <tag:items:forge:dyes/purple>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>
  ]
).addRecipes();

// Block of Raw Lead
new MaterialCraftingRecipe(
  "raw_lead_block_from_dye_blocks",
  <item:thermal:raw_lead_block>,
  [
    <item:sf5_things:block_of_purple_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>
  ]
).addRecipes();

// Raw Silver
new MaterialCraftingRecipe(
  "raw_silver_from_dye",
  <item:thermal:raw_silver>,
  [
    <tag:items:forge:dyes/white>,
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>,
    <tag:items:forge:dyes/light_gray>
  ]
).addRecipes();

// Block of Raw Silver
new MaterialCraftingRecipe(
  "raw_silver_block_from_dye_blocks",
  <item:thermal:raw_silver_block>,
  [
    <item:sf5_things:block_of_white_dye>,
    <item:sf5_things:block_of_light_gray_dye>,
    <item:sf5_things:block_of_light_gray_dye>,
    <item:sf5_things:block_of_light_gray_dye>
  ]
).addRecipes();

// Raw Nickel
new MaterialCraftingRecipe(
  "raw_nickel_from_dye",
  <item:thermal:raw_nickel>,
  [
    <tag:items:forge:dyes/yellow>,
    <tag:items:forge:dyes/white>,
    <tag:items:forge:dyes/white>,
    <tag:items:forge:dyes/white>
  ]
).addRecipes();

// Block of Raw Nickel
new MaterialCraftingRecipe(
  "raw_nickel_block_from_dye_blocks",
  <item:thermal:raw_nickel_block>,
  [
    <item:sf5_things:block_of_yellow_dye>,
    <item:sf5_things:block_of_white_dye>,
    <item:sf5_things:block_of_white_dye>,
    <item:sf5_things:block_of_white_dye>
  ]
).addRecipes();

// Raw Uranium
new MaterialCraftingRecipe(
  "raw_uranium_from_dye",
  <item:immersiveengineering:raw_uranium>,
  [
    <tag:items:forge:dyes/gray>,
    <tag:items:forge:dyes/green>,
    <tag:items:forge:dyes/green>,
    <tag:items:forge:dyes/green>
  ]
).addRecipes();

// Raw Uranium Block
new MaterialCraftingRecipe(
  "raw_uranium_block_from_dye_blocks",
  <item:immersiveengineering:raw_block_uranium>,
  [
    <item:sf5_things:block_of_gray_dye>,
    <item:sf5_things:block_of_green_dye>,
    <item:sf5_things:block_of_green_dye>,
    <item:sf5_things:block_of_green_dye>
  ]
).addRecipes();

// Raw Tin
new MaterialCraftingRecipe(
  "raw_tin_from_dye",
  <item:thermal:raw_tin>,
  [
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/blue>,
    <tag:items:forge:dyes/light_blue>,
    <tag:items:forge:dyes/light_blue>
  ]
).addRecipes();

// Block of Raw Tin
new MaterialCraftingRecipe(
  "raw_tin_block_from_dye_blocks",
  <item:thermal:raw_tin_block>,
  [
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_blue_dye>,
    <item:sf5_things:block_of_light_blue_dye>,
    <item:sf5_things:block_of_light_blue_dye>
  ]
).addRecipes();

// Ender Pearl
new MaterialCraftingRecipe(
  "ender_pearl_from_dye",
  <item:minecraft:ender_pearl>,
  [
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/cyan>,
    <tag:items:forge:dyes/green>
  ]
).addRecipes();
new MaterialCraftingRecipe(
  "ender_pearl_from_dye_block",
  <item:minecraft:ender_pearl> * 9,
  [
    <item:sf5_things:block_of_cyan_dye>,
    <item:sf5_things:block_of_cyan_dye>,
    <item:sf5_things:block_of_cyan_dye>,
    <item:sf5_things:block_of_cyan_dye>,
    <item:sf5_things:block_of_cyan_dye>,
    <item:sf5_things:block_of_cyan_dye>,
    <item:sf5_things:block_of_cyan_dye>,
    <item:sf5_things:block_of_green_dye>
  ]
).addRecipes();

// Certus Quartz Crystal
new MaterialCraftingRecipe(
  "certus_quartz_from_dye",
  <item:ae2:certus_quartz_crystal>,
  [
    <tag:items:forge:dyes/light_blue>,
    <tag:items:forge:dyes/light_blue>,
    <tag:items:forge:dyes/light_blue>,
    <tag:items:forge:dyes/light_blue>
  ]
).addRecipes();
new MaterialCraftingRecipe(
  "certus_quartz_from_dye_blocks",
  <item:ae2:certus_quartz_crystal> * 9,
  [
    <item:sf5_things:block_of_light_blue_dye>,
    <item:sf5_things:block_of_light_blue_dye>,
    <item:sf5_things:block_of_light_blue_dye>,
    <item:sf5_things:block_of_light_blue_dye>
  ]
).addRecipes();

// SkyStone Dust
new MaterialCraftingRecipe(
  "sky_stone_from_dye",
  <item:ae2:sky_dust> * 2,
  [
    <tag:items:forge:dyes/gray>,
    <tag:items:forge:dyes/gray>,
    <tag:items:forge:dyes/light_blue>
  ]
).addRecipes();
new MaterialCraftingRecipe(
  "sky_stone_from_dye_blocks",
  <item:ae2:sky_dust> * 18,
  [
    <item:sf5_things:block_of_gray_dye>,
    <item:sf5_things:block_of_gray_dye>,
    <item:sf5_things:block_of_light_blue_dye>
  ]
).addRecipes();

// Draconium Dust
new MaterialCraftingRecipe(
  "draconium_dust_from_dye",
  <item:draconicevolution:draconium_dust> * 1,
  [
    <tag:items:forge:dyes/purple>,
    <tag:items:forge:dyes/magenta>,
    <tag:items:forge:dyes/magenta>,
    <tag:items:forge:dyes/magenta>
  ]
).addRecipes();
new MaterialCraftingRecipe(
  "draconium_dust_from_dye_blocks",
  <item:draconicevolution:draconium_dust> * 9,
  [
    <item:sf5_things:block_of_purple_dye>,
    <item:sf5_things:block_of_magenta_dye>,
    <item:sf5_things:block_of_magenta_dye>,
    <item:sf5_things:block_of_magenta_dye>
  ]
).addRecipes();

// Force Gem
new MaterialCraftingRecipe(
  "force_gem_from_dye",
  <item:forcecraft:force_gem> * 1,
  [
    <tag:items:forge:dyes/white>,
    <tag:items:forge:dyes/yellow>,
    <tag:items:forge:dyes/yellow>,
    <tag:items:forge:dyes/yellow>
  ]
).addRecipes();
new MaterialCraftingRecipe(
  "force_gem_from_dye_blocks",
  <item:forcecraft:force_gem> * 9,
  [
    <item:sf5_things:block_of_white_dye>,
    <item:sf5_things:block_of_yellow_dye>,
    <item:sf5_things:block_of_yellow_dye>,
    <item:sf5_things:block_of_yellow_dye>
  ]
).addRecipes();

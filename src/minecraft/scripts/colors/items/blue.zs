import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.Blue];
val textColor = 0x0080FF;
val component = Component.translatable(color.getDisplayName()).withStyle(style => style.withColor(textColor));

val items as IItemStack[] = [
  <item:minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
  <item:minecraft:potion>.withTag({Potion: "minecraft:water"}),
  <item:minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
  <item:woodenbucket:wooden_bucket>.withTag({Damage: 0, Fluid: {FluidName: "minecraft:water", Amount: 1000}}),
];

<tag:items:skyfactory_5:colored_items/blue>.asIIngredient().addTooltip(component);
for item in items {
  item.addTooltip(component);
}

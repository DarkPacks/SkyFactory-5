import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.Yellow];
val textColor = 0xFFFFFF;
val component = Component.translatable(color.getDisplayName()).withStyle(style => style.withColor(textColor));

val items as IItemStack[] = [
];

<tag:items:skyfactory_5:colored_items/yellow>.asIIngredient().addTooltip(component);
for item in items {
  item.addTooltip(component);
}

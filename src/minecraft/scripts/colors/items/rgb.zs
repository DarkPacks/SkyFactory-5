import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.RGB];
val textColor = 0xFFAA00;
val component = Component.translatable(color.getDisplayName()).withStyle(style => style.withColor(textColor));

val items as IItemStack[] = [
];

<tag:items:skyfactory_5:colored_items/rgb>.asIIngredient().addTooltip(component);
for item in items {
  item.addTooltip(component);
}

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.text.Component;

val color = Globals.colors[ColorName.Black];
val textColor = 0xFFFFFF;
val component = Component.translatable(color.getDisplayName()).withStyle(style => style.withColor(textColor));

val items as IItemStack[] = [
  <item:obtrophies:trophy>.withTag({BlockEntityTag: {VariantID: 0, entity: "veincreeper:black"}}),
];

<tag:items:skyfactory_5:colored_items/black>.asIIngredient().addTooltip(component);
for item in items {
  item.addTooltip(component);
}

// Recipe to make a Colorless Paintbrush / Golden Watering Can
craftingTable.addShaped(
  "colorless_paintbrush",
  <item:exdeorum:golden_watering_can>.withTag({Fluid: {FluidName: "minecraft:water", Amount: 4000}}),
  [
    [<item:minecraft:air>, <item:colouredstuff:sapling_none>],
    [<item:minecraft:stick>, <item:minecraft:air>]
  ]
);

// Treasure Bag Template
craftingTable.addShaped(
  "treasure_bag_template",
  <item:sf5_things:treasure_bag_template>,
  [
    [<item:minecraft:string>, <item:silentgear:template_board>, <item:minecraft:string>],
    [<item:silentgear:template_board>, <item:sophisticatedstorage:chest>.withTag({mainColor: 9539985, accentColor: 6710886}), <item:silentgear:template_board>],
    [<item:silentgear:template_board>, <item:silentgear:template_board>, <item:silentgear:template_board>]
  ]
);


craftingTable.remove(<item:exdeorum:oak_crucible>);
craftingTable.remove(<item:exdeorum:spruce_crucible>);
craftingTable.remove(<item:exdeorum:birch_crucible>);
craftingTable.remove(<item:exdeorum:jungle_crucible>);
craftingTable.remove(<item:exdeorum:acacia_crucible>);
craftingTable.remove(<item:exdeorum:dark_oak_crucible>);
craftingTable.remove(<item:exdeorum:mangrove_crucible>);
craftingTable.remove(<item:exdeorum:cherry_crucible>);
craftingTable.remove(<item:exdeorum:bamboo_crucible>);
craftingTable.remove(<item:exdeorum:fir_crucible>);
craftingTable.remove(<item:exdeorum:redwood_crucible>);
craftingTable.remove(<item:exdeorum:mahogany_crucible>);
craftingTable.remove(<item:exdeorum:jacaranda_crucible>);
craftingTable.remove(<item:exdeorum:palm_crucible>);
craftingTable.remove(<item:exdeorum:willow_crucible>);
craftingTable.remove(<item:exdeorum:dead_crucible>);
craftingTable.remove(<item:exdeorum:magic_crucible>);
craftingTable.remove(<item:exdeorum:umbran_crucible>);

// Stick conversion recipe
craftingTable.addShaped(
  "stick_conversion",
  <item:minecraft:stick>,
  [
    [<tag:items:forge:rods>]
  ]
);

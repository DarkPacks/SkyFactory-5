import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import stdlib.List;
import crafttweaker.api.world.ServerLevel;
import crafttweaker.api.food.FoodProperties;
import crafttweaker.api.ingredient.type.IIngredientList;

public class OnEat {
    public static var EATS = new List<OnEat>();
    public var toEat as IIngredient;
    public var onEaten as function(player as Player) as void;

    public this(toEat as IIngredient, onEaten as function(player as Player) as void) {
        this.toEat = toEat;
        this.onEaten = onEaten;
    }

    public static register(toEat as IIngredient, itemToGive as IItemStack) as void {
        OnEat.EATS.add(new OnEat(toEat, player => player.give(itemToGive)));
    }

    public static register(toEat as IIngredient, onEaten as function(player as Player) as void) as void {
        OnEat.EATS.add(new OnEat(toEat, onEaten));
    }

    public apply(player as Player) as void {
        var on as function(player as Player) as void = this.onEaten;
        on(player);
    }

    public static listen() as void {
        events.register<crafttweaker.forge.api.event.entity.use.LivingEntityUseItemFinishEvent>(event => {
            val entity = event.entity;
            val level = entity.level;
            if level.isClientSide || !(entity is Player) {
                return;
            }
            val player = entity as Player;
            for eat in OnEat.EATS {
                if eat.toEat.matches(event.item) {
                    // A bug requires this
                    var onEat as function(player as Player) as void = eat.onEaten;
                    onEat(player);
                }
            }
        });
    }
}
public class Food {

    public val hunger as int : get;
    public val saturation as float : get;
    public val fastToEat as bool : get;
    public val alwaysEdible as bool : get;
    public val items = new List<IItemStack>();
    public val onEaten as function(player as Player) as void;

    public this(hunger as int, saturation as float, fastToEat as bool, alwaysEdible as bool, onEaten as function(player as Player) as void = (player) => {}) {
        this.hunger = hunger;
        this.saturation = saturation;
        this.fastToEat = fastToEat;
        this.alwaysEdible = alwaysEdible;
        this.onEaten = onEaten;
    }

    public apply(item as IItemStack) as Food {
        this.items.add(item);
        return this;
    }

    public register() as void {

        for item in items {
            item.food = FoodProperties.create(this.hunger, this.saturation).setCanAlwaysEat(this.alwaysEdible).setIsFastFood(this.fastToEat);
        }

        val ingredients as IIngredient[] = this.items as IItemStack[];
        OnEat.register(new IIngredientList(ingredients), onEaten);
    }

}

OnEat.listen();
OnEat.register(<item:minecraft:potion>.withTag({Potion: "minecraft:water"}), <item:minecraft:blue_dye>);
OnEat.register(<item:sf5_things:blue_apple>, <item:minecraft:blue_dye>);
OnEat.register(<item:minecraft:dirt>, <item:minecraft:brown_dye>);
OnEat.register(<item:sf5_things:green_apple>, <item:minecraft:green_dye>);
OnEat.register(<item:minecraft:carrot>, <item:minecraft:orange_dye>);
OnEat.register(<item:sf5_things:white_apple>, <item:minecraft:white_dye>);
OnEat.register(<item:exnihilosequentia:silkworm>, <item:minecraft:white_dye>);

OnEat.register(<item:minecraft:carrot>, (player) => {
    var effect = new crafttweaker.api.entity.effect.MobEffectInstance(<mobeffect:minecraft:night_vision>, 200, 2);
    player.addEffect(effect);
});

val COLOR_MAP = {
  <item:minecraft:white_dye>: "f9ffff",
  <item:minecraft:light_gray_dye>: "9c9d97",
  <item:minecraft:gray_dye>: "474f52",
  <item:minecraft:black_dye>: "1d1c21",
  <item:minecraft:yellow_dye>: "ffd83d",
  <item:minecraft:orange_dye>: "f9801d",
  <item:minecraft:red_dye>: "b02e26",
  <item:minecraft:brown_dye>: "825432",
  <item:minecraft:lime_dye>: "80c71f",
  <item:minecraft:green_dye>: "5d7c15",
  <item:minecraft:light_blue_dye>: "3ab3da",
  <item:minecraft:cyan_dye>: "169c9d",
  <item:minecraft:blue_dye>: "3c44a9",
  <item:minecraft:pink_dye>: "f38caa",
  <item:minecraft:magenta_dye>: "c64fbd",
  <item:minecraft:purple_dye>: "8932b7"
} as string[IItemStack];

for stack, color in COLOR_MAP {

    OnEat.register(stack, (player) => {
        val level = player.level;

        if level is ServerLevel {
            val sl = level as ServerLevel;
            sl.server.executeCommand("colorfulskies color " + player.name + " sun " + color, true);
            sl.server.executeCommand("colorfulskies color " + player.name + " moon " + color, true);
            sl.server.executeCommand("colorfulskies color " + player.name + " sunrise " + color, true);
            sl.server.executeCommand("colorfulskies color " + player.name + " sky " + color, true);
            sl.server.executeCommand("colorfulskies color " + player.name + " cloud " + color, true);
        }
});
}

// Screwing around with day/nighttime alterations after eating food
    OnEat.register(<item:minecraft:wither_rose>, (player) => {
        val level = player.level;

        if level is ServerLevel {
            val sl = level as ServerLevel;


            sl.server.executeCommand("time set night", player, true);
            }
});

    OnEat.register(<item:minecraft:sunflower>, (player) => {
        val level = player.level;

        if level is ServerLevel {
            val sl = level as ServerLevel;


            sl.server.executeCommand("time set day", player, true);
            }
});

// Eat RGB Dye or Feather to clear sky colors
    OnEat.register(<item:sf5_things:rgb_dye>, (player) => {
        val level = player.level;

        if level is ServerLevel {
            val sl = level as ServerLevel;

            sl.server.executeCommand("colorfulskies color " + player.name + " sun clear", player, true);
            sl.server.executeCommand("colorfulskies color " + player.name + " moon clear", player, true);
            sl.server.executeCommand("colorfulskies color " + player.name + " sunrise clear", player, true);
            sl.server.executeCommand("colorfulskies color " + player.name + " sky clear", player, true);
            sl.server.executeCommand("colorfulskies color " + player.name + " cloud clear", player, true);
            }
});

    OnEat.register(<item:minecraft:feather>, (player) => {
        val level = player.level;

        if level is ServerLevel {
            val sl = level as ServerLevel;

            sl.server.executeCommand("colorfulskies color " + player.name + " sun clear", player, true);
            sl.server.executeCommand("colorfulskies color " + player.name + " moon clear", player, true);
            sl.server.executeCommand("colorfulskies color " + player.name + " sunrise clear", player, true);
            sl.server.executeCommand("colorfulskies color " + player.name + " sky clear", player, true);
            sl.server.executeCommand("colorfulskies color " + player.name + " cloud clear", player, true);
            }
});

OnEat.register(<item:minecraft:potion>, (player) => {
    val level = player.level;
    val pos = player.blockPosition.below();
    if level.getBlockState(pos).block == <block:minecraft:snow_block> {
        level.setBlockAndUpdate(pos, <blockstate:yellow_snow:yellow_snow>);
    }
});

new Food(1, 0.25, false, true)
    .apply(<item:minecraft:white_dye>)
    .apply(<item:minecraft:orange_dye>)
    .apply(<item:minecraft:magenta_dye>)
    .apply(<item:minecraft:light_blue_dye>)
    .apply(<item:minecraft:yellow_dye>)
    .apply(<item:minecraft:lime_dye>)
    .apply(<item:minecraft:pink_dye>)
    .apply(<item:minecraft:gray_dye>)
    .apply(<item:minecraft:light_gray_dye>)
    .apply(<item:minecraft:cyan_dye>)
    .apply(<item:minecraft:purple_dye>)
    .apply(<item:minecraft:blue_dye>)
    .apply(<item:minecraft:brown_dye>)
    .apply(<item:minecraft:green_dye>)
    .apply(<item:minecraft:red_dye>)
    .apply(<item:minecraft:black_dye>)
    .apply(<item:minecraft:sunflower>)
    .apply(<item:minecraft:wither_rose>)
    .apply(<item:sf5_things:rgb_dye>)
    .apply(<item:minecraft:feather>)
    .register();
new Food(1, 1, false, true, player => player.sendMessage("ew"))
    .apply(<item:minecraft:dirt>)
    .register();
new Food(3, 2, false, false)
    .apply(<item:sf5_things:block_of_meat>)
    .register();
new Food(2, 1, false, false)
    .apply(<item:sf5_things:block_of_jerky>)
    .apply(<item:sf5_things:block_of_pumpkin_spice_latte>)
    .register();
new Food(5, 3, false, false)
    .apply(<item:sf5_things:block_of_blue_cheese>)
    .apply(<item:sf5_things:block_of_grape_hi_chew>)
    .register();
new Food(7, 4, false, false)
    .apply(<item:sf5_things:block_of_blooming_onion>)
    .apply(<item:sf5_things:block_of_black_olives>)
    .register();
new Food(1, 1, false, false, player => player.sendMessage("ew"))
    .apply(<item:yellow_snow:yellow_snow>)
    .apply(<item:sf5_things:block_of_kitty_litter>)
    .apply(<item:sf5_things:block_of_ketchup>)
    .apply(<item:sf5_things:block_of_pocket_lint>)
    .register();
new Food(1, 0.25, false, true, player => player.sendMessage("ew"))
    .apply(<item:exnihilosequentia:silkworm>)
    .register();
new Food(0, 0, false, false)
    .apply(<item:cyclic:chorus_flight>)
    .register();
new Food(0, 0, false, false)
    .apply(<item:cyclic:chorus_spectral>)
    .register();

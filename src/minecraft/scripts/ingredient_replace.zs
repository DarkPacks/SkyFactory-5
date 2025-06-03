import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.type.NotFilteringRule;
import crafttweaker.api.recipe.replacement.type.ManagerFilteringRule;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;

Replacer.create()
    .filter(ManagerFilteringRule.of([craftingTable]))
    .filter(ModsFilteringRule.of("thermal", "rftoolsbase", "rftoolsutility", "rftoolsdim", "industrialforegoing"))
    // .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:industrialforegoing:machine_frame_pity>, <item:thermal:machine_frame>)
    // .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:industrialforegoing:machine_frame_simple>, <item:thermal:machine_frame>)
    // .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:industrialforegoing:machine_frame_advanced>, <item:thermal:machine_frame>)
    // .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:industrialforegoing:machine_frame_supreme>, <item:thermal:machine_frame>)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:thermal:cured_rubber>, <item:industrialforegoing:dryrubber>)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:rftoolsbase:machine_frame>, <item:thermal:machine_frame>)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:rftoolsbase:machine_base>, <item:thermal:machine_frame>)
.execute();

import crafttweaker.api.loot.modifier.CommonLootModifiers;
import stdlib.List;
import mods.createtweaker.ProcessingOutput;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

function addSushiRecipe(name as string, input as IItemStack, output as IItemStack, range as int..int) as void {

    <recipetype:create:deploying>.registerRecipe(name, (rb) as void => {
    // What is being touched
    rb.require(input);
    // Holding
    rb.require(<item:sushigocrafting:cleaver_knife>.anyDamage());
    rb.toolNotConsumed();
    rb.output(output);
    }, (outputs) => {
        var newOutputs = new List<ProcessingOutput>();
        for recipeOutput in outputs {
            if output.matches(recipeOutput.stack) {
                newOutputs.add(new ProcessingOutput(recipeOutput.stack.withTag({Amount: recipeOutput.random.nextInt(range.to - range.from) + range.from}), recipeOutput.chance));
            } else {
                newOutputs.add(recipeOutput);
            }
        }
        return newOutputs;
    });
}

addSushiRecipe("wasabi_create_deployer", <item:sushigocrafting:wasabi_root>, <item:sushigocrafting:wasabi_paste>, 5 .. 45);
addSushiRecipe("avacado_create_deployer", <item:sushigocrafting:avocado>, <item:sushigocrafting:avocado_slices>, 150 .. 450);
addSushiRecipe("cucumber_create_deployer", <item:sushigocrafting:cucumber>, <item:sushigocrafting:cucumber_slices>, 35 .. 200);
addSushiRecipe("cod_create_deployer", <item:minecraft:cod>, <item:sushigocrafting:imitation_crab>, 35 .. 200);
addSushiRecipe("salmon_create_deployer", <item:minecraft:salmon>, <item:sushigocrafting:salmon_fillet>, 350 .. 2000);
addSushiRecipe("tuna_create_deployer", <item:sushigocrafting:raw_tuna>, <item:sushigocrafting:tuna_fillet>, 1000 .. 3500);

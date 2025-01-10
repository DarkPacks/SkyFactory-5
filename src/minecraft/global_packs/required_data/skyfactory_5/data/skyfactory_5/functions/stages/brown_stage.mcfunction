gamestage add @s brown
#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud 825432
execute as @e[type=player,distance=..16] run colorfulskies color @s sun 825432
execute as @e[type=player,distance=..16] run colorfulskies color @s moon 825432
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise 825432
execute as @e[type=player,distance=..16] run colorfulskies color @s sky 825432


#execute as @e[type=player,distance=..16] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..16] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#634027"}
title @s subtitle [{"translate":"skyfactory_5.functions.unlock.tip","color":"#FFFFFF","with":[{"translate":"skyfactory_5.functions.unlock.tip.brown","color":"#634027"}]}]

execute as @e[type=player,distance=..16] run tag @s add brown_stage

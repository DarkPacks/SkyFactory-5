gamestage add @s black
#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud 1d1c21
execute as @e[type=player,distance=..16] run colorfulskies color @s sun 1d1c21
execute as @e[type=player,distance=..16] run colorfulskies color @s moon 1d1c21
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise 1d1c21
execute as @e[type=player,distance=..16] run colorfulskies color @s sky 1d1c21


#execute as @e[type=player,distance=..16] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..16] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#37353F"}
title @s subtitle [{"translate":"skyfactory_5.functions.unlock.tip","color":"#FFFFFF","with":[{"translate":"skyfactory_5.functions.unlock.tip.black","color":"#37353F"}]}]

execute as @e[type=player,distance=..16] run tag @s add black_stage

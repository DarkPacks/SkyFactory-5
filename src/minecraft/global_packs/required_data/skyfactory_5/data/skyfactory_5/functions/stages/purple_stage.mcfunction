gamestage add @s purple
#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud 8932b7
execute as @e[type=player,distance=..16] run colorfulskies color @s sun 8932b7
execute as @e[type=player,distance=..16] run colorfulskies color @s moon 8932b7
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise 8932b7
execute as @e[type=player,distance=..16] run colorfulskies color @s sky 8932b7

execute as @e[type=player,distance=..16] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#6E2994"}
title @s subtitle [{"translate":"skyfactory_5.functions.unlock.tip","color":"#FFFFFF","with":[{"translate":"skyfactory_5.functions.unlock.tip.purple","color":"#6E2994"}]}]

execute as @e[type=player,distance=..16] run tag @s add purple_stage

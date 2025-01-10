gamestage add @s lime
#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud 80c71f
execute as @e[type=player,distance=..16] run colorfulskies color @s sun 80c71f
execute as @e[type=player,distance=..16] run colorfulskies color @s moon 80c71f
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise 80c71f
execute as @e[type=player,distance=..16] run colorfulskies color @s sky 80c71f

execute as @e[type=player,distance=..16] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#69A119"}
title @s subtitle [{"translate":"skyfactory_5.functions.unlock.tip","color":"#FFFFFF","with":[{"translate":"skyfactory_5.functions.unlock.tip.lime","color":"#69A119"}]}]

execute as @e[type=player,distance=..16] run tag @s add lime_stage

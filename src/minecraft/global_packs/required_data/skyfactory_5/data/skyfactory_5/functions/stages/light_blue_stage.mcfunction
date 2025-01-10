gamestage add @s light_blue
#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud 3ab3da
execute as @e[type=player,distance=..16] run colorfulskies color @s sun 3ab3da
execute as @e[type=player,distance=..16] run colorfulskies color @s moon 3ab3da
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise 3ab3da
execute as @e[type=player,distance=..16] run colorfulskies color @s sky 3ab3da

execute as @e[type=player,distance=..16] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#3197B9"}
title @s subtitle [{"translate":"skyfactory_5.functions.unlock.tip","color":"#FFFFFF","with":[{"translate":"skyfactory_5.functions.unlock.tip.light_blue","color":"#3197B9"}]}]

execute as @e[type=player,distance=..16] run tag @s add light_blue_stage

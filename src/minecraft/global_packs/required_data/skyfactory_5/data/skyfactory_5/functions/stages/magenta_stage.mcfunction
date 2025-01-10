gamestage add @s magenta
#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud c64fbd
execute as @e[type=player,distance=..16] run colorfulskies color @s sun c64fbd
execute as @e[type=player,distance=..16] run colorfulskies color @s moon c64fbd
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise c64fbd
execute as @e[type=player,distance=..16] run colorfulskies color @s sky c64fbd

execute as @e[type=player,distance=..16] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#A5419D"}
title @s subtitle [{"translate":"skyfactory_5.functions.unlock.tip","color":"#FFFFFF","with":[{"translate":"skyfactory_5.functions.unlock.tip.magenta","color":"#A5419D"}]}]

execute as @e[type=player,distance=..16] run tag @s add magenta_stage

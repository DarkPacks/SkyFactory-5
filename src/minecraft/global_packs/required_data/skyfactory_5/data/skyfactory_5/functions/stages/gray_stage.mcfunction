gamestage add @s gray
#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud 474f52
execute as @e[type=player,distance=..16] run colorfulskies color @s sun 474f52
execute as @e[type=player,distance=..16] run colorfulskies color @s moon 474f52
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise 474f52
execute as @e[type=player,distance=..16] run colorfulskies color @s sky 474f52


execute as @e[type=player,distance=..16] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#6E7B80"}
title @s subtitle [{"translate":"skyfactory_5.functions.unlock.tip","color":"#FFFFFF","with":[{"translate":"skyfactory_5.functions.unlock.tip.gray","color":"#6E7B80"}]}]

execute as @e[type=player,distance=..16] run tag @s add gray_stage

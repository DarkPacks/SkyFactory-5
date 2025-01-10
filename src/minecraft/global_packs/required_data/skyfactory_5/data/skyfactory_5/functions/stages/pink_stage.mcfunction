gamestage add @s pink
#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud f38caa
execute as @e[type=player,distance=..16] run colorfulskies color @s sun f38caa
execute as @e[type=player,distance=..16] run colorfulskies color @s moon f38caa
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise f38caa
execute as @e[type=player,distance=..16] run colorfulskies color @s sky f38caa

execute as @e[type=player,distance=..16] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#C06F86"}
title @s subtitle [{"translate":"skyfactory_5.functions.unlock.tip","color":"#FFFFFF","with":[{"translate":"skyfactory_5.functions.unlock.tip.pink","color":"#C06F86"}]}]

execute as @e[type=player,distance=..16] run tag @s add pink_stage

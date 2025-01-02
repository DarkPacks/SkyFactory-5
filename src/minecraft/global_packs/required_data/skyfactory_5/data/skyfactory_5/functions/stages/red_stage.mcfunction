gamestage add @s red
#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud b02e26
execute as @e[type=player,distance=..16] run colorfulskies color @s sun b02e26
execute as @e[type=player,distance=..16] run colorfulskies color @s moon b02e26
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise b02e26
execute as @e[type=player,distance=..16] run colorfulskies color @s sky b02e26

#execute as @e[type=player,distance=..16] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..16] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#8A2520"}
title @s subtitle [{"text":"你的世界中恢复了 ","color":"#FFFFFF"},{"text":"红色","color":"#8A2520"}]

execute as @e[type=player,distance=..16] run tag @s add red_stage

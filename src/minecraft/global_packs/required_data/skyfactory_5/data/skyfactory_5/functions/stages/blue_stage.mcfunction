gamestage add @s blue
#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud 3c44a9
execute as @e[type=player,distance=..16] run colorfulskies color @s sun 3c44a9
execute as @e[type=player,distance=..16] run colorfulskies color @s moon 3c44a9
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise 3c44a9
execute as @e[type=player,distance=..16] run colorfulskies color @s sky 3c44a9

#execute as @e[type=player,distance=..16] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..16] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#343A92"}
title @s subtitle [{"text":"你的调色板中恢复了","color":"#FFFFFF"},{"text":"蓝色","color":"#343A92"}]

function skyfactory_5:rain

execute as @e[type=player,distance=..16] run tag @s add blue_stage

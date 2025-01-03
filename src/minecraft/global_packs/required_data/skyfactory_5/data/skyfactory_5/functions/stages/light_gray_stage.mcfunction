gamestage add @s light_gray
#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud 9c9d97
execute as @e[type=player,distance=..16] run colorfulskies color @s sun 9c9d97
execute as @e[type=player,distance=..16] run colorfulskies color @s moon 9c9d97
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise 9c9d97
execute as @e[type=player,distance=..16] run colorfulskies color @s sky 9c9d97

execute as @e[type=player,distance=..16] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#7A7A76"}
title @s subtitle [{"text":"你的调色板中恢复了","color":"#FFFFFF"},{"text":"淡灰色","color":"#7A7A76"}]

execute as @e[type=player,distance=..16] run tag @s add light_gray_stage

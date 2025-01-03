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
title @s subtitle [{"text":"你的调色板中恢复了","color":"#FFFFFF"},{"text":"紫色","color":"#6E2994"}]

execute as @e[type=player,distance=..16] run tag @s add purple_stage

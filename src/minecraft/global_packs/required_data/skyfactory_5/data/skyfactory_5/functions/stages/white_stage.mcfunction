gamestage add @s white
#Sets cloud, sun, and moon to green and disables sunrise colors
execute as @e[type=player,distance=..16] run colorfulskies disablesunrise @s true
execute as @e[type=player,distance=..16] run colorfulskies color @s cloud f9ffff
execute as @e[type=player,distance=..16] run colorfulskies color @s sun f9ffff
execute as @e[type=player,distance=..16] run colorfulskies color @s moon f9ffff
execute as @e[type=player,distance=..16] run colorfulskies color @s sunrise f9ffff
execute as @e[type=player,distance=..16] run colorfulskies color @s sky f9ffff

#execute as @e[type=player,distance=..16] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..16] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.35

title @s title {"text":"","color":"#f9ffff"}
title @s subtitle [{"text":"§lWhite§r","color":"#f9ffff"},{"text":" Has Been Added to Your Palette","color":"#FFFFFF"}]

gamestage add @s brown
colorfulskies disablesunrise @s true
#Sets cloud, sun, and moon to green
execute as @e[type=player,distance=..64] run colorfulskies color @s cloud 964B00
execute as @e[type=player,distance=..64] run colorfulskies color @s sun 964B00
execute as @e[type=player,distance=..64] run colorfulskies color @s moon 964B00

#execute as @e[type=player,distance=..64] run give @s sf5_things:green_apple
execute as @e[type=player,distance=..64] run playsound minecraft:music_disc.mall master @s ~ ~ ~ 1.0

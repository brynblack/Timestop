# Remove motion from all entities excluding players and disable gamerules
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 1 run data merge entity @s {NoAI:1b,NoGravity:1b,Motion:[0.0d,0.0d,0.0d],Fuse:10000s,TNTFuse:-1s,Silent:1b,Life:0s}
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 1 store result entity @s Rotation[0] float 0.01 run scoreboard players get @s x_rotation
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 1 store result entity @s Rotation[1] float 0.01 run scoreboard players get @s y_rotation
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 1 run gamerule doDaylightCycle false
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 1 run gamerule doFireTick false
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 1 run gamerule doWeatherCycle false

# Re-add nbt and daylight
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 run data merge entity @s {NoAI:0b,NoGravity:0b,Silent:0b}
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 run gamerule doDaylightCycle true
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 run gamerule doFireTick true
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 run gamerule doWeatherCycle true

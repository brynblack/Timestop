# Remove motion from all entities excluding players and disable gamerules
execute if entity @a[scores={freeze=1},sort=arbitrary] as @e[type=!player,sort=arbitrary] run data merge entity @s {Fuse:10000s,NoAI:1b,NoGravity:1b,Motion:[0.0d,0.0d,0.0d],Silent:1b}
execute if entity @a[scores={freeze=1},sort=arbitrary] run gamerule doDaylightCycle false
execute if entity @a[scores={freeze=1},sort=arbitrary] run gamerule doFireTick false
execute if entity @a[scores={freeze=1},sort=arbitrary] run gamerule doWeatherCycle false
execute as @a[scores={freeze=1},sort=arbitrary] unless score @s freeze matches 2 run scoreboard players set @s freeze 2
execute if entity @a[scores={freeze=2},sort=arbitrary] as @e[type=!player,sort=arbitrary] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s x_rotation
execute if entity @a[scores={freeze=2},sort=arbitrary] as @e[type=!player,sort=arbitrary] store result entity @s Rotation[1] float 0.01 run scoreboard players get @s y_rotation
execute if entity @a[scores={freeze=2},sort=arbitrary] as @e[type=firework_rocket,sort=arbitrary] run data merge entity @s {Life:0s}
execute if entity @a[scores={freeze=2},sort=arbitrary] as @e[type=firework_rocket,sort=arbitrary] store result entity @s Pos[0] double 0.01 run scoreboard players get @s x_pos
execute if entity @a[scores={freeze=2},sort=arbitrary] as @e[type=firework_rocket,sort=arbitrary] store result entity @s Pos[1] double 0.01 run scoreboard players get @s y_pos
execute if entity @a[scores={freeze=2},sort=arbitrary] as @e[type=tnt_minecart,sort=arbitrary] run data merge entity @s {TNTFuse:-1s}

# Spawn particles when time freezes
execute if entity @a[scores={freeze=2},sort=arbitrary] at @a[sort=arbitrary] run particle minecraft:portal ~ ~ ~ -16 -5 -32 1 100 force

# Re-add nbt and gamerules
execute if entity @a[scores={freeze=3},sort=arbitrary] as @e[type=!player,sort=arbitrary] run data merge entity @s {NoAI:0b,NoGravity:0b,Silent:0b}
execute if entity @a[scores={freeze=3},sort=arbitrary] run gamerule doDaylightCycle true
execute if entity @a[scores={freeze=3},sort=arbitrary] run gamerule doFireTick true
execute if entity @a[scores={freeze=3},sort=arbitrary] run gamerule doWeatherCycle true

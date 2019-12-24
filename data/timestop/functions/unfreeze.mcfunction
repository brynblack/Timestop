# Re-add nbt and gamerules
execute as @e[ tag = inworld, type = !player, sort = arbitrary ] run data merge entity @s { NoAI: 0b, NoGravity: 0b, Silent: 0b }
execute run gamerule doDaylightCycle true
execute run gamerule doFireTick true
execute run gamerule doWeatherCycle true

# Get scoreboard values for all entites excluding players and apply to all entites which were frozen
execute as @e[ tag = inworld, type = !player, sort = arbitrary ] store result entity @s Motion[0] double 0.01 run scoreboard players get @s x_motion
execute as @e[ tag = inworld, type = !player, sort = arbitrary ] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s x_rotation
execute as @e[ tag = inworld, type = !player, sort = arbitrary ] store result entity @s Motion[1] double 0.01 run scoreboard players get @s y_motion
execute as @e[ tag = inworld, type = !player, sort = arbitrary ] store result entity @s Rotation[1] float 0.01 run scoreboard players get @s y_rotation
execute as @e[ tag = inworld, type = !player, sort = arbitrary ] store result entity @s Motion[2] double 0.01 run scoreboard players get @s z_motion
execute as @e[ tag = inworld, type = firework_rocket, sort = arbitrary ] store result entity @s Life short 0.01 run scoreboard players get @s life
execute as @e[ tag = inworld, type = firework_rocket, sort = arbitrary ] store result entity @s Pos[0] double 0.01 run scoreboard players get @s x_pos
execute as @e[ tag = inworld, type = firework_rocket, sort = arbitrary ] store result entity @s Pos[1] double 0.01 run scoreboard players get @s y_pos
execute as @e[ tag = inworld, type = tnt, sort = arbitrary ] store result entity @s Fuse short 0.01 run scoreboard players get @s fuse
execute as @e[ tag = inworld, type = tnt_minecart, sort = arbitrary ] store result entity @s TNTFuse short 0.01 run scoreboard players get @s tntfuse
execute as @e[ sort = arbitrary ] unless score @s freeze matches 0 run scoreboard players set @s freeze 0

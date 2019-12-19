# Get scoreboard values for all entites excluding players and apply to all entites which were frozen
execute if entity @a[scores={freeze=3},sort=arbitrary] as @e[type=!player,sort=arbitrary] store result entity @s Motion[0] double 0.01 run scoreboard players get @s x_motion
execute if entity @a[scores={freeze=3},sort=arbitrary] as @e[type=!player,sort=arbitrary] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s x_rotation
execute if entity @a[scores={freeze=3},sort=arbitrary] as @e[type=!player,sort=arbitrary] store result entity @s Motion[1] double 0.01 run scoreboard players get @s y_motion
execute if entity @a[scores={freeze=3},sort=arbitrary] as @e[type=!player,sort=arbitrary] store result entity @s Rotation[1] float 0.01 run scoreboard players get @s y_rotation
execute if entity @a[scores={freeze=3},sort=arbitrary] as @e[type=!player,sort=arbitrary] store result entity @s Motion[2] double 0.01 run scoreboard players get @s z_motion
execute if entity @a[scores={freeze=3},sort=arbitrary] as @e[type=firework_rocket,sort=arbitrary] store result entity @s Life short 0.01 run scoreboard players get @s life
execute if entity @a[scores={freeze=3},sort=arbitrary] as @e[type=firework_rocket,sort=arbitrary] store result entity @s Pos[0] double 0.01 run scoreboard players get @s x_pos
execute if entity @a[scores={freeze=3},sort=arbitrary] as @e[type=firework_rocket,sort=arbitrary] store result entity @s Pos[1] double 0.01 run scoreboard players get @s y_pos
execute if entity @a[scores={freeze=3},sort=arbitrary] as @e[type=tnt,sort=arbitrary] store result entity @s Fuse short 0.01 run scoreboard players get @s fuse
execute if entity @a[scores={freeze=3},sort=arbitrary] as @e[type=tnt_minecart,sort=arbitrary] store result entity @s TNTFuse short 0.01 run scoreboard players get @s tntfuse
execute as @a[scores={freeze=3},sort=arbitrary] unless score @s freeze matches 0 run scoreboard players set @s freeze 0

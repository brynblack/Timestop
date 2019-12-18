# Get scoreboard values for all entites excluding players and apply to all entites which were frozen
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 store result entity @s Motion[0] double 0.01 run scoreboard players get @s x_motion
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 store result entity @s Motion[1] double 0.01 run scoreboard players get @s y_motion
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 store result entity @s Motion[2] double 0.01 run scoreboard players get @s z_motion
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 store result entity @s Rotation[0] float 0.01 run scoreboard players get @s x_rotation
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 store result entity @s Rotation[1] float 0.01 run scoreboard players get @s y_rotation
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 store result entity @s Fuse short 0.01 run scoreboard players get @s fuse
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 store result entity @s TNTFuse short 0.01 run scoreboard players get @s tntfuse
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 store result entity @s Life short 0.01 run scoreboard players get @s life
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 unless score @s freeze matches 0 run scoreboard players set @s freeze 0

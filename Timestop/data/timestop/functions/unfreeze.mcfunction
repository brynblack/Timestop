execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 store result entity @s Motion[0] double 0.01 run scoreboard players get @s x_motion
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 store result entity @s Motion[1] double 0.01 run scoreboard players get @s y_motion
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 store result entity @s Motion[2] double 0.01 run scoreboard players get @s z_motion
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 store result entity @s Rotation[0] float 0.01 run scoreboard players get @s x_rotation
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 store result entity @s Rotation[1] float 0.01 run scoreboard players get @s y_rotation
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 2 unless score @s freeze matches 0 run scoreboard players set @s freeze 0
# Assign motion XYZ and rotation XY to scoreboard objectives
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 0 store result score @s x_motion run data get entity @s Motion[0] 100
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 0 store result score @s y_motion run data get entity @s Motion[1] 100
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 0 store result score @s z_motion run data get entity @s Motion[2] 100
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 0 store result score @s x_rotation run data get entity @s Rotation[0] 100
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 0 store result score @s y_rotation run data get entity @s Rotation[1] 100
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 0 store result score @s fuse run data get entity @s Fuse 100
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 0 store result score @s tntfuse run data get entity @s TNTFuse 100
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 0 store result score @s life run data get entity @s Life 100
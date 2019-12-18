execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 0 store result score @s x_motion run data get entity @s Motion[0] 100
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 0 store result score @s y_motion run data get entity @s Motion[1] 100
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 0 store result score @s z_motion run data get entity @s Motion[2] 100
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 0 store result score @s x_rotation run data get entity @s Rotation[0] 100
execute as @e[type=!player,sort=arbitrary] if score @s freeze matches 0 store result score @s y_rotation run data get entity @s Rotation[1] 100
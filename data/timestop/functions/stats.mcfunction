# Assign motion XYZ and rotation XY to scoreboard objectives
execute as @e[ type = !player, sort = arbitrary ] store result score @s x_motion run data get entity @s Motion[0] 100
execute as @e[ type = !player, sort = arbitrary ] store result score @s x_rotation run data get entity @s Rotation[0] 100
execute as @e[ type = !player, sort = arbitrary ] store result score @s y_motion run data get entity @s Motion[1] 100
execute as @e[ type = !player, sort = arbitrary ] store result score @s y_rotation run data get entity @s Rotation[1] 100
execute as @e[ type = !player, sort = arbitrary ] store result score @s z_motion run data get entity @s Motion[2] 100
execute as @e[ type = firework_rocket, sort = arbitrary ] store result score @s life run data get entity @s Life 100
execute as @e[ type = firework_rocket, sort = arbitrary ] store result score @s x_pos run data get entity @s Pos[0] 100
execute as @e[ type = firework_rocket, sort = arbitrary ] store result score @s y_pos run data get entity @s Pos[1] 100
execute as @e[ type = tnt, sort = arbitrary ] store result score @s fuse run data get entity @s Fuse 100
execute as @e[ type = tnt_minecart, sort = arbitrary ] store result score @s tntfuse run data get entity @s TNTFuse 100
execute as @e[ type = !player, tag = !inworld, sort = arbitrary ] run tag @s add inworld

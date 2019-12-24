execute as @e[ tag = inworld, type = !player, sort = arbitrary ] run data merge entity @s { NoAI: 1b, NoGravity: 1b, Motion: [ 0.0d, 0.0d, 0.0d ], Silent: 1b }
execute as @e[ tag = inworld, type = !player, sort = arbitrary ] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s x_rotation
execute as @e[ tag = inworld, type = !player, sort = arbitrary ] store result entity @s Rotation[1] float 0.01 run scoreboard players get @s y_rotation
execute as @e[ tag = inworld, type = firework_rocket, sort = arbitrary ] run data merge entity @s { Life: 0s }
execute as @e[ tag = inworld, type = firework_rocket, sort = arbitrary ] store result entity @s Pos[0] double 0.01 run scoreboard players get @s x_pos
execute as @e[ tag = inworld, type = firework_rocket, sort = arbitrary ] store result entity @s Pos[1] double 0.01 run scoreboard players get @s y_pos
execute as @e[ tag = inworld, type = tnt, sort = arbitrary ] run data merge entity @s { Fuse: 10000s }
execute as @e[ tag = inworld, type = tnt_minecart, sort = arbitrary ] run data merge entity @s { TNTFuse: 10000s }

# Check if player in rideable entity 
execute as @a[ sort = arbitrary, nbt = { RootVehicle: { Entity: { id: "minecraft:boat" } } } ] at @s run tp @s ~ ~1 ~
execute as @a[ sort = arbitrary, nbt = { RootVehicle: { Entity: { id: "minecraft:donkey" } } } ] at @s run tp @s ~ ~1 ~
execute as @a[ sort = arbitrary, nbt = { RootVehicle: { Entity: { id: "minecraft:horse" } } } ] at @s run tp @s ~ ~1 ~
execute as @a[ sort = arbitrary, nbt = { RootVehicle: { Entity: { id: "minecraft:minecart" } } } ] at @s run tp @s ~ ~1 ~
execute as @a[ sort = arbitrary, nbt = { RootVehicle: { Entity: { id: "minecraft:mule" } } } ] at @s run tp @s ~ ~1 ~
execute as @a[ sort = arbitrary, nbt = { RootVehicle: { Entity: { id: "minecraft:pig" } } } ] at @s run tp @s ~ ~1 ~

# Spawn particles when time freezes
execute at @a[ sort = arbitrary ] run particle minecraft:portal ~ ~ ~ -16 -5 -32 1 100 force

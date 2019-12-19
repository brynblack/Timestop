# Give player items if player has none
execute as @a[sort=arbitrary] store success score @s hasitem run data get entity @s Inventory.[{tag:{display:{Name:"\"Freeze\""}}}]
execute as @a[scores={hasitem=0},sort=arbitrary] run clear @s minecraft:carrot_on_a_stick{display:{Name:"\"Freeze\""}}
execute as @a[scores={hasitem=0},sort=arbitrary] run give @s minecraft:carrot_on_a_stick{display:{Name:"\"Freeze\""}}
execute as @e[type=item,nbt={Item:{tag:{display:{Name:"\"Freeze\""}}}},sort=arbitrary] run kill @s

# Check if player in rideable entity 
execute as @a[scores={freeze=2},sort=arbitrary,nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] at @s run tp @s ~ ~1 ~
execute as @a[scores={freeze=2},sort=arbitrary,nbt={RootVehicle:{Entity:{id:"minecraft:donkey"}}}] at @s run tp @s ~ ~1 ~
execute as @a[scores={freeze=2},sort=arbitrary,nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] at @s run tp @s ~ ~1 ~
execute as @a[scores={freeze=2},sort=arbitrary,nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] at @s run tp @s ~ ~1 ~
execute as @a[scores={freeze=2},sort=arbitrary,nbt={RootVehicle:{Entity:{id:"minecraft:mule"}}}] at @s run tp @s ~ ~1 ~
execute as @a[scores={freeze=2},sort=arbitrary,nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] at @s run tp @s ~ ~1 ~
